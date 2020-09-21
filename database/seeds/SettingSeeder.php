<?php

use Illuminate\Database\Seeder;
use App\Setting;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::create([
            'name' => 'Learning Academy',
            'logo' => 'logo.png',
            'favicon' => "favicon.png",    
            'city' => "Cairo Egypt",    
            'address' => "50 Abbas Alakadd Naser City", 
            'phone' => "01010101010",   
            'work_hours' => "SUN to THURS 9 am to 5 pm",   
            'email' => "contact@learning_academy.com",   
            'map' => '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6912.788274430904!2d31.251641337303614!3d29.968100999825214!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x63c1510fe109ea88!2sCairo%20Industrial%20School%20Girls!5e0!3m2!1sen!2seg!4v1599396995124!5m2!1sen!2seg" width="1000" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>',   
            'fb' => "www.facebook.com",   
            'twitter' => "www.twitter.com",   
            'insta' => "www.instagram.com",   
        ]);
    }
}
