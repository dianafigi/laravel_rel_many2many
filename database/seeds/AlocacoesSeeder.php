<?php

use Illuminate\Database\Seeder;

class AlocacoesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      DB::table('alocacoes')->insert(['projecto_id' => 1, 'desenvolvedor_id' => 1, 'horas_semanais' => 11]);
      DB::table('alocacoes')->insert(['projecto_id' => 1, 'desenvolvedor_id' => 2, 'horas_semanais' => 13]);
      DB::table('alocacoes')->insert(['projecto_id' => 2, 'desenvolvedor_id' => 2, 'horas_semanais' => 14]);
      DB::table('alocacoes')->insert(['projecto_id' => 2, 'desenvolvedor_id' => 3, 'horas_semanais' => 15]);
      DB::table('alocacoes')->insert(['projecto_id' => 3, 'desenvolvedor_id' => 1, 'horas_semanais' => 16]);
      DB::table('alocacoes')->insert(['projecto_id' => 3, 'desenvolvedor_id' => 2, 'horas_semanais' => 17]);
      DB::table('alocacoes')->insert(['projecto_id' => 3, 'desenvolvedor_id' => 3, 'horas_semanais' => 5]);
    }
}
