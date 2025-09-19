<x-filament-panels::page>
    <div class="space-y-6">
        <div class="bg-gradient-to-r from-green-500 to-emerald-500 rounded-lg p-8 text-white">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-3xl font-bold">Agent Dashboard</h1>
                    <p class="text-green-100 mt-2 text-lg">Manage your properties and clients</p>
                </div>
                <div class="text-right">
                    <div class="text-4xl font-bold">{{ \App\Models\Property::where('agent_id', auth()->id())->count() }}</div>
                    <div class="text-green-100">My Properties</div>
                    <div class="text-2xl font-bold mt-2">{{ \App\Models\Inquiry::whereHas('property', function($query) { $query->where('agent_id', auth()->id()); })->where('status', 'new')->count() }}</div>
                    <div class="text-green-100">New Inquiries</div>
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
                    <h3 class="text-lg font-semibold mb-4">Quick Actions</h3>
                    <div class="space-y-3">
                        <x-filament::button
                            color="primary"
                            icon="heroicon-m-plus"
                            href="{{ route('filament.admin.resources.properties.create') }}"
                            class="w-full justify-start"
                        >
                            Add New Property
                        </x-filament::button>

                        <x-filament::button
                            color="success"
                            icon="heroicon-m-home"
                            href="{{ route('filament.admin.resources.properties.index', ['tableFilters' => ['agent_id' => ['value' => auth()->id()]]]) }}"
                            class="w-full justify-start"
                        >
                            My Properties
                        </x-filament::button>

                        <x-filament::button
                            color="warning"
                            icon="heroicon-m-envelope"
                            href="{{ route('filament.admin.resources.inquiries.index') }}"
                            class="w-full justify-start"
                        >
                            My Inquiries
                        </x-filament::button>

                        <x-filament::button
                            color="info"
                            icon="heroicon-m-calendar-days"
                            href="{{ route('filament.admin.resources.schedule-viewings.index') }}"
                            class="w-full justify-start"
                        >
                            Schedule Viewings
                        </x-filament::button>
                    </div>
                </div>

                <div class="bg-white dark:bg-gray-800 rounded-lg p-6 shadow">
                    <h3 class="text-lg font-semibold mb-4">My Performance</h3>
                    <div class="space-y-3">
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Properties Listed:</span>
                            <span class="font-semibold">{{ \App\Models\Property::where('agent_id', auth()->id())->count() }}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Total Inquiries:</span>
                            <span class="font-semibold">{{ \App\Models\Inquiry::whereHas('property', function($query) { $query->where('agent_id', auth()->id()); })->count() }}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Scheduled Viewings:</span>
                            <span class="font-semibold">{{ \App\Models\ScheduleViewing::whereHas('property', function($query) { $query->where('agent_id', auth()->id()); })->count() }}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-gray-600 dark:text-gray-400">Response Rate:</span>
                            <span class="font-semibold text-green-600">
                                @php
                                    $totalInquiries = \App\Models\Inquiry::whereHas('property', function($query) { $query->where('agent_id', auth()->id()); })->count();
                                    $respondedInquiries = \App\Models\Inquiry::whereHas('property', function($query) { $query->where('agent_id', auth()->id()); })->whereIn('status', ['contacted', 'scheduled', 'completed'])->count();
                                    $responseRate = $totalInquiries > 0 ? round(($respondedInquiries / $totalInquiries) * 100, 1) : 0;
                                @endphp
                                {{ $responseRate }}%
                            </span>
                        </div>
                    </div>
                </div>

                <div class="bg-white dark:bg-gray-800 rounded-lg p-6 shadow">
                    <h3 class="text-lg font-semibold mb-4">Upcoming Tasks</h3>
                    <div class="space-y-2">
                        @php
                            $upcomingViewings = \App\Models\ScheduleViewing::whereHas('property', function($query) { $query->where('agent_id', auth()->id()); })->where('preferred_date', '>=', today())->orderBy('preferred_date')->limit(3)->get();
                        @endphp

                        @forelse($upcomingViewings as $viewing)
                            <div class="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-700 rounded">
                                <div>
                                    <div class="font-medium text-sm">{{ $viewing->property->title }}</div>
                                    <div class="text-xs text-gray-500">{{ $viewing->full_name }}</div>
                                </div>
                                <div class="text-right">
                                    <div class="text-sm font-medium">{{ $viewing->preferred_date->format('M j') }}</div>
                                    <div class="text-xs text-gray-500">{{ $viewing->preferred_time }}</div>
                                </div>
                            </div>
                        @empty
                            <p class="text-gray-500 text-sm">No upcoming viewings scheduled</p>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-filament-panels::page>
