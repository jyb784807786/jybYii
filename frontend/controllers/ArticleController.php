<?php
/**
 * Created by PhpStorm.
 * User: qieliyuan
 * Date: 2018/2/8
 * Time: 17:48
 */
namespace frontend\controllers;

use yii;
use common\models\Article;
use yii\web\Controller;

use yii\data\Pagination;

class ArticleController extends Controller
{
    public function actionIndex()
    {
        $query = Article::find()
            ->where(['status'=>Article::STATUS_ACTIVE]);

        $count = $query->count();

        $pagination = new Pagination([
            'totalCount'=>$count,
            'pageSize' => 10,//每页个数
            'pageSizeParam' => false, //默认带的有每页的数量per-page 不显示
            //'pageParam' => 'p', //修改默认分页参数
            //'validatePage' => false, //超出总页数时 默认true 显示最后一页 false-显示空
        ]);

        // 使用分页对象来填充 limit 子句并取得文章数据
        $articles = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return $this->render('index', [
            'articles' => $articles,
            'pagination' => $pagination
        ]);
    }

    public function actionDetail()
    {
        return $this->render('detail',[
            'info' => Article::findOne(['id' => Yii::$app->request->get('id')])
        ]);
    }
}