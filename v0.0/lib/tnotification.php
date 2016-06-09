<?php

Trait TNotification {

	private function notificationSend($text) {
		
		$notification       = new Notification(md5($text));
		$notification->text = $text;
		
		return $notification->send();
	}
}

?>