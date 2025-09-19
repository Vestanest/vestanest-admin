<x-filament-widgets::widget>
    <x-filament::section>
        <x-slot name="heading">
            Quick Actions
        </x-slot>

        <x-slot name="description">
            Common tasks and shortcuts
        </x-slot>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            @foreach ($this->getActions() as $action)
                <x-filament::button
                    :color="$action->getColor()"
                    :icon="$action->getIcon()"
                    :href="$action->getUrl()"
                    size="lg"
                    class="w-full justify-start"
                >
                    {{ $action->getLabel() }}
                </x-filament::button>
            @endforeach
        </div>
    </x-filament::section>
</x-filament-widgets::widget>
