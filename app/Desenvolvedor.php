<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Desenvolvedor extends Model
{
  protected $table = 'desenvolvedores';

  public function projectos() {
    return $this->belongsToMany("App\Projecto", "alocacoes")->withPivot('horas_semanais'); //belongsToMany('nome do modelo q se vai retornar', 'nome da tabela q vai dizer o relacionamento entre os projetos e os desenvolvedores'). colocar o withPivot('horas_semanais') para que este campo tb apareça qd chamo os dados da tabela. Se nao colocar aqui o campo, ele n vai ser mostrado, apenas o projecto_id e o desenvolvedor_id pq é proprio do laravel mostrar esses q sao os de relaçao e chaves primarias. Se quisesse adicionar mais campos era ('horas_semanais', 'outro_campo', 'mais_outro_campo').
    //O 'pivot' pode ser visto no inspect
  }
}
