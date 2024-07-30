<?= $this->extend('templates/index'); ?>

<?= $this->section('head') ?>
<script src="<?= base_url('leaflet/leaflet.js') ?>"></script>
<link rel="stylesheet" href="<?= base_url('leaflet/leaflet.css') ?>" />
<style>
    #maps {
        height: 800px;
        width: 100%;
    }
</style>
<?= $this->endSection() ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800 text-center">SPOT WISATA PULAU PARI</h1>

    <div class="row">
        <div class="col-lg-12">
            <div id="maps"></div>
        </div>
    </div>
</div>

<?= $this->Section('script') ?>
<script>
    var peta1 = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
    });

    var peta2 = L.tileLayer(
        'http://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
            attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community',
            maxZoom: 18,
        });

    var map = L.map('maps', {
        center: [-5.8578271, 106.6187615],
        zoom: 16,
        layers: [peta1]
    });

    var baseMaps = {
        "OpenStreet": peta1,
        "Satellite": peta2
    };

    L.control.layers(baseMaps).addTo(map);

    var iconWisata = L.icon({
        iconUrl: '<?= base_url('icon/wisata.png') ?>',
        iconSize: [38, 38], // size of the icon
        iconAnchor: [19, 38], // point of the icon which will correspond to marker's location (bottom center of icon)
        popupAnchor: [0, -38] // point from which the popup should open relative to the iconAnchor
    });

    <?php if (!empty($wisata)) : ?>
        <?php foreach ($wisata as $value) : ?>
            L.marker([<?= $value['lat'] ?>, <?= $value['long'] ?>], {
                    icon: iconWisata
                }).addTo(map)
                .bindPopup(`<div style='text-align: justify; font-size: 14px;'>
                <b><?= $value['nama_wisata'] ?><br/><br/></b>
                <img src='<?= base_url('foto/' . $value['foto']) ?>' width='300px' height='185px'><br/>
                <br/><br/>
                <table style='width:100%; border-collapse: collapse; text-align: left;'>
                    <tr style='border-bottom: 1px solid #ddd;'>
                        <th style='padding: 8px;'>Jam Operasional</th>
                        <th style='padding: 8px;'>Harga</th>
                        <th style='padding: 8px;'>Jenis Wisata</th>
                    </tr>
                    <tr style='border-bottom: 1px solid #ddd;'>
                        <td style='padding: 8px;'><?= $value['jam_operasi'] ?></td>
                        <td style='padding: 8px;'><?= $value['harga_tiket'] ?></td>
                        <td style='padding: 8px;'><?= $value['jenis_wisata'] ?></td>
                    </tr>
                </table>
                <br/>
                <?= $value['deskripsi'] ?>
            </div>`);
        <?php endforeach; ?>
    <?php else : ?>
        console.log("No data found for wisata.");
    <?php endif; ?>
</script>
<?= $this->endSection(); ?>

<?= $this->endSection(); ?>