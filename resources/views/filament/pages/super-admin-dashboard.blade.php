<x-filament-panels::page>
    <div class="space-y-6">
        <div class="bg-gradient-to-r from-purple-600 to-pink-600 rounded-lg p-8 text-white">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-3xl font-bold">Super Admin Control Center</h1>
                    <p class="text-purple-100 mt-2 text-lg">Complete system oversight and management</p>
                </div>
                <div class="text-right">
                    <div class="text-4xl font-bold">{{ \App\Models\User::count() }}</div>
                    <div class="text-purple-100">Total Users</div>
                    <div class="text-2xl font-bold mt-2">{{ \App\Models\Property::count() }}</div>
                    <div class="text-purple-100">Total Properties</div>
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <div class="lg:col-span-2">
                <x-filament-widgets::widgets
                    :columns="$this->getColumns()"
                    :widgets="$this->getWidgets()"
                />
            </div>

            <div class="space-y-6">
                <div class="bg-white dark:bg-gray-800 rounded-lg p-6 shadow">
                    <h3 class="text-lg font-semibold mb-4">System Actions</h3>
                    <div class="space-y-3">
                        <x-filament::button
                            color="primary"
                            icon="heroicon-m-cog-6-tooth"
                            href="{{ route('filament.admin.resources.roles.index') }}"
                            class="w-full justify-start"
                        >
                            Manage Roles & Permissions
                        </x-filament::button>

                        <x-filament::button
                            color="success"
                            icon="heroicon-m-users"
                            href="{{ route('filament.admin.resources.users.index') }}"
                            class="w-full justify-start"
                        >
                            User Management
                        </x-filament::button>

                        <x-filament::button
                            color="warning"
                            icon="heroicon-m-clipboard-document-list"
                            href="{{ route('filament.admin.resources.activity-logs.index') }}"
                            class="w-full justify-start"
                        >
                            Activity Logs
                        </x-filament::button>

                        <x-filament::button
                            color="info"
                            icon="heroicon-m-chart-bar"
                            href="{{ route('filament.admin.resources.property-views.index') }}"
                            class="w-full justify-start"
                        >
                            Analytics
                        </x-filament::button>
                    </div>
                </div>

                <div class="bg-white dark:bg-gray-800 rounded-lg p-6 shadow">
                    <h3 class="text-lg font-semibold mb-4">Quick Stats</h3>
                    <div class="space-y-3">
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Active Users:</span>
                            <span class="font-semibold">{{ \App\Models\User::where('is_active', true)->count() }}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Available Properties:</span>
                            <span class="font-semibold">{{ \App\Models\Property::where('status', 'available')->count() }}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Pending Inquiries:</span>
                            <span class="font-semibold">{{ \App\Models\Inquiry::where('status', 'new')->count() }}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Newsletter Subscribers:</span>
                            <span class="font-semibold">{{ \App\Models\NewsletterSubscription::where('is_active', true)->count() }}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-filament-panels::page>
