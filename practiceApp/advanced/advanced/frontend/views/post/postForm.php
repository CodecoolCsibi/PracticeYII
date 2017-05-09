<?php


use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Write a Post';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Write what's in your mind to make a post:</p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(); ?>
            <p>Author : <?php echo $model->author ?></p>
            <?= $form->field( $model, 'text')->textarea(['autofocus' => true, 'id' => 'post_text']) ?>
            <div class="form-group">
                <?= Html::submitButton('Post', ['class' => 'btn btn-primary', 'name' => 'post-button']) ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
