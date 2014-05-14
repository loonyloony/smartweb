<?php
	session_start();

	include('config.php');
	require_once(DIR_SYSTEM . 'startup.php');
	
	// Front Controller
	$controller = new Front();
	
	// Router
	if (isset($request->get['route'])) {
		$action = new Router($request->get['route']);
	} else {
		$action = new Action('page/smartweb', 'index');
	}
	
	// Dispatch
	$controller->dispatch($action, new Action('error/not_found', 'index'));
	
	// Output
	$response->output();
?>