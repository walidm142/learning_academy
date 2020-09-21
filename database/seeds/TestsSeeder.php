<?php

use Illuminate\Database\Seeder;
use App\Test;
class TestsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Test::create([
            'name' => 'Hazem Mohamed',
            'spec' => 'doctor',
            'desc' => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
            'img' => '1.png'
        ]);

        Test::create([
            'name' => 'Walid Mahmoud',
            'spec' => 'Project Manger',
            'desc' => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
            'img' => '2.png'
        ]);

        Test::create([
            'name' => 'Omar Walid',
            'spec' => 'Doctor',
            'desc' => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
            'img' => '3.png'
        ]);
    }
}
