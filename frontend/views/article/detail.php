<?php

/* @var $this yii\web\View */
/* @var $info */

$this->title = $info->title;
$this->params['breadcrumbs'] = [
    ['label' => '资讯', 'url' => ['/article']]
];
?>
    <div class="row">
        <div class="col-lg-9">
            <div class="page-header">
                <h1><?= $info->title?></h1>
            </div>
            <?= $info->content ?>
        </div>
    </div>
