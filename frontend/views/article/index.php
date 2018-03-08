<?php

/* @var $this yii\web\View */
/* @var $articles */
/* @var $pagination */

use yii\helpers\Html;

$this->title = '为了部落！';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="container-fluid">
    <div class="row">
        <div>
            <div>
                <h1>文章</h1>
            </div>
            <ul>
                <?php foreach ($articles as $v): ?>
                    <li>
                        <?= Html::a($v->title, ['article/detail', 'id' => $v->id])?>
                    </li>
                <?php endforeach; ?>
            </ul>

            <?= \yii\widgets\LinkPager::widget([
                'pagination' => $pagination,
                'nextPageLabel' => '下一页',//设置为false 不显示
                'prevPageLabel' => '上一页',
                'firstPageLabel' => '首页',//默认不显示首尾页
                'lastPageLabel' => '尾页',
                //'hideOnSinglePage'=> false,  //页数不够默认不显示分页
                //'maxButtonCount' => 5,  默认显示页码数
                //'options' => ['class' => 'm-pagination'], //分页样式
            ]) ?>
        </div>
    </div>
</div>
