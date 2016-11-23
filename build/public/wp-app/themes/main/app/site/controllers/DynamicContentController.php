<?php 

use PrettyDateTime\PrettyDateTime;

/**
 * A base controller for all pages
 */
class DynamicContentController extends BaseController
{	
	// /**
	//  * Return the posts for the action news hub
	//  */	
	// public function actionGetTwitterPosts()
	// {	
	// 	$this->response->setHeaders(['HTTP/1.1' => '200 OK']);
	// 	$this->response->outputHeaders();
	// 	$this->setConfig('turnOffDisplaySqlDebug', true);
	// 	die($this->response->json($this->getTwitterPosts()));
	// }

	// /**
	//  * Get posts that contain messages
	//  *
	//  * @return false|array
	//  */	
	// protected function getTwitterPosts()
	// {	
	// 	if(($posts = $this->service('session')->get('twitter-posts', null))) {
	// 		return $posts;
	// 	}

	// 	$total = $this->request->getQueryParam('limit', 3);
	// 	$response = $this->helper('social')->getTwitterPosts($total);
	// 	$messages = [];

	// 	foreach($response as $data) {
	// 		$messages[] = [
	// 			'message' => $this->helper('hon0031.misc')->textToLinks($data->text),
	// 			'time' => PrettyDateTime::parse(new DateTime($data->created_at)),
	// 			'user' => $this->config('twitter.user')
	// 		];
	// 	}

	// 	if(count($messages)) {
	// 		$this->service('session')->set('twitter-posts', $messages);
	// 	}
	// 	return $messages;
	// }

	// /**
	//  * Get footer markup
	//  *
	//  * @return string
	//  */
	// protected function getFooterMarkup()
	// {	
	// 	$markup = '';
	// 	foreach($this->getFacebookPosts() as $post){
	// 		$markup.='<div class="facebook-feed-single">
	// 			<i class="fa fa-facebook" aria-hidden="true"></i>
	// 			<div class="facebook-feed-single-text">
	// 				<p class="small">'.$this->helper('strings')->truncate($post['message'], 100). '</p>
	// 				<p class="time">' .$post['time']. '</p>
	// 			</div>
	// 		</div>';
	// 	}
	// 	return $markup;
	// }

	// /**
	//  * Get News Hub markup
	//  *
	//  * @return string
	//  */
	// protected function getNewsHubMarkup()
	// {	
	// 	$markup = '<div id="owl-news-hub" class="owl-carousel owl-theme facebook-feed-news-hub">';
	// 	foreach($this->getFacebookPosts() as $post){
	// 		$markup.='<div class="item social-feed-container-single">
	// 				<div class="social-feed-container-single-content">
	// 					<div class="text-center">
	// 						<i class="fa fa-facebook" aria-hidden="true"></i>
	// 					</div>
	// 					<div class="social-feed-container-single-content-text">
	// 						<p>' .($post['image']? '<img src="' . $post['image'] . '" alt="Rossdales Facebook image"/>': '' ) . '
	// 						' .$post['message']. '</p>
	// 						<div class="links">
	// 							<a href="' .$post['link']. '">Visit</a>
	// 						</div>
	// 					</div>
	// 					<div class="top-bg"></div>
	// 					<div class="bottom-bg"></div>
	// 				</div>
	// 			</div>';
	// 	}
	// 	$markup.= '</div>';
	// 	return $markup;
	// }
}
