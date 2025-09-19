<?php

namespace Database\Seeders;

use App\Models\PropertyAmenity;
use Illuminate\Database\Seeder;

class PropertyAmenitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $amenities = [
            // Basic Amenities
            ['name' => 'Air Conditioning', 'description' => 'Central air conditioning system'],
            ['name' => 'Heating', 'description' => 'Central heating system'],
            ['name' => 'Parking', 'description' => 'Dedicated parking space'],
            ['name' => 'Balcony', 'description' => 'Private balcony with outdoor space'],
            ['name' => 'Garden', 'description' => 'Private garden area'],
            ['name' => 'Terrace', 'description' => 'Outdoor terrace space'],
            ['name' => 'Storage', 'description' => 'Additional storage space'],
            ['name' => 'Elevator', 'description' => 'Building elevator access'],
            ['name' => 'Pet Friendly', 'description' => 'Pet-friendly property'],
            ['name' => 'Furnished', 'description' => 'Fully furnished property'],

            // Luxury Amenities
            ['name' => 'Swimming Pool', 'description' => 'Private or shared swimming pool'],
            ['name' => 'Gym/Fitness Center', 'description' => 'On-site fitness facilities'],
            ['name' => 'Spa', 'description' => 'Spa and wellness facilities'],
            ['name' => 'Concierge', 'description' => '24/7 concierge service'],
            ['name' => 'Rooftop Access', 'description' => 'Access to rooftop area'],
            ['name' => 'Wine Cellar', 'description' => 'Private wine storage'],
            ['name' => 'Home Theater', 'description' => 'Private home theater room'],
            ['name' => 'Library', 'description' => 'Private library space'],
            ['name' => 'Wine Bar', 'description' => 'Private wine bar area'],
            ['name' => 'Butler Service', 'description' => 'Personal butler service'],

            // Security Amenities
            ['name' => 'Security System', 'description' => 'Advanced security system'],
            ['name' => 'CCTV', 'description' => '24/7 CCTV surveillance'],
            ['name' => 'Gated Community', 'description' => 'Gated community access'],
            ['name' => 'Security Guard', 'description' => '24/7 security personnel'],
            ['name' => 'Intercom', 'description' => 'Video intercom system'],
            ['name' => 'Safe', 'description' => 'Built-in safe for valuables'],
            ['name' => 'Alarm System', 'description' => 'Burglar alarm system'],
            ['name' => 'Secure Parking', 'description' => 'Secure underground parking'],

            // Outdoor Amenities
            ['name' => 'BBQ Area', 'description' => 'Outdoor BBQ and dining area'],
            ['name' => 'Playground', 'description' => 'Children\'s playground'],
            ['name' => 'Tennis Court', 'description' => 'Private tennis court'],
            ['name' => 'Basketball Court', 'description' => 'Basketball court access'],
            ['name' => 'Walking Trails', 'description' => 'Nature walking trails'],
            ['name' => 'Beach Access', 'description' => 'Direct beach access'],
            ['name' => 'Marina', 'description' => 'Private marina access'],
            ['name' => 'Golf Course', 'description' => 'Golf course access'],
            ['name' => 'Hiking Trails', 'description' => 'Mountain hiking trails'],
            ['name' => 'Boat Dock', 'description' => 'Private boat dock'],

            // Utilities & Technology
            ['name' => 'High-Speed Internet', 'description' => 'Fiber optic internet connection'],
            ['name' => 'Smart Home', 'description' => 'Smart home automation system'],
            ['name' => 'Solar Panels', 'description' => 'Solar power system'],
            ['name' => 'Generator', 'description' => 'Backup power generator'],
            ['name' => 'Water Heater', 'description' => 'Instant water heating system'],
            ['name' => 'Dishwasher', 'description' => 'Built-in dishwasher'],
            ['name' => 'Washing Machine', 'description' => 'In-unit washing machine'],
            ['name' => 'Dryer', 'description' => 'In-unit clothes dryer'],
            ['name' => 'Central Vacuum', 'description' => 'Central vacuum system'],
            ['name' => 'Fireplace', 'description' => 'Gas or wood fireplace'],

            // Kitchen Amenities
            ['name' => 'Modern Kitchen', 'description' => 'Fully equipped modern kitchen'],
            ['name' => 'Granite Countertops', 'description' => 'Granite kitchen countertops'],
            ['name' => 'Stainless Steel Appliances', 'description' => 'High-end stainless steel appliances'],
            ['name' => 'Island Kitchen', 'description' => 'Kitchen with center island'],
            ['name' => 'Walk-in Pantry', 'description' => 'Large walk-in pantry'],
            ['name' => 'Wine Fridge', 'description' => 'Built-in wine refrigerator'],
            ['name' => 'Coffee Machine', 'description' => 'Built-in coffee machine'],
            ['name' => 'Double Oven', 'description' => 'Double wall oven setup'],

            // Bathroom Amenities
            ['name' => 'Master Bathroom', 'description' => 'Luxurious master bathroom'],
            ['name' => 'Jacuzzi', 'description' => 'Built-in jacuzzi tub'],
            ['name' => 'Steam Shower', 'description' => 'Steam shower system'],
            ['name' => 'Double Vanity', 'description' => 'Double sink vanity'],
            ['name' => 'Heated Floors', 'description' => 'Heated bathroom floors'],
            ['name' => 'Bidet', 'description' => 'Bidet toilet system'],
            ['name' => 'Rain Shower', 'description' => 'Rainfall shower head'],
            ['name' => 'Marble Bathroom', 'description' => 'Marble bathroom finishes'],

            // Business Amenities
            ['name' => 'Home Office', 'description' => 'Dedicated home office space'],
            ['name' => 'Conference Room', 'description' => 'Private conference room'],
            ['name' => 'Business Center', 'description' => 'Shared business center'],
            ['name' => 'High-Speed WiFi', 'description' => 'Commercial-grade WiFi'],
            ['name' => 'Meeting Rooms', 'description' => 'Private meeting rooms'],
            ['name' => 'Coworking Space', 'description' => 'Shared coworking area'],
            ['name' => 'Printing Services', 'description' => 'On-site printing services'],
            ['name' => 'Mail Services', 'description' => 'Package and mail handling'],

            // Entertainment Amenities
            ['name' => 'Game Room', 'description' => 'Private game room'],
            ['name' => 'Pool Table', 'description' => 'Built-in pool table'],
            ['name' => 'Ping Pong Table', 'description' => 'Table tennis setup'],
            ['name' => 'Arcade Games', 'description' => 'Classic arcade games'],
            ['name' => 'Karaoke System', 'description' => 'Built-in karaoke system'],
            ['name' => 'Music Studio', 'description' => 'Private music recording studio'],
            ['name' => 'Art Studio', 'description' => 'Dedicated art workspace'],
            ['name' => 'Dance Studio', 'description' => 'Private dance practice space'],
        ];

        foreach ($amenities as $amenity) {
            PropertyAmenity::create($amenity);
        }
    }
}
