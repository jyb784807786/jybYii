<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "article".
 *
 * @property integer $id
 * @property string $title
 * @property string $imgUrl
 * @property string $brief
 * @property string $content
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $status
 */
class Article extends ActiveRecord
{
    const STATUS_DELETE = 0;//删除
    const STATUS_ACTIVE = 10;//显示
    const STATUS_HIDDEN = 20;//隐藏

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'article';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cateId'], 'integer'],
            [['title'], 'required'],
            [['content'], 'string'],
            [['status'], 'integer'],
            [['title'], 'string', 'max' => 50],
            ['status', 'default', 'value' => self::STATUS_ACTIVE],
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETE,self::STATUS_HIDDEN]],
        ];
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cateId' => '所属分类',
            'title' => '标题',
            'imgUrl' => '缩略图',
            'content' => '正文',
            'brief' => '简介',
            'created_at' => '创建时间',
            'updated_at' => '更新时间',
            'status' => '状态',
        ];
    }

    public function afterFind()
    {
        $this->created_at = date('Y-m-d H:i:s', $this->created_at);//特别注意 HH 是24小时制的,如果是hh会影响到按时间搜索的逻辑。
        $this->updated_at = date('Y-m-d H:i:s', $this->updated_at);//特别注意 HH 是24小时制的,如果是hh会影响到按时间搜索的逻辑。
        return parent::afterFind();
    }

    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id' => 'cateId']);
    }
}
