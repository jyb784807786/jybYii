<?php

namespace common\widgets\images;

use Yii;
use yii\helpers\Url;
use yii\widgets\InputWidget;
use yii\base\InvalidConfigException;

/**
 * 单图上传widgets
 */
class Images extends InputWidget
{
    const TYPE_IMAGE  = 'image'; // 单图
    const TYPE_IMAGES = 'images'; // 多图

    public $type   = self::TYPE_IMAGE; //默认为单图
    public $url    = '/article/uploadBase64'; // 上传地址

    public function init()
    {
        /* 类型判断 */
        if ($this->type != self::TYPE_IMAGE && $this->type != self::TYPE_IMAGES) {
            throw new InvalidConfigException("Images 'type' error ,his value self::TYPE_IMAGE or self::TYPE_IMAGES");
        }
        parent::init();
    }

    public function run(){
        $opt = [
            'model'     => $this->model,
            'attribute' => $this->attribute,
            'url'       => $this->url,
        ];
        return $this->render($this->type,$opt);
    }
}
