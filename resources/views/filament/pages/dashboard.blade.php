<x-filament-panels::page>
    <div class="space-y-8">
        {{-- Creative Header Section --}}
        <div
            class="relative overflow-hidden rounded-2xl bg-white dark:bg-gray-900 shadow-lg ring-1 ring-gray-950/5 dark:ring-white/10">
            <div class="relative p-8 md:p-12">
                <div class="relative z-10">
                    <h1 class="text-3xl font-bold tracking-tight text-gray-950 dark:text-white md:text-4xl">
                        Welcome back, {{ auth()->user()->first_name }}! 👋
                    </h1>
                    <p class="mt-4 max-w-2xl text-lg text-gray-500 dark:text-gray-400">
                        @if (auth()->user()->hasRole('super_admin'))
                            You have full control over the system. Monitor performance, manage roles, and oversee all
                            activities.
                        @elseif (auth()->user()->hasRole('admin'))
                            Here's what's happening efficiently across your properties and user base today.
                        @else
                            Track your property performance and manage your inquiries efficiently.
                        @endif
                    </p>
                </div>

                {{-- Abstract Background Shapes --}}
                <div
                    class="absolute right-0 top-0 -mt-20 -mr-20 h-64 w-64 rounded-full bg-gradient-to-br from-primary-400/20 to-primary-600/20 blur-3xl">
                </div>
                <div
                    class="absolute bottom-0 right-20 -mb-20 h-48 w-48 rounded-full bg-gradient-to-tr from-secondary-400/20 to-secondary-600/20 blur-2xl">
                </div>
            </div>
        </div>

        {{-- Widget Section --}}
        <div>
            <x-filament-widgets::widgets :columns="$this->getColumns()" :widgets="$this->getWidgets()" />
        </div>
    </div>
</x-filament-panels::page>