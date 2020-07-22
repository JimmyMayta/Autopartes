<?php namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\ModPrincipal;

class Personal extends BaseController {
  public function Inicio() {
    $model = new ModPrincipal();

    if ($this->request->getMethod() === 'post') {
      echo $this->request->getPost('Correo');
    }
  }
}
















