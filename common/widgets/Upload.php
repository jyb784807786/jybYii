<?php
/**
 * Created by PhpStorm.
 * User: qieliyuan
 * Date: 2017/12/19
 * Time: 14:56
 */
namespace common\widgets;

use yii;
use yii\base\Object;
use yii\web\UploadedFile;

class Upload extends Object
{
    /**
     * @param $files object 实例化模型
     * @param $path mixed 图片存储路径
     * @param bool $isthumb 是否要缩略图
     * @return mixed
     */
    public function UploadPhoto($files,$path,$isthumb=false){
        $root = STATIC_ROOT.$path;
        //返回一个实例化对象
        $folder = date('Ymd')."/";
        $pre = rand(999,9999).time();
        if($files) {
            if ($files->type == "image/jpeg" || $files->type == "image/pjpeg" || $files->type == "image/png" || $files->type == "image/x-png" || $files->type == "image/gif") {
                $newName = $pre . '.' . $files->getExtension();
            } else {
                return ['status'=>false,'data'=>'上传的文件类型不正确'];
            }
        } else {
            return ['status'=>false,'data'=>'文件不存在'];
        }
        if($files->size > 2000000){
            return ['status'=>false,'data'=>'上传的文件太大'];
        }
        if(!is_dir($root.$folder))
        {
            if(!mkdir($root.$folder, 0777, true)){
                return ['status'=>false,'data'=>'创建目录失败...'];
            }else{
                //	chmod($root.$folder,0777);
            }
        }
        //echo $root.$folder.$newName;exit;
        if($files->saveAs($root.$folder.$newName))
        {
            if($isthumb){
                $this->thumbphoto($files,$path.$folder.$newName,$path.$folder.'thumb'.$newName);
                return IMAGEURL.$path.$folder.$newName.'#'.$path.$folder.'thumb'.$newName;
            }else{
                return IMAGEURL.$path.$folder.$newName;
            }

        }
    }
}