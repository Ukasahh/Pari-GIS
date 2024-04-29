<?= $this->extend('templates/index'); ?>

<?= $this->section('head') ?>
<script src=" <?= base_url('leaflet/leaflet.js') ?>"> </script>
<link rel="stylesheet" href="<?= base_url('leaflet/leaflet.css') ?>" />
<style>
    #maps {
        height: 800px;
        width: 150%;
    }
</style>
<?= $this->endSection() ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800 text-center">SPOT WISATA PULAU PRAMUKA</h1>


    <div class="row">
        <div class="col-lg-8">
            <div id="maps"></div>
        </div>
    </div>
    <?= $this->Section('script') ?>
    <script>
        var map = L.map('maps').setView({
            lat: -5.745045251806205,
            lon: 106.61385372421687,
        }, 17)

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
        }).addTo(map);

        L.marker({
            lat: -5.747008662906957,
            lon: 106.61230633068655
        }).bindPopup('<h5>Mazu Dive Center</h5> </br>Scuba Diving Course and Fun Diving around Kepulauan Seribu. MAZU DIVE CENTER gives serve you the best for Discover The Underwater World.').addTo(map);

        L.marker({
            lat: -5.745174580392491,
            lon: 106.61516608447046
        }).bindPopup('<h5>Taman Nasional Kepulauan Seribu</h5> </br> Pulau Pramuka memiliki penangkaran penyu sisik sebagai daya tarik agar wisatawan datang berkunjung. Wisatawan yang berkunjung dapat melihat bahkan menyentuh penyu sisik saat berada di dalam penangkaran.').addTo(map);


        L.marker({
            lat: -5.743636789670826,
            lon: 106.61530959164638
        }).bindPopup('<h5>Rumah Literasi Hijau</h5> </br> Pulau Pramuka memiliki Rumah Literasi Hijau.').addTo(map);

        L.marker({
            lat: -5.746640818665916,
            lon: 106.61484711428055
        }).bindPopup('<h5>Hog Dive</h5> </br> Pulau Pramuka memiliki penangkaran penyu sisik sebagai daya tarik agar wisatawan datang berkunjung. Wisatawan yang berkunjung dapat melihat bahkan menyentuh penyu sisik saat berada di dalam penangkaran.').addTo(map);


        L.marker({
            lat: -5.7457625334181115,
            lon: 106.61502806965386
        }).bindPopup('<h5>Spot Penangkaran Penyu</h5> </br> Pulau Pramuka memiliki penangkaran penyu sisik sebagai daya tarik agar wisatawan datang berkunjung. Wisatawan yang berkunjung dapat melihat bahkan menyentuh penyu sisik saat berada di dalam penangkaran.').addTo(map);


        var polygon = L.polygon([
            [-5.746576240133363, 106.61513906204836],
            [-5.746787187858079, 106.6153194988392],
            [-5.7473033362048165, 106.6150398218122],
            [-5.747277866863697, 106.6147949884494]
        ]).bindPopup('<h5>Hog Dive</h5> </br> Homestay Dolphin merupakan penginapan asri yang berada di Pulau Pramuka. Akomodasi ini dilengkapi dengan beberapa fasilitas dan layanan yang pastinya menambah kenyamananmu saat menginap.').addTo(map);
    </script>
    <?= $this->endSection(); ?>

</div>
<?= $this->endSection(); ?>