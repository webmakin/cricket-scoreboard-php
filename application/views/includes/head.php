<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link href="<?php echo base_url(); ?>css/spacelab.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>css/style.css" rel="stylesheet">
	<title>Cricket Scoreboard</title>

</head>
<body>
	<div id="container-fluid">
		<header>
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="#">Cricket Scoreboard</a>
			    </div>

			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav">
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Matches <span class="caret"></span></a>
			          <ul class="dropdown-menu" role="menu">
			          	<?php foreach($matches as $match){ ?>	
			            <li><a href="<?php echo base_url().'home/widget/'.$match['id']; ?>"><?php echo $match['team_a'].' vs '.$match['team_b']; ?></a></li>
			          	<?php } ?>
			          </ul>
			        </li>
			      </ul>
			      
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="#">Sign in</a></li>
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
		</header>