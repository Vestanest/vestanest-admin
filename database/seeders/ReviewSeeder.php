<?php

namespace Database\Seeders;

use App\Models\Review;
use App\Models\Property;
use App\Models\User;
use Illuminate\Database\Seeder;

class ReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $properties = Property::all();
        $users = User::role('user')->get();

        $sampleReviews = [
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'rating' => 5,
                'title' => 'Excellent Property!',
                'comment' => 'This property exceeded all my expectations. The location is perfect, the amenities are top-notch, and the agent was very professional throughout the entire process. Highly recommended!',
                'is_verified' => true,
                'is_approved' => true,
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'rating' => 4,
                'title' => 'Great Value for Money',
                'comment' => 'Good property with nice features. The neighborhood is quiet and safe. The only minor issue was the parking space, but overall it\'s a great place to live.',
                'is_verified' => true,
                'is_approved' => true,
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'rating' => 3,
                'title' => 'Average Property',
                'comment' => 'The property is okay but could use some improvements. The maintenance response time could be better. Location is convenient though.',
                'is_verified' => false,
                'is_approved' => true,
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'rating' => 2,
                'title' => 'Needs Improvement',
                'comment' => 'The property has potential but needs significant upgrades. The kitchen appliances are outdated and the bathroom needs renovation.',
                'is_verified' => false,
                'is_approved' => false,
            ],
            [
                'property_id' => $properties->random()->id,
                'user_id' => $users->random()->id,
                'rating' => 5,
                'title' => 'Perfect for Families',
                'comment' => 'Amazing property with great family-friendly features. The kids love the playground and the community is very welcoming. The agent was fantastic!',
                'is_verified' => true,
                'is_approved' => true,
            ],
        ];

        foreach ($sampleReviews as $review) {
            Review::create($review);
        }

        // Create additional random reviews
        $reviewTitles = [
            'Great location!',
            'Beautiful property',
            'Excellent amenities',
            'Good value',
            'Highly recommended',
            'Perfect for families',
            'Modern and clean',
            'Great investment',
            'Lovely neighborhood',
            'Professional service',
            'Outstanding features',
            'Comfortable living',
            'Well maintained',
            'Convenient location',
            'Amazing views',
        ];

        $reviewComments = [
            'This property is absolutely fantastic! The location is perfect and the amenities are top-notch.',
            'Great value for money. The property is well-maintained and the neighborhood is quiet.',
            'Excellent property with modern features. The agent was very professional and helpful.',
            'Beautiful property in a great location. Highly recommended for anyone looking to buy or rent.',
            'The property exceeded my expectations. The quality is outstanding and the service was excellent.',
            'Perfect for families with children. The community is friendly and the facilities are great.',
            'Modern property with all the amenities you need. The location is convenient for work and shopping.',
            'Great investment opportunity. The property is well-built and the area is developing rapidly.',
            'Lovely property with beautiful views. The neighborhood is safe and the people are friendly.',
            'Professional service from start to finish. The property is exactly as described.',
            'Outstanding property with amazing features. The quality is exceptional and the location is perfect.',
            'Comfortable living space with all necessary amenities. The property is well-designed.',
            'Well-maintained property in excellent condition. The management is responsive and helpful.',
            'Convenient location with easy access to transportation and shopping centers.',
            'Amazing views from the property. The location is peaceful and the amenities are great.',
        ];

        // Create reviews ensuring no duplicate user-property combinations
        $usedCombinations = [];
        $maxReviews = min(30, $properties->count() * $users->count());

        for ($i = 1; $i <= $maxReviews; $i++) {
            $property = $properties->random();
            $user = $users->random();
            $combination = $user->id . '-' . $property->id;

            // Skip if this combination already exists
            if (in_array($combination, $usedCombinations)) {
                continue;
            }

            $usedCombinations[] = $combination;

            Review::create([
                'property_id' => $property->id,
                'user_id' => $user->id,
                'rating' => fake()->numberBetween(1, 5),
                'title' => fake()->randomElement($reviewTitles),
                'comment' => fake()->randomElement($reviewComments),
                'is_verified' => fake()->boolean(60), // 60% verified
                'is_approved' => fake()->boolean(80), // 80% approved
                'created_at' => fake()->dateTimeBetween('-90 days', 'now'),
                'updated_at' => fake()->dateTimeBetween('-90 days', 'now'),
            ]);
        }
    }
}
