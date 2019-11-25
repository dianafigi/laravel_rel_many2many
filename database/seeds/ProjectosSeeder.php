<?php

use Illuminate\Database\Seeder;

class ProjectosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      DB::table('projectos')->insert(['nome' => 'Sistema de Alocaçao de Recursos', 'estimativa_horas' => 200]);
      DB::table('projectos')->insert(['nome' => 'Sistema de Bibliotecas', 'estimativa_horas' => 1000]);
      DB::table('projectos')->insert(['nome' => 'Sistema de Vendas', 'estimativa_horas' => 2000]);
      DB::table('projectos')->insert(['nome' => 'Novo Sistema', 'estimativa_horas' => 5000]);
    }
}
