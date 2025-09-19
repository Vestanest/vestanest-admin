<?php

namespace Database\Seeders;

use App\Models\Property;
use App\Models\PropertyAmenity;
use App\Models\User;
use Illuminate\Database\Seeder;

class PropertySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $agents = User::role('agent')->get();
        $amenities = PropertyAmenity::all();

        $properties = [
            [
                'title' => 'Luxury Penthouse in Accra',
                'description' => 'Stunning penthouse with panoramic city views',
                'detailed_description' => 'This magnificent penthouse offers breathtaking panoramic views of Accra city. Features include floor-to-ceiling windows, premium finishes, and a private rooftop terrace. Perfect for those seeking luxury living in the heart of the city.',
                'location' => 'Airport Residential Area, Accra',
                'city' => 'Accra',
                'region' => 'Greater Accra',
                'latitude' => 5.6037,
                'longitude' => -0.1870,
                'price' => 2500000.00,
                'price_type' => 'sale',
                'property_type' => 'apartment',
                'bedrooms' => 4,
                'bathrooms' => 3,
                'area_sqm' => 250.00,
                'area_sqft' => 2690.00,
                'year_built' => 2020,
                'floors' => 1,
                'parking_spaces' => 2,
                'is_featured' => true,
                'status' => 'available',
                'views_count' => 150,
                'favorites_count' => 25,
                'rating' => 4.8,
                'owner_id' => $agents->random()->id,
                'agent_id' => $agents->random()->id,
                'image' => 'properties/luxury-penthouse-accra.jpg',
                'images' => json_encode([
                    'properties/luxury-penthouse-accra-1.jpg',
                    'properties/luxury-penthouse-accra-2.jpg',
                    'properties/luxury-penthouse-accra-3.jpg',
                    'properties/luxury-penthouse-accra-4.jpg'
                ]),
            ],
            [
                'title' => 'Modern Villa in East Legon',
                'description' => 'Contemporary villa with smart home features',
                'detailed_description' => 'This modern villa combines contemporary design with smart home technology. Features include automated lighting, security systems, and energy-efficient appliances. The open-plan living area flows seamlessly to the outdoor entertainment space.',
                'location' => 'East Legon, Accra',
                'city' => 'Accra',
                'region' => 'Greater Accra',
                'latitude' => 5.6500,
                'longitude' => -0.1500,
                'price' => 1800000.00,
                'price_type' => 'sale',
                'property_type' => 'villa',
                'bedrooms' => 5,
                'bathrooms' => 4,
                'area_sqm' => 400.00,
                'area_sqft' => 4305.00,
                'year_built' => 2019,
                'floors' => 2,
                'parking_spaces' => 3,
                'is_featured' => true,
                'status' => 'available',
                'views_count' => 200,
                'favorites_count' => 35,
                'rating' => 4.9,
                'owner_id' => $agents->random()->id,
                'agent_id' => $agents->random()->id,
                'image' => 'properties/modern-villa-east-legon.jpg',
                'images' => json_encode([
                    'properties/modern-villa-east-legon-1.jpg',
                    'properties/modern-villa-east-legon-2.jpg',
                    'properties/modern-villa-east-legon-3.jpg'
                ]),
            ],
            [
                'title' => 'Beachfront House in Tema',
                'description' => 'Oceanfront property with private beach access',
                'detailed_description' => 'Wake up to the sound of waves in this stunning beachfront property. Features include direct beach access, panoramic ocean views, and a spacious deck perfect for entertaining. The property includes a private dock for boats.',
                'location' => 'Tema New Town, Tema',
                'city' => 'Tema',
                'region' => 'Greater Accra',
                'latitude' => 5.6167,
                'longitude' => -0.0167,
                'price' => 3200000.00,
                'price_type' => 'sale',
                'property_type' => 'house',
                'bedrooms' => 6,
                'bathrooms' => 5,
                'area_sqm' => 500.00,
                'area_sqft' => 5382.00,
                'year_built' => 2021,
                'floors' => 2,
                'parking_spaces' => 4,
                'is_featured' => true,
                'status' => 'available',
                'views_count' => 300,
                'favorites_count' => 50,
                'rating' => 4.7,
                'owner_id' => $agents->random()->id,
                'agent_id' => $agents->random()->id,
                'image' => 'properties/beachfront-house-tema.jpg',
                'images' => json_encode([
                    'properties/beachfront-house-tema-1.jpg',
                    'properties/beachfront-house-tema-2.jpg',
                    'properties/beachfront-house-tema-3.jpg',
                    'properties/beachfront-house-tema-4.jpg',
                    'properties/beachfront-house-tema-5.jpg'
                ]),
            ],
            [
                'title' => 'Cozy Apartment in Osu',
                'description' => 'Furnished apartment in vibrant Osu district',
                'detailed_description' => 'Perfect for young professionals, this fully furnished apartment is located in the heart of Osu. Walking distance to restaurants, bars, and shopping centers. Features modern amenities and 24/7 security.',
                'location' => 'Osu, Accra',
                'city' => 'Accra',
                'region' => 'Greater Accra',
                'latitude' => 5.5500,
                'longitude' => -0.2000,
                'price' => 2500.00,
                'price_type' => 'rent',
                'property_type' => 'apartment',
                'bedrooms' => 2,
                'bathrooms' => 2,
                'area_sqm' => 85.00,
                'area_sqft' => 915.00,
                'year_built' => 2018,
                'floors' => 1,
                'parking_spaces' => 1,
                'is_featured' => false,
                'status' => 'available',
                'views_count' => 75,
                'favorites_count' => 12,
                'rating' => 4.3,
                'owner_id' => $agents->random()->id,
                'agent_id' => $agents->random()->id,
                'image' => 'properties/cozy-apartment-osu.jpg',
                'images' => json_encode([
                    'properties/cozy-apartment-osu-1.jpg',
                    'properties/cozy-apartment-osu-2.jpg'
                ]),
            ],
            [
                'title' => 'Commercial Office Space in Labadi',
                'description' => 'Modern office space with conference facilities',
                'detailed_description' => 'Ideal for businesses looking for premium office space. Features include modern conference rooms, high-speed internet, and 24/7 security. Located in the business district with easy access to major roads.',
                'location' => 'Labadi, Accra',
                'city' => 'Accra',
                'region' => 'Greater Accra',
                'latitude' => 5.5500,
                'longitude' => -0.1500,
                'price' => 15000.00,
                'price_type' => 'rent',
                'property_type' => 'office',
                'bedrooms' => 0,
                'bathrooms' => 3,
                'area_sqm' => 300.00,
                'area_sqft' => 3229.00,
                'year_built' => 2020,
                'floors' => 1,
                'parking_spaces' => 8,
                'is_featured' => false,
                'status' => 'available',
                'views_count' => 45,
                'favorites_count' => 8,
                'rating' => 4.5,
                'owner_id' => $agents->random()->id,
                'agent_id' => $agents->random()->id,
                'image' => 'properties/commercial-office-labadi.jpg',
                'images' => json_encode([
                    'properties/commercial-office-labadi-1.jpg',
                    'properties/commercial-office-labadi-2.jpg',
                    'properties/commercial-office-labadi-3.jpg'
                ]),
            ],
        ];

        foreach ($properties as $propertyData) {
            $property = Property::create($propertyData);

            // Attach random amenities to each property
            $randomAmenities = $amenities->random(rand(5, 15));
            $property->amenities()->attach($randomAmenities);
        }

        // Create additional random properties
        $this->createRandomProperties($agents, $amenities);
    }

    private function createRandomProperties($agents, $amenities): void
    {
        $propertyTypes = ['apartment', 'house', 'villa', 'townhouse', 'office', 'land', 'commercial'];
        $priceTypes = ['sale', 'rent'];
        $statuses = ['available', 'sold', 'rented', 'pending', 'off_market'];
        $cities = ['Accra', 'Kumasi', 'Tamale', 'Cape Coast', 'Takoradi'];
        $regions = ['Greater Accra', 'Ashanti', 'Northern', 'Central', 'Western'];

        for ($i = 1; $i <= 20; $i++) {
            $property = Property::create([
                'title' => fake()->sentence(4),
                'description' => fake()->paragraph(2),
                'detailed_description' => fake()->paragraphs(3, true),
                'location' => fake()->streetAddress(),
                'city' => fake()->randomElement($cities),
                'region' => fake()->randomElement($regions),
                'latitude' => fake()->latitude(4.0, 11.0),
                'longitude' => fake()->longitude(-3.0, 1.0),
                'price' => fake()->randomFloat(2, 500, 5000000),
                'price_type' => fake()->randomElement($priceTypes),
                'property_type' => fake()->randomElement($propertyTypes),
                'bedrooms' => fake()->numberBetween(0, 8),
                'bathrooms' => fake()->numberBetween(1, 6),
                'area_sqm' => fake()->randomFloat(2, 30, 1000),
                'area_sqft' => fake()->randomFloat(2, 300, 10000),
                'year_built' => fake()->numberBetween(1990, 2024),
                'floors' => fake()->numberBetween(1, 5),
                'parking_spaces' => fake()->numberBetween(0, 6),
                'is_featured' => fake()->boolean(20),
                'status' => fake()->randomElement($statuses),
                'views_count' => fake()->numberBetween(0, 500),
                'favorites_count' => fake()->numberBetween(0, 100),
                'rating' => fake()->randomFloat(1, 3.0, 5.0),
                'owner_id' => $agents->random()->id,
                'agent_id' => $agents->random()->id,
                'image' => 'properties/property-' . $i . '.jpg',
                'images' => json_encode([
                    'properties/property-' . $i . '-1.jpg',
                    'properties/property-' . $i . '-2.jpg',
                    'properties/property-' . $i . '-3.jpg'
                ]),
            ]);

            // Attach random amenities
            $randomAmenities = $amenities->random(rand(3, 10));
            $property->amenities()->attach($randomAmenities);
        }
    }
}
