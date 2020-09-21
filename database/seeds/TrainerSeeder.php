<?php

use Illuminate\Database\Seeder;
use App\Trainer;
class TrainerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Trainer::create([
            'name' => 'Kareem Foaud',
            'spec' => 'web development',
            'img' => '1.jpg'
        ]);

        Trainer::create([
            'name' => 'Mostafa Mahfouz',
            'spec' => 'web development',
            'img' => '2.jpg'
        ]);
        Trainer::create([
            'name' => 'Ahmed Husien',
            'spec' => 'dentist',
            'img' => '3.jpg'
        ]);
        Trainer::create([
            'name' => 'Hazem Mohamed',
            'spec' => 'doctor',
            'img' => '4.jpg'
        ]);

        Trainer::create([
            'name' => 'Magdy Mohamoud',
            'spec' => 'english teacher',
            'img' => '5.jpg'
        ]);
    }
}
