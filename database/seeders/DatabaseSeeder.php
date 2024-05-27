<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        DB::table('users')->insert([
            'username'=>'ahmed',
            'email'=>Str::random().'@gmail.com',
            'serial_number'=>Str::random(10),
            'password'=>Hash::make('password'),
            'phone'=>Str::random(10),
            'address'=>Str::random(10),
            'image'=>'default.png',
            'block'=>0,
            'type'=>'client',
        ]);
        // \App\Models\User::factory(10)->create();
    }
}
