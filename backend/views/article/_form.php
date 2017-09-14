<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Article */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="article-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'brief')->textarea(['maxlength' => true]) ?>

    <!-- 单图 -->
    <?=$form->field($model, 'imgUrl')->widget('\common\widgets\images\Images',[
        'type' => \common\widgets\images\Images::TYPE_IMAGE, // 单图
    ])->label('封面图片')->hint('单图图片尺寸为：300*300');?>

    <?= yii\helpers\BaseHtml::img($model->imgUrl,['id'=>'uploadImg','style'=>'height: 300px;width: 300px;'])?>

    <?= $form->field($model, 'imgUrl')->widget('\dosamigos\fileupload\FileUpload',[
        'model' => $model,
        'attribute' => 'imgUrl',
        'url' => ['article/upload', 'id' => $model->id], // your url, this is just for demo purposes,
        'options' => ['accept' => 'image/*','name'=>'imgUpload'],
        'clientOptions' => [
            'maxFileSize' => 2000000
        ],
        // Also, you can specify jQuery-File-Upload events
        // see: https://github.com/blueimp/jQuery-File-Upload/wiki/Options#processing-callback-options
        'clientEvents' => [
            'fileuploaddone' => 'function(e, data) {
                      var result = JSON.parse(data.result);
                      if(!result.status){
                        alert("上传失败");   
                      }else{
                        $("#uploadImg").attr("src","http://frontendYii.example.com"+result.files.url);
                        $(\'input[name="Article[imgUrl]"]\').val(result.files.url);
                      }
                }',
            'fileuploadfail' => 'function(e, data) {
                                console.log(e);
                                console.log(data);
                            }',
        ],
    ])->hint('单图图片尺寸为：300*300');?>

    <?= $form->field($model, 'content')->widget(\crazydb\ueditor\UEditor::className()) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
