<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Log;

class DatabaseRefreshController extends Controller
{
    /**
     * Reborn: Freshly migrate and seed the database.
     * This is Protected by a secret token.
     */
    public function reborn(Request $request)
    {
        $secretToken = env('DB_REBORN_TOKEN', 'vesta-reborn-magic');
        $providedToken = $request->query('token');

        if ($providedToken !== $secretToken) {
            Log::warning('Unauthorized database refresh attempt.', ['ip' => $request->ip()]);
            return response()->json(['error' => 'Magic word incorrect.'], 403);
        }

        try {
            Log::info('System rebirth initiated via web route.');
            
            // Run migrate:fresh --seed
            Artisan::call('migrate:fresh', [
                '--seed' => true,
                '--force' => true,
            ]);

            $output = Artisan::output();
            Log::info('System rebirth completed successfully.', ['output' => $output]);

            return view('system.reborn', [
                'success' => true,
                'output' => $output,
                'message' => 'The system has been reborn with fresh data and premium assets.'
            ]);
        } catch (\Exception $e) {
            Log::error('System rebirth failed.', ['error' => $e->getMessage()]);
            
            return view('system.reborn', [
                'success' => false,
                'error' => $e->getMessage(),
                'message' => 'The rebirth process encountered a mortal error.'
            ]);
        }
    }

    /**
     * Simple status check.
     */
    public function status()
    {
        return response()->json([
            'status' => 'online',
            'environment' => app()->environment(),
            'timestamp' => now()->toIso8601String(),
        ]);
    }
}
