<?php

namespace common\models;

use Yii;
use yii\db\Query;

/**
 * This is the model class for table "category".
 *
 * @property integer $id
 * @property string $name
 * @property integer $parent
 * @property integer $isShow
 */
class Category extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['parent', 'isShow'], 'integer'],
            [['name'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => '分类名',
            'parent' => '父级',
            'isShow' => '是否显示',
        ];
    }

    public function getCateSelect()
    {
        $category = [];
        $cate = Category::findAll(['parent'=>0]);

        foreach ($cate as $key => $value){
            $category[] = ['id'=>$value->id,'name'=>$value->name];
            $category = $this->getChildCateSelect($category,$value->id,'│');
        }

        return $category;
        //return Category::find()->all();
    }

    //└─   ├─  │
    private function getChildCateSelect($category,$parent,$step)
    {
        $cate = Category::findAll(['parent'=>$parent]);
        $size = sizeof($cate);

        foreach ($cate as $key => $value)
        {
            if($key == $size-1)
            {
                $category[] = ['id'=>$value->id,'name'=>$step.'└─'.$value->name];
            }else{
                $category[] = ['id'=>$value->id,'name'=>$step.'├─'.$value->name];
            }

            $category = $this->getChildCateSelect($category,$value->id,$step.'├');
        }

        return $category;
    }

    public function getArticles()
    {
        return $this->hasMany(Article::className(), ['cateId'=>'id']);
    }
}
