<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo e($title ?? ''); ?></title>
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
                <ul class="navbar-nav ms-auto">
                    <!-- Authentication Links -->
                    <?php if(auth()->guard()->guest()): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo e(route('login')); ?>">Login</a>
                        </li>
                    <?php else: ?>
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                <?php echo e(Auth::user()->name); ?>

                            </a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"
                                   onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                    Logout
                                </a>
                                <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" class="d-none">
                                    <?php echo csrf_field(); ?>
                                </form>
                            </div>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container my-3">
        <h1><?php echo e($title ?? ''); ?></h1>
        <?php echo $__env->yieldContent('content'); ?>
    </div>
</body>

</html>
        
<?php /**PATH C:\Users\HP COREi3\Documents\Semester 4\Kunjungan Industri\saw\resources\views/app.blade.php ENDPATH**/ ?>