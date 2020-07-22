<?php namespace App\Controllers;

use App\Models\UsuariosModel;

class Inicio extends BaseController {
  public function Inicio() {
    return view('Inicio');
  }

  public function Auto() {
    $Solicitud = \Config\Services::request();
    $Usuario = $Solicitud->getPostGet('Usuario');
    $Contrasena = $Solicitud->getPostGet('Contrasena');
    $Contrasena = MD5($Contrasena);

    $UsuMod = new UsuariosModel($db);
    $Res = $UsuMod->findAll();

    //var_dump($Res);

    foreach ($Res as $Dat) {
      if ($Usuario == $Dat['UsuUsuario'] && $Contrasena == $Dat['UsuContrasena']) {
        echo $Dat['IDUsu']."<br>";
        echo $Dat['UsuUsuario']."<br>";
        echo $Dat['UsuContrasena']."<br>";
      }
    }
    //return base_url('Principal');
  }
}



















