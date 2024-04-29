<?php

namespace App\Controllers;

use CodeIgniter\Controllers;
use App\Models\M_wisata;

class Map extends BaseController
{
    protected $db, $builder;
    protected $m_wisata;

    public function __construct()
    {
        helper('form');
        $this->db      = \Config\Database::connect();
        $this->m_wisata = new M_wisata(); // inisialisasi M_wisata
    }
    public function index()
    {
        $data['title'] = 'Map | Pulau Pramuka';
        return view('map/index', $data);
    }
    public function manage()
    {
        $data['title'] = 'Map Management';
        $data['wisata'] = $this->m_wisata->get_all_data();
        return view('map/management', $data);
    }
    public function add()
    {
        $data['title'] = 'Add Map';
        return view('map/add', $data);
    }
    public function show($imageName)
    {
        return $this->response->download(ROOTPATH . 'foto/' . $imageName, null);
    }
    public function save()
    {
        $valid = $this->validate([
            'nama_wisata' => [
                'label' => 'Nama Wisata',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi'
                ]
            ],
            'jam_operasi' => [
                'label' => 'Jam Operasi',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi'
                ]
            ],
            'harga_tiket' => [
                'label' => 'Harga Tiket Wisata',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi'
                ]
            ],
            'jenis_wisata' => [
                'label' => 'Jenis Wisata',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi'
                ]
            ],
            'lat' => [
                'label' => 'Lokasi Wisata',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi'
                ]
            ],
            'long' => [
                'label' => 'Lokasi Wisata',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib Diisi'
                ]
            ],
            'foto' => [
                'label' => 'Foto Wisata',
                'rules' => 'uploaded[foto]|mime_in[foto,image/jpg,image/jpeg,image/png]|max_size[foto,2000]',
                'errors' => [
                    'uploaded' => '{field} Wajib Diisi'
                ]
            ],
        ]);
        if (!$valid) {
            session()->setFlashData('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('map/add'));
        } else {
            $image = $this->request->getFile('foto');
            $name = $image->getRandomName();
            $data = [
                'nama_wisata' => $this->request->getPost('nama_wisata'),
                'jam_operasi' => $this->request->getPost('jam_operasi'),
                'harga_tiket' => $this->request->getPost('harga_tiket'),
                'jenis_wisata' => $this->request->getPost('jenis_wisata'),
                'lat' => $this->request->getPost('lat'),
                'long' => $this->request->getPost('long'),
                'deskripsi' => $this->request->getPost('deskripsi'),
                'foto' => $name,
            ];
            $image->move(ROOTPATH . 'foto', $name);
            $this->m_wisata->insert_data($data);
            session()->setFlashData('success', 'data wisata berhasil ditambahkan!!');
            return redirect()->to(base_url('map/manage'));
        }
    }
}
