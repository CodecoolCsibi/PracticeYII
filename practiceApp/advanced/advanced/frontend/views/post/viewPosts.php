<?php
use yii\helpers\Html;
?>
<div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
            <?php foreach($posts as $post): ?>
                        <h4><?php echo $post->author ." &nbsp;&nbsp; At: &nbsp;"  . $post->date; ?><h4>
                                <p class="well well-lg"><?php echo $post->text; ?></p>
            <?php endforeach; ?>
    </div>
    <?php if(!Yii::$app->user->isGuest): ?>
    <div class="row">
        <div class="col-sm-5"></div>
        <div class="col-sm-1">
            <p><?=
                Html::a('NEW', ['/post/post-form'], ['class'=>'btn btn-primary btn-lg']) ?> <p>
        </div>
        <div class="col-sm-5"></div>
    </div>
    <div class="col-sm-2"></div>
    <?php endif; ?>

</div>

