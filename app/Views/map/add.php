<?= $this->extend('templates/index'); ?>

<?= $this->section('head') ?>
<script src=" <?= base_url('leaflet/leaflet.js') ?>"> </script>
<link rel="stylesheet" href="<?= base_url('leaflet/leaflet.css') ?>" />
<style>
    #maps {
        height: 700px;
        width: 670px;
        /* Fixed height */
        /* max-width: 1000px; */
        /* Allow map to scale within its container */
        margin: 0 auto;
        /* Center the map horizontally */
        position: relative;
        overflow: hidden;
        /* Hide overflow to prevent scrollbars */
    }
</style>
<?= $this->endSection() ?>

<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><i class="fas fa-map-marked-alt"></i> Add Map</h1>
    <hr>
    <div class="row">
        <div class="col-sm-7">
            <div class="card">
                <div class="card-header">
                    Peta Pulau Pari
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div id="maps"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-5">
            <div class="card">
                <div class="card-header">
                    Data Wisata
                </div>
                <div class="card-body">

                    <?php
                    $errors = session()->getFlashdata('errors');

                    if (!empty($errors)) :
                    ?>
                        !! Terdapat kesalahan pada input berikut:
                        <div class="alert alert-danger">
                            <ul>
                                <?php foreach ($errors as $error) : ?>
                                    <li><?= esc($error) ?></li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    <?php endif; ?>

                    <?php
                    echo form_open_multipart('map/add');
                    ?>

                    <div class="mb-3">
                        <label class="form-label">Nama Wisata</label>
                        <input class="form-control" id="nama_wisata" name="nama_wisata" placeholder="Nama Wisata">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Jam Operasi</label>
                        <input class="form-control" id="jam_operasi" name="jam_operasi" placeholder="Jam Operasi">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Harga</label>
                        <input class="form-control" id="harga_tiket" name="harga_tiket" placeholder="Harga">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Jenis Wisata</label>
                        <input class="form-control" id="jenis_wisata" name="jenis_wisata" placeholder="Jenis Wisata">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Latitude</label>
                        <input class="form-control" id="lat" name="lat" placeholder="Latitude">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Longitude</label>
                        <input class="form-control" id="long" name="long" placeholder="Longitude">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Deskripsi</label>
                        <textarea class="form-control" id="deskripsi" name="deskripsi" placeholder="Deskripsi"></textarea>
                    </div>

                    <div class="mb-3">
                        <label for="formFile" class="form-label">Foto Wisata</label>
                        <input class="form-control" type="file" name="foto" id="formFile">
                    </div>

                    <div class="mb-3">
                        <button type="submit" class="btn btn-info">Simpan</button>
                    </div>

                    <?php echo form_close() ?>
                </div>
            </div>
        </div>
    </div>
    <?= $this->Section('script') ?>
    <script>
        var curLocation = [0, 0];
        if (curLocation[0] == 0 && curLocation[1] == 0) {
            curLocation = [-5.859402114003351, 106.61564880031771];
        }

        var peta1 = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
        });

        var mapLink = '<a href="http://www.esri.com/">Esri</a>';
        var wholink = 'i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community';

        var peta2 = L.tileLayer(
            'http://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
                attribution: '&copy; ' + mapLink + ', ' + wholink,
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

        map.attributionControl.setPrefix(false);

        var iconMarker = L.icon({
            iconUrl: '<?= base_url('icon/marker.png') ?>',
            iconSize: [38, 38], // size of the icon
            iconAnchor: [19, 38], // point of the icon which will correspond to marker's location (bottom center of icon)
            popupAnchor: [0, -38] // point from which the popup should open relative to the iconAnchor
        });

        var marker = new L.marker(curLocation, {
            icon: iconMarker,
            draggable: 'true'
        });

        marker.on('dragend', function(event) {
            var position = marker.getLatLng();
            marker.setLatLng(position, {
                draggable: 'true'
            }).bindPopup(position).update();
            $('#lat').val(position.lat);
            $('#long').val(position.lng).keyup();
        });

        $("#lat, #long").change(function() {
            var position = [parseFloat($("#lat").val()), parseFloat($("#long").val())];
            marker.setLatLng(position, {
                draggable: 'true'
            }).bindPopup(position).update();
            map.panTo(position);
        });

        map.addLayer(marker);

        var iconWisata = L.icon({
            iconUrl: '<?= base_url('icon/wisata.png') ?>',
            iconSize: [38, 38], // size of the icon
            iconAnchor: [19, 38], // point of the icon which will correspond to marker's location (bottom center of icon)
            popupAnchor: [0, -38] // point from which the popup should open relative to the iconAnchor
        });

        <?php if (!empty($wisata)) : ?>
            <?php foreach ($wisata as $key => $value) : ?>
                L.marker([<?= $value['lat'] ?>, <?= $value['long'] ?>], {
                        icon: iconWisata
                    }).addTo(map)
                    .bindPopup("<div style='text-align: justify; font-size: 14px;'>" +
                        "<b><?= $value['nama_wisata'] ?><br/><br/></b>" +
                        "<img src='<?= base_url('foto/' . $value['foto']) ?>' width='300px' height='185px'<br/>" +
                        "<br/><br/>" +
                        "<table style='width:100%; border-collapse: collapse; text-align: left;'>" +
                        "<tr style='border-bottom: 1px solid #ddd;'>" +
                        "<th style='padding: 8px;'>Jam Operasional</th>" +
                        "<th style='padding: 8px;'>Harga</th>" +
                        "<th style='padding: 8px;'>Jenis Wisata</th>" +
                        "</tr>" +
                        "<tr style='border-bottom: 1px solid #ddd;'>" +
                        "<td style='padding: 8px;'><?= $value['jam_operasi'] ?></td>" +
                        "<td style='padding: 8px;'><?= $value['harga_tiket'] ?></td>" +
                        "<td style='padding: 8px;'><?= $value['jenis_wisata'] ?></td>" +
                        "</tr>" +
                        "</table>" +
                        "<br/>" +
                        "<?= $value['deskripsi'] ?>" +
                        "</div>");
            <?php endforeach; ?>
        <?php else : ?>
            console.log("No data found for wisata.");
        <?php endif; ?>
    </script>
    <?= $this->endSection(); ?>
</div>

<?= $this->endSection(); ?>