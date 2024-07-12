<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo e($title); ?></title>
    <link rel="stylesheet" href="<?php echo e(asset('css/app.css')); ?>">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="#">SPK Metode SAW</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo e(route('home')); ?>">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo e(route('kriteria.index')); ?>">Kriteria</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo e(route('alternatif.index')); ?>">Alternatif</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo e(route('nilai.index')); ?>">Nilai</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo e(route('hitung.index')); ?>">Hitung</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <h1 class="my-3"><?php echo e($title); ?></h1>
        <?php echo $__env->yieldContent('content'); ?>
    </div>
</body>

</html>
<?php /**PATH C:\xampp\htdocs\saw\resources\views/app.blade.php ENDPATH**/ ?>