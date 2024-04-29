<?= $this->extend('templates/index'); ?>

<?= $this->section('head') ?>
<script src=" <?= base_url('leaflet/leaflet.js') ?>"> </script>
<link rel="stylesheet" href="<?= base_url('leaflet/leaflet.css') ?>" />
<style>
    #maps {
        height: 700px;
        width: 800px;
        position: relative;
    }
</style>
<?= $this->endSection() ?>


<?= $this->section('page-content'); ?>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Add Map</h1>
    <hr>
    <div class="row">
        <div class="col-sm-7">
            <div class="card">
                <div class="card-header">
                    Peta Pulau Pramuka
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
                        <label class="form-label">Harga Tiket</label>
                        <input class="form-control" id="harga_tiket" name="harga_tiket" placeholder="Harga Tiket">
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
                        <input class="form-control" id="deskripsi" name="deskripsi" placeholder="Deskripsi">
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
            curLocation = [-5.745045251806205, 106.61385372421687];
        }

        var map = L.map('maps').setView({
            lat: -5.745045251806205,
            lon: 106.61385372421687,
        }, 17)

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
        }).addTo(map);

        map.attributionControl.setPrefix(false);

        var marker = new L.marker(curLocation, {
            draggable: 'true',
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
            var position = [parseInt($("#lat").val()), parseInt($("#long").val())];
            marker.setLatLng(position, {
                draggable: 'true'
            }).bindPopup(position).update();
            map.panTo(position)
        })

        map.addLayer(marker);

        L.marker({
            lat: -5.747008662906957,
            lon: 106.61230633068655
        }).bindPopup('<h5>Mazu Dive Center</h5> </br>Scuba Diving Course and Fun Diving around Kepulauan Seribu. MAZU DIVE CENTER gives serve you the best for Discover The Underwater World.').addTo(map);
    </script>
    <?= $this->endSection(); ?>
</div>

<?= $this->endSection(); ?>