<ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('user'); ?>">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fa fa-map" aria-hidden="true"></i>
        </div>
        <div class="sidebar-brand-text mx-3">PARI-GIS</div>
    </a>

    <!-- Divider -->

    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading class=" font-weight-bold"">
        Menu
    </div>

    <!-- Nav Item - My Profile -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('home'); ?>">
            <i class="fas fa-home"></i>
            <span class="font-weight-bold">Home</span></a>
    </li>

    <!-- Nav Item - My Profile -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('home/user'); ?>">
            <i class="fas fa-user"></i>
            <span class="font-weight-bold">My Profile</span></a>
    </li>

    <?php if (in_groups('admin')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading" class="font-weight-bold">
            User Management
        </div>

        <!-- Nav Item - User List -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('admin'); ?>">
                <i class="fas fa-users"></i>
                <span class="font-weight-bold">User List</span></a>
        </li>
    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading" class="font-weight-bold">
        Map
    </div>

    <!-- Nav Item - Map -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('map'); ?>">
            <i class="fas fa-map"></i>
            <span class="font-weight-bold">Map</span></a>
    </li>

    <?php if (in_groups('admin')) : ?>
        <!-- Nav Item - Map -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('map/manage'); ?>">
                <i class="fas fa-map-pin"></i>
                <span class="font-weight-bold">Map Management</span></a>
        </li>
        <!-- Nav Item - Map -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('map/add'); ?>">
                <i class="fas fa-map-pin"></i>
                <span class="font-weight-bold">Add Map</span></a>
        </li>
    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fas fa-sign-out-alt"></i>
            <span class="font-weight-bold">Logout</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>