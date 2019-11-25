<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Projecto extends Model
{
    function desenvolvedores() {
      return $this->belongsToMany('App\Desenvolvedor', 'alocacoes')->withPivot('horas_semanais');
    }
}
