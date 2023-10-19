<?php $ereors = array(); ?>

<?php if (count($errors) > 0) : ?>
    <div class="error">
        <?php foreach ($erros as $error) : ?>
            <p><?php echo $error ?></p>
        <?php endforeach ?>
    </div>
<?php endif ?>