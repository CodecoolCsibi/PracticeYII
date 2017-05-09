<?php
namespace common\models;

use Yii;
use yii\base\Model;

class BlogPost extends Model
{
    public $author;
    public $text;

    public function rules()
    {
        return [['text'], 'required'];
    }
}