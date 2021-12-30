<?php

use App\Stakeholder;
use Illuminate\Database\Seeder;

class StakeholderTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Stakeholder::truncate();

        $faker = \Faker\Factory::create();

        for ($i=0; $i < 20; $i++) {
            Stakeholder::create([
                'name' => $faker->firstName,
                'email' => $faker->email,
                'address' => $faker->address,
                'phone' => $faker->phoneNumber
            ]);
        }
    }
}
