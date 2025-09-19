<x-filament-panels::page>
    <div class="space-y-6">
        @if (auth()->user()->hasRole('super_admin'))
            <div class="bg-gradient-to-r from-purple-500 to-pink-500 rounded-lg p-6 text-white">
                <div class="flex items-center justify-between">
                    <div>
                        <h2 class="text-2xl font-bold">Super Admin Control Center</h2>
                        <p class="text-purple-100 mt-2">Complete system oversight and management</p>
                    </div>
                    <div class="text-right">
                        <div class="text-3xl font-bold">{{ \App\Models\User::count() }}</div>
                        <div class="text-purple-100">Total Users</div>
                    </div>
                </div>
            </div>
        @elseif (auth()->user()->hasRole('admin'))
            <div class="bg-gradient-to-r from-blue-500 to-cyan-500 rounded-lg p-6 text-white">
                <div class="flex items-center justify-between">
                    <div>
                        <h2 class="text-2xl font-bold">Admin Management Hub</h2>
                        <p class="text-blue-100 mt-2">Property and user management</p>
                    </div>
                    <div class="text-right">
                        <div class="text-3xl font-bold">{{ \App\Models\Property::count() }}</div>
                        <div class="text-blue-100">Total Properties</div>
                    </div>
                </div>
            </div>
        @elseif (auth()->user()->hasRole('agent'))
            <div class="bg-gradient-to-r from-green-500 to-emerald-500 rounded-lg p-6 text-white">
                <div class="flex items-center justify-between">
                    <div>
                        <h2 class="text-2xl font-bold">Agent Dashboard</h2>
                        <p class="text-green-100 mt-2">Manage your properties and clients</p>
                    </div>
                    <div class="text-right">
                        <div class="text-3xl font-bold">{{ \App\Models\Property::where('agent_id', auth()->id())->count() }}</div>
                        <div class="text-green-100">My Properties</div>
                    </div>
                </div>
            </div>
        @endif

        <x-filament-widgets::widgets
            :columns="$this->getColumns()"
            :widgets="$this->getWidgets()"
        />
    </div>
</x-filament-panels::page>
