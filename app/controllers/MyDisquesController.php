<?php

class MyDisquesController extends \ControllerBase {
	/**
	 * Affiches les disques de l'utilisateur
	 */
	public function indexAction(){
		//TODO 4.2

		$controller=$this;
		$user=Auth::getUser($controller);

		$cloud=$this->config->cloud;
		$this->view->setVar("cloud",$cloud);

		$this->view->setVar("user",$user);

		$disques = Disque::find(array(
			"idUser" => $user->getId(),
			"order" => "name"
		));

		$this->view->setVar("disques",$disques);

		$occupation = ModelUtils::getDisqueOccupation($disques);
		$this->view->setVar("occupation",$occupation);

		$this->jquery->compile($this->view);
	}

	public function progressbarAction($color,$occupation){
		$pb=$this->jquery->bootstrap()->htmlProgressbar("pb",$color,$occupation);
		$this->jquery->compile($this->view);
		$pb->setStriped(true);
		$pb->setActive(true);
		$pb->showCaption(true);
	}
}