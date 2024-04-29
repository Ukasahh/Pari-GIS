<?php

namespace App\Models;

use CodeIgniter\Model;

class M_wisata extends Model
{
    public function get_all_data()
    {
        $db = \Config\Database::connect(); // Inisialisasi koneksi database
        return $db->table('tbl_wisata')->get()->getResultArray(); // Perhatikan perubahan di sini
    }

    public function insert_data($data)
    {
        return $this->db->table('tbl_wisata')->insert($data);
    }
}
