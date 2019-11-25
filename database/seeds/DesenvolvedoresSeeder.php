<?php

use Illuminate\Database\Seeder;

class DesenvolvedoresSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('desenvolvedores')->insert(['nome' => 'Berardo', 'cargo' => 'Analista Pleno']);
        DB::table('desenvolvedores')->insert(['nome' => 'Gonçalo', 'cargo' => 'Analista Senior']);
        DB::table('desenvolvedores')->insert(['nome' => 'Diana', 'cargo' => 'Programador Jr']);
    }
}
