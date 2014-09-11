<?php $this->load->view('includes/head'); 
	// echo '<pre>';
	// var_dump($detail);
	
?>
	<div class="row">
	<div class="col-md-3 col-md-offset-1">

	<?php if($match['result']!=''){ ?>
			<!-- match over -->
			<h4><a href="<?php echo base_url(); ?>home/widget/<?php echo $this->uri->segment(3); ?>"><span class="btn btn-primary btn-sm">Back</span></a> <?php echo $match['result']; ?></h4>
			<p><?php echo $match['sub_desc']; ?></p>

			<hr class="half-slim-hr"></hr>

			<div class="row">
				<div class="col-md-6 teambox">
					<img src="<?php echo base_url(); ?>images/teams/<?php echo $match['team_a_pic']; ?>" width="80px">
					<hr class="half-slim-hr"></hr>
					<p><?php echo $match['team_a']; ?><br>
					<small><strong><?php echo $match['team_a_score'].'/'. $match['team_a_wicket']?> in <?php echo $match['team_a_over']; ?></strong></small></p>
					
				</div>

				<div class="col-md-6 teambox">
					<img src="<?php echo base_url(); ?>images/teams/<?php echo $match['team_b_pic']; ?>" width="80px">
					<hr class="half-slim-hr"></hr>
					<p><?php echo $match['team_b']; ?><br>
					<small><strong><?php echo $match['team_b_score'].'/'. $match['team_b_wicket']?> in <?php echo $match['team_b_over']; ?></strong></small>
					</p>
					
				</div>
			</div>

		<?php }else{ ?>
			<!-- current match -->
			<h4><a href="<?php echo base_url(); ?>home/widget/<?php echo $this->uri->segment(3); ?>"><span class="btn btn-primary btn-sm">Back</span></a> <?php echo $match['team_a']; ?> vs <?php echo $match['team_b']; ?></h4>
			<p><?php echo $match['sub_desc']; ?></p>

			<div class="row">
				<div class="col-md-6 teambox">
				<?php $var = $match['curr_batting_team']; ?>
					<p>Score: <?php echo $match['team_'.$var.'_score']; ?>/<?php echo $match['team_'.$var.'_wicket']; ?></p>
					<p>Overs: <?php echo $match['team_'.$var.'_over']; ?></p>
					<p>Target: <?php echo $match['target']; ?></p>
					<!-- current batsmen -->
					<p><?php echo $match['curr_batsmen'][0]['player'].'* '.  $match['curr_batsmen'][0]['run'].'('. $match['curr_batsmen'][0]['ball'].' )'; ?> </p>
					<p><?php echo $match['curr_batsmen'][1]['player'].'* '.  $match['curr_batsmen'][1]['run'].'('. $match['curr_batsmen'][1]['ball'].' )'; ?> </p>
				</div>
				<div class="col-md-6 teambox">
					<img src="<?php echo base_url(); ?>images/teams/<?php echo $match['team_'.$var.'_pic']; ?>" width="100px">
					<hr class="half-slim-hr"></hr>
					<p><?php echo $match['team_'.$var]; ?><br>
					<small><strong><?php echo $match['team_'.$var.'_score'].'/'. $match['team_'.$var.'_wicket']?> in <?php echo $match['team_'.$var.'_over']; ?></strong></small></p>	
				</div>


			</div>
		<?php } ?>


	</div>
	<div class="col-md-8">	
		<ul class="nav nav-tabs" role="tablist">
		  <li class="active"><a href="#scorecard" role="tab" data-toggle="tab">Scorecard</a></li>
		  <li><a href="#ballbyball" role="tab" data-toggle="tab">Ball by Ball</a></li>
		  <!-- <li><a href="#squad" role="tab" data-toggle="tab">Squad</a></li> -->
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
		  <div class="tab-pane active" id="scorecard"> 
		  	<h2>Scorecard</h2> 
		  	<?php $this->load->view('includes/scorecard'); ?>
		  </div>
		  <div class="tab-pane" id="ballbyball"> 
		 	 <h2>Ball by Ball</h2> 
		 	 <?php $this->load->view('includes/ball_by_ball'); ?>
		  </div>
		 <!--  <div class="tab-pane" id="squad"> 
		  	<h2>Squad</h2> 
		  	<?php //$this->load->view('includes/squad'); ?>
		  </div> -->
		</div>
	
	</div>
	</div>
<?php $this->load->view('includes/foot'); 