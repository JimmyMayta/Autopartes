<?php namespace App\Models;

use CodeIgniter\Model;

class UsuariosModel extends Model {
  protected $table = 'usuarios';
  protected $primaryKey = 'IDUsu';

  protected $returnType = 'array';
  protected $useSoftDeletes = false;

  protected $allowedFields = ['IDUsu', 'UsuUsuario', 'UsuContrasena', 'UsuIDEst',
                              'UsuIDPer', 'UsuFechaCreacion', 'UsuFechaActualizacion'];

  protected $useTimestamps = false;

  protected $validationRules = [];
  protected $validationMessages = [];
  protected $skipValidation = false;
}