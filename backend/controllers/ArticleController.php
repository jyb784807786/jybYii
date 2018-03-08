<?php

namespace backend\controllers;

use common\widgets\images\Uploader;
use Yii;
use common\models\Article;
use yii\helpers\ArrayHelper;
use common\models\Category;
use yii\data\ActiveDataProvider;
use yii\helpers\FileHelper;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use common\widgets\Upload;
use yii\data\Pagination;

/**
 * ArticleController implements the CRUD actions for Article model.
 */
class ArticleController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Article models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = Article::find()->leftJoin('category','`article`.cateId = `category`.id');

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Article model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Article model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Article();
        $CateModel = new Category();

        if ($model->load(Yii::$app->request->post())) {

            $files = UploadedFile::getInstance($model,'imgUrl');
            if(!empty($files)) {
                $upload = Yii::$app->imgUpload->UploadPhoto($files, '/upload/article/');
                if (is_array($upload) && $upload['status']==false){
                    Yii::$app->session->setFlash('error', $upload['data']);
                    return $this->render('create', [
                        'model' => $model,
                    ]);
                } else
                    $model->imgUrl = $upload;
            }

            if ($model->save()) {

                Yii::$app->session->setFlash('success', '添加成功');

                return $this->redirect(['view', 'id' => $model->id]);
            } else {

                Yii::$app->session->setFlash('error', '添加失败');

                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        }else{

            $category = $CateModel->getCateSelect();

            $category = ArrayHelper::map($category,'id','name');

            return $this->render('create', [
                'category' => $category,
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Article model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $CateModel = new Category();

        if ($model->load(Yii::$app->request->post())) {

            $files = UploadedFile::getInstance($model,'imgUrl');
            if(!empty($files)) {
                $upload = Yii::$app->imgUpload->UploadPhoto($files, '/upload/article/');
                if (is_array($upload) && $upload['status']==false){
                    Yii::$app->session->setFlash('error', $upload['data']);
                    return $this->render('update', [
                        'model' => $model,
                    ]);
                } else
                    $model->imgUrl = $upload;
            }

            if($model->save()){
                Yii::$app->session->setFlash('success', '更新成功');
                return $this->redirect(['view', 'id' => $model->id]);
            }
            else
                return $this->render('update', [
                    'model' => $model,
                ]);
        }else {
            $category = $CateModel->getCateSelect();

            $category = ArrayHelper::map($category,'id','name');

            return $this->render('update', [
                'category' => $category,
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Article model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        Yii::$app->session->setFlash('success', '删除成功');

        return $this->redirect(['index']);
    }

    /**
     * Finds the Article model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Article the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Article::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
