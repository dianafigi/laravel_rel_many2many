<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(DesenvolvedoresSeeder::class);
        $this->call(ProjectosSeeder::class);
        $this->call(AlocacoesSeeder::class);
    }
}
