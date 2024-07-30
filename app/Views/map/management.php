<?= $this->extend('templates/index'); ?>


<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h2 mb-4 text-gray-800"><i class="fas fa-drafting-compass"></i> Map Management</h2>
    <hr>

    <a href="<?= base_url('map/add'); ?>" class="btn btn-info btn-icon-split">
        <span class="icon text-white-50">
            <i class="fa fa-map-marker" aria-hidden="true"></i>
        </span>
        <span class="text">Tambah Data Spot Objek Wisata</span>
    </a>

    <?php
    if (!empty(session()->getFlashdata('success'))) : ?>
        <div class="alert alert-success mt-3" style="width:300px">
            <?php echo session()->getFlashdata('success'); ?>
        </div>
    <?php endif; ?>

    <div class="row">
        <div class="col-lg-8">
            <hr>
            <h4 class="h4 mb-4 text-gray-800 mt-4 mb-2 text-item-center" style='text-align: center;'>Spot Objek Wisata Pulau Pari</h4>
            <hr>
            <table id="table2" class="display" style="width:100%">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Nama Wisata</th>
                        <th scope="col">Jenis Wisata</th>
                        <th scope="col">Jam Operasi</th>
                        <th scope="col">Harga</th>
                        <th scope="col">Deskripsi</th>
                        <th scope="col">Foto</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($wisata as $key => $value) : ?>
                        <tr>
                            <td scope="row"><?= $i++; ?></td>
                            <td scope="row"><?= $value['nama_wisata'] ?></td>
                            <td scope="row"><?= $value['jenis_wisata'] ?></td>
                            <td scope="row"><?= $value['jam_operasi'] ?></td>
                            <td scope="row"><?= $value['harga_tiket'] ?></td>
                            <td scope="row"><?= $value['deskripsi'] ?></td>
                            <td scope="row"><img src="<?= base_url('foto/' . $value['foto']); ?>" width="100px"></td>
                            <td>
                                <a href="<?= base_url('map/edit/' . $value['id']); ?>" class="btn btn-info btn-custom mb-1">Edit</a>
                                <a href="<?= base_url('map/delete/' . $value['id']); ?>" class="btn btn-danger btn-custom" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>

        </div>
    </div>

</div>
<?= $this->endSection(); ?>