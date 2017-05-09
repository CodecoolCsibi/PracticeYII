<?php

namespace frontend\controllers;

use Yii;
use yii\web\Controller;
use common\models\DbPost;

class PostController extends Controller
{
    public function actionViewPost(){
        $posts = DbPost::find()->all();
        return $this->render('viewPosts', ['posts'=>$posts]);
    }

    public function actionPostForm(){
        if (Yii::$app->user->isGuest)
        {
            $posts = DbPost::find()->all();
            return $this->render('viewPosts', ['posts'=>$posts]);
        }
        $model = new DbPost();
        $model->author = Yii::$app->getUser()->identity->username;
        if ($model->load(Yii::$app->request->post()))
        {
            $POST=Yii::$app->request->post('DbPost');
            $model->text = $POST['text'];
            $model->save();
            $posts = DbPost::find()->all();
            return $this->render('viewPosts', ['posts'=>$posts]);
        }
        return $this->render('postForm', ['model' => $model]);


    }
}