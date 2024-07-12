<?php $__env->startSection('content'); ?>
    <div class="card">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped m-0">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nama</th>
                        <th>Atribut</th>
                        <th>Bobot</th>
                    </tr>
                </thead>
                <?php $__currentLoopData = $kriterias; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kriteria): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($kriteria->id_kriteria); ?></td>
                        <td><?php echo e($kriteria->nama_kriteria); ?></td>
                        <td><?php echo e($kriteria->atribut); ?></td>
                        <td><?php echo e($kriteria->bobot); ?></td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\saw\resources\views/kriteria/index.blade.php ENDPATH**/ ?>