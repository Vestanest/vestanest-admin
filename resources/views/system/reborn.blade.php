<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>System Reborn | VestaNest</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #9333ea;
            --bg: #0f172a;
            --text: #f8fafc;
            --accent: #22d3ee;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: var(--bg);
            color: var(--text);
            font-family: 'Outfit', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .container {
            text-align: center;
            max-width: 600px;
            padding: 2rem;
            position: relative;
            z-index: 10;
        }

        .logo {
            font-size: 3rem;
            font-weight: 600;
            margin-bottom: 2rem;
            background: linear-gradient(to right, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: pulse 2s infinite;
        }

        h1 { font-weight: 400; font-size: 1.5rem; margin-bottom: 1rem; }
        p { color: #94a3b8; line-height: 1.6; }

        .status-box {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 1rem;
            padding: 1.5rem;
            margin-top: 2rem;
            text-align: left;
            font-family: monospace;
            font-size: 0.8rem;
            max-height: 300px;
            overflow-y: auto;
            backdrop-filter: blur(10px);
        }

        .success-icon { color: #4ade80; font-size: 3rem; margin-bottom: 1rem; }
        .error-icon { color: #f87171; font-size: 3rem; margin-bottom: 1rem; }

        @keyframes pulse {
            0% { opacity: 0.8; transform: scale(1); }
            50% { opacity: 1; transform: scale(1.02); }
            100% { opacity: 0.8; transform: scale(1); }
        }

        /* Abstract background shapes */
        .shape {
            position: absolute;
            border-radius: 50%;
            background: linear-gradient(to right, var(--primary), var(--accent));
            filter: blur(80px);
            opacity: 0.2;
            z-index: 1;
        }
        .shape-1 { width: 300px; height: 300px; top: -100px; left: -100px; }
        .shape-2 { width: 400px; height: 400px; bottom: -150px; right: -150px; }
    </style>
</head>
<body>
    <div class="shape shape-1"></div>
    <div class="shape shape-2"></div>

    <div class="container">
        <div class="logo">VESTANEST</div>

        @if($success)
            <div class="success-icon">✨</div>
            <h1>System Reborn Successfully</h1>
            <p>{{ $message }}</p>
        @else
            <div class="error-icon">❌</div>
            <h1>Rebirth Interrupted</h1>
            <p>{{ $message }}</p>
            <p style="color: #f87171;">{{ $error }}</p>
        @endif

        @if(isset($output))
            <div class="status-box">
                <pre>{{ $output }}</pre>
            </div>
        @endif

        <div style="margin-top: 2rem;">
            <a href="/admin" style="color: var(--accent); text-decoration: none; border-bottom: 1px solid;">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
