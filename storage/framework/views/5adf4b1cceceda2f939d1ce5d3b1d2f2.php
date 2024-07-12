<?php $__env->startSection('content'); ?>
    <div class="card">
        <div class="table-responsive">
            <table class="table table-bordered table-hover table-striped m-0">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nama</th>
                    </tr>
                </thead>
                <?php $__currentLoopData = $alternatifs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $alternatif): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($alternatif->id_alternatif); ?></td>
                        <td><?php echo e($alternatif->nama_alternatif); ?></td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </table>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\saw\resources\views/alternatif/index.blade.php ENDPATH**/ ?>