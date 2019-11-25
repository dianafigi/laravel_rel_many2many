<?php

use App\Projecto;
use App\Desenvolvedor;
use App\Alocacao;

Route::get('/desenvolvedor_projecto', function () {
  $desenvolvedores = Desenvolvedor::with('projectos')->get();

  foreach ($desenvolvedores as $d) {
    echo "<p>Nome do Desenvolvedor: " . $d->nome . "</p>";
    echo "<p>Cargo do Desenvolvedor: " . $d->cargo . "</p>";
    if (count($d->projectos) > 0) {
      echo "Projectos: <br>";
      echo "<ul>";
      foreach ($d->projectos as $p) {
        echo "<li>";
        echo "Nome: " . $p->nome . " | ";
        echo "Horas do projecto(estimativa): " . $p->estimativa_horas . " | ";
        echo "Horas trabalhadas: " . $p->pivot->horas_semanais;
        echo "</li>";
      }
      echo "</ul>";
    }
    echo "<hr>";
  }
  // return $desenvolvedores->toJson();
});

Route::get('/projecto_desenvolvedores', function() {
  $projectos = Projecto::with('desenvolvedores')->get();

  foreach ($projectos as $p) {
    echo "<p>Nome do Projecto: " . $p->nome . "</p>";
    echo "<p>Estimativa de Horas: " . $p->estimativa_horas . "</p>";
    if (count($p->desenvolvedores) > 0) {
      echo "Desenvolvedores: <br>";
      echo "<ul>";
      foreach ($p->desenvolvedores as $d) {
        echo "<li>";
        echo "Nome: " . $d->nome . " | ";
        echo "Cargo: " . $d->cargo . " | ";
        echo "Horas trabalhadas: " . $d->pivot->horas_semanais;
        echo "</li>";
      }
      echo "</ul>";
    }
    echo "<hr>";
  }

  // return $projectos->toJson();
});

Route::get('/alocar', function() {
  $projecto = Projecto::find(4);

  if(isset($projecto)) {
    // $projecto->desenvolvedores()->attach(1, ['horas_semanais' => 50]);   Isto é para adicionar apenas 1. Em baixo é para adicionar varios ao mm tempo.
    $projecto->desenvolvedores()->attach([  //se utilizasse desenvolvedores assim como atributo em vez de funçao, ele iria retribuir um array de desenvolvedores. Utilizando como funçao desenvolvedores() ele retorna um objecto.
      2 => ['horas_semanais' => 20],
      3 => ['horas_semanais' => 30],
    ]);
  }
  // return $projectos->toJson();

  //Se eu quisesse alocar projectos a desenvolvedores (o contrario do q estamos aqui a fazer) era fzr o find do id do desenvolvedor e alocar o id do projecto.
});

Route::get('/desalocar', function() {
  $projecto = Projecto::find(4);

  if(isset($projecto)) {

     $projecto->desenvolvedores()->detach([1,2,3]);   // Esta é a forma mais simples para desalocar varios ao mesmo tempo, abaixo ta a forma mais extensa.

    // $projecto->desenvolvedores()->detach(1);
    // $projecto->desenvolvedores()->detach(2);
    // $projecto->desenvolvedores()->detach(3);
  }
});