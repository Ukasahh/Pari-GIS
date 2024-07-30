<?= $this->extend('templates/index'); ?>


<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><i class="fas fa-home"></i> Home</h1>


    <div class="row">
        <div class="col-lg-8">
            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-info">Hallo <?= strtoupper(user()->username); ?>, Selamat datang di Pari-GIS!</h6>
                </div>
                <div class="card-body">
                    <p>
                    <h4 class="mr-1" style="display: inline;">Pari-GIS</h4> merupakan aplikasi berbasis WebGIS yang menggambarkan
                    objek wisata di Pulau Pari. Aplikasi ini mengintegrasikan data spasial dan informasi detail tentang tempat-tempat
                    wisata, memberikan pengalaman interaktif untuk mengeksplorasi dan merencanakan kunjungan ke Pulau Pari.</p>
                    <a href="<?= base_url('map'); ?>" class="btn btn-info btn-icon-split">
                        <span class="icon text-white-50">
                            <i class="fas fa-atlas"></i>
                        </span>
                        <span class="text">Mulai rencanakan wisatamu!</span>
                    </a>
                </div>
            </div>
        </div>
    </div>


</div>
<?= $this->endSection(); ?>