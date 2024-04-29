<?= $this->extend('templates/index'); ?>


<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Map Management</h1>
    <button>
        <a href="<?= base_url('map/add'); ?>" class="btn btn-info">Add</a>
    </button>
    <?php
    if (!empty(session()->getFlashdata('success'))) : ?>
        <div class="alert alert-success">
            <?php echo session()->getFlashdata('success'); ?>
        </div>
    <?php endif; ?>
    <div class="row">
        <div class="col-lg-8">
            <table class="table">
                <caption>daftar wisata</caption>
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Nama Wisata</th>
                        <th scope="col">Jam Operasi</th>
                        <th scope="col">Harga Tiket</th>
                        <th scope="col">Jenis Wisata</th>
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
                            <td scope="row"><?= $value['jam_operasi'] ?></td>
                            <td scope="row"><?= $value['harga_tiket'] ?></td>
                            <td scope="row"><?= $value['jenis_wisata'] ?></td>
                            <td scope="row"><?= $value['deskripsi'] ?></td>
                            <td scope="row"><img src="<?= base_url('foto/' . $value['foto']); ?>" width="100px"></td>
                            <td>
                                <a href="<?= base_url(''); ?>" class="btn btn-info btn-custom">edit</a>
                                <a href="<?= base_url(''); ?>" class="btn btn-danger btn-custom">delete</a>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
            </table>

        </div>
    </div>

</div>
<?= $this->endSection(); ?>