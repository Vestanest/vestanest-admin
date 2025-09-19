<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create permissions for all Filament resources
        $permissions = [
            // Role Management
            'view_any_role',
            'view_role',
            'create_role',
            'update_role',
            'delete_role',
            'delete_any_role',
            'force_delete_role',
            'force_delete_any_role',
            'restore_role',
            'restore_any_role',

            // User Management
            'view_any_user',
            'view_user',
            'create_user',
            'update_user',
            'delete_user',
            'delete_any_user',
            'force_delete_user',
            'force_delete_any_user',
            'restore_user',
            'restore_any_user',

            // Activity Log
            'view_any_activity::log',
            'view_activity::log',

            // Properties
            'view_any_property',
            'view_property',
            'create_property',
            'update_property',
            'delete_property',
            'delete_any_property',
            'force_delete_property',
            'force_delete_any_property',
            'restore_property',
            'restore_any_property',

            // Property Amenities
            'view_any_property::amenity',
            'view_property::amenity',
            'create_property::amenity',
            'update_property::amenity',
            'delete_property::amenity',
            'delete_any_property::amenity',
            'force_delete_property::amenity',
            'force_delete_any_property::amenity',
            'restore_property::amenity',
            'restore_any_property::amenity',

            // Property Views
            'view_any_property::view',
            'view_property::view',

            // Property Comparisons
            'view_any_property::comparison',
            'view_property::comparison',

            // Communications
            'view_any_contact::message',
            'view_contact::message',
            'create_contact::message',
            'update_contact::message',
            'delete_contact::message',
            'delete_any_contact::message',
            'force_delete_contact::message',
            'force_delete_any_contact::message',
            'restore_contact::message',
            'restore_any_contact::message',

            'view_any_inquiry',
            'view_inquiry',
            'create_inquiry',
            'update_inquiry',
            'delete_inquiry',
            'delete_any_inquiry',
            'force_delete_inquiry',
            'force_delete_any_inquiry',
            'restore_inquiry',
            'restore_any_inquiry',

            'view_any_review',
            'view_review',
            'create_review',
            'update_review',
            'delete_review',
            'delete_any_review',
            'force_delete_review',
            'force_delete_any_review',
            'force_delete_any_review',
            'restore_review',
            'restore_any_review',

            'view_any_schedule::viewing',
            'view_schedule::viewing',

            'view_any_contact::agent',
            'view_contact::agent',

            // Marketing
            'view_any_newsletter::subscription',
            'view_newsletter::subscription',
            'create_newsletter::subscription',
            'update_newsletter::subscription',
            'delete_newsletter::subscription',
            'delete_any_newsletter::subscription',
            'force_delete_newsletter::subscription',
            'force_delete_any_newsletter::subscription',
            'restore_newsletter::subscription',
            'restore_any_newsletter::subscription',
        ];

        // Create permissions
        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission, 'guard_name' => 'web']);
        }

        // Create roles and assign permissions
        $this->createSuperAdminRole();
        $this->createAdminRole();
        $this->createAgentRole();
        $this->createUserRole();
    }

    private function createSuperAdminRole(): void
    {
        $role = Role::firstOrCreate(['name' => 'super_admin', 'guard_name' => 'web']);

        // Super admin gets all permissions
        $role->givePermissionTo(Permission::all());
    }

    private function createAdminRole(): void
    {
        $role = Role::firstOrCreate(['name' => 'admin', 'guard_name' => 'web']);

        // Admin gets most permissions except super admin specific ones
        $adminPermissions = [
            // Role Management - Limited access (cannot delete super_admin role)
            'view_any_role', 'view_role', 'create_role', 'update_role',
            'restore_role', 'restore_any_role',

            // User Management
            'view_any_user', 'view_user', 'create_user', 'update_user', 'delete_user',
            'delete_any_user', 'restore_user', 'restore_any_user',

            // Activity Log
            'view_any_activity::log', 'view_activity::log',

            // Properties - Full access
            'view_any_property', 'view_property', 'create_property', 'update_property',
            'delete_property', 'delete_any_property', 'restore_property', 'restore_any_property',

            // Property Amenities - Full access
            'view_any_property::amenity', 'view_property::amenity', 'create_property::amenity',
            'update_property::amenity', 'delete_property::amenity', 'delete_any_property::amenity',
            'restore_property::amenity', 'restore_any_property::amenity',

            // Property Views - Read only
            'view_any_property::view', 'view_property::view',

            // Property Comparisons - Read only
            'view_any_property::comparison', 'view_property::comparison',

            // Communications - Full access
            'view_any_contact::message', 'view_contact::message', 'create_contact::message',
            'update_contact::message', 'delete_contact::message', 'delete_any_contact::message',
            'restore_contact::message', 'restore_any_contact::message',

            'view_any_inquiry', 'view_inquiry', 'create_inquiry', 'update_inquiry',
            'delete_inquiry', 'delete_any_inquiry', 'restore_inquiry', 'restore_any_inquiry',

            'view_any_review', 'view_review', 'create_review', 'update_review',
            'delete_review', 'delete_any_review', 'restore_review', 'restore_any_review',

            'view_any_schedule::viewing', 'view_schedule::viewing',
            'view_any_contact::agent', 'view_contact::agent',

            // Marketing - Full access
            'view_any_newsletter::subscription', 'view_newsletter::subscription',
            'create_newsletter::subscription', 'update_newsletter::subscription',
            'delete_newsletter::subscription', 'delete_any_newsletter::subscription',
            'restore_newsletter::subscription', 'restore_any_newsletter::subscription',
        ];

        $role->givePermissionTo($adminPermissions);
    }

    private function createAgentRole(): void
    {
        $role = Role::firstOrCreate(['name' => 'agent', 'guard_name' => 'web']);

        // Agent gets limited permissions focused on property management
        $agentPermissions = [
            // Properties - Full access
            'view_any_property', 'view_property', 'create_property', 'update_property',
            'delete_property', 'restore_property',

            // Property Amenities - Read only
            'view_any_property::amenity', 'view_property::amenity',

            // Property Views - Read only
            'view_any_property::view', 'view_property::view',

            // Property Comparisons - Read only
            'view_any_property::comparison', 'view_property::comparison',

            // Communications - Limited access
            'view_any_inquiry', 'view_inquiry', 'update_inquiry',
            'view_any_review', 'view_review', 'update_review',
            'view_any_schedule::viewing', 'view_schedule::viewing',
            'view_any_contact::agent', 'view_contact::agent',

            // Marketing - Read only
            'view_any_newsletter::subscription', 'view_newsletter::subscription',
        ];

        $role->givePermissionTo($agentPermissions);
    }

    private function createUserRole(): void
    {
        $role = Role::firstOrCreate(['name' => 'user', 'guard_name' => 'web']);

        // Regular users get minimal permissions
        $userPermissions = [
            // Properties - Read only
            'view_any_property', 'view_property',

            // Property Amenities - Read only
            'view_any_property::amenity', 'view_property::amenity',

            // Property Views - Read only
            'view_any_property::view', 'view_property::view',

            // Property Comparisons - Read only
            'view_any_property::comparison', 'view_property::comparison',

            // Communications - Can create inquiries and reviews
            'view_any_inquiry', 'view_inquiry', 'create_inquiry',
            'view_any_review', 'view_review', 'create_review',
            'view_any_schedule::viewing', 'view_schedule::viewing',
            'view_any_contact::agent', 'view_contact::agent',

            // Marketing - Can subscribe to newsletter
            'view_any_newsletter::subscription', 'view_newsletter::subscription',
            'create_newsletter::subscription',
        ];

        $role->givePermissionTo($userPermissions);
    }
}
