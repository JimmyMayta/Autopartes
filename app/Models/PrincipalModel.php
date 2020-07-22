<?php namespace App\Models;

use CodeIgniter\Model;

class PrincipalModel extends Model {
  protected $table = 'personal';
  protected $primaryKey = 'IDPer';

  protected $returnType = 'array';
  protected $useSoftDeletes = false;

  protected $allowedFields = ['PerNombres', 'PerApellidos'];

  protected $useTimestamps = false;

  protected $validationRules = [];
  protected $validationMessages = [];
  protected $skipValidation = false;
}























