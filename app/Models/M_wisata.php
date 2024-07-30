<?php

namespace App\Models;

use CodeIgniter\Model;

class M_wisata extends Model
{
    public function get_all_data()
    {
        $db = \Config\Database::connect(); // Inisialisasi koneksi database
        return $db->table('tbl_wisata')->get()->getResultArray();
    }

    public function insert_data($data)
    {
        return $this->db->table('tbl_wisata')->insert($data);
    }

    public function detail($id)
    {
        return $this->db->table('tbl_wisata')->where('id', $id)->get()->getRowArray();
    }

    public function update_wisata($data, $id)
    {
        return $this->db->table('tbl_wisata')->update($data, array('id' => $id));
    }

    public function delete_wisata($id)
    {
        return $this->db->table('tbl_Wisata')->delete(array('id' => $id));
    }
}
