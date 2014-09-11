<?php $this->load->view('includes/head');
	// echo '<pre>';
	// var_dump($match['curr_batsmen']);
 ?>

<div class="row">

	<div class="col-md-6 col-md-offset-3" id="widget">
		<?php if($match['result']!=''){ ?>
			<!-- match over -->
			<h1><?php echo $match['result']; ?></h1>
			<p><?php echo $match['sub_desc']; ?></p>

			<hr class="half-slim-hr"></hr>

			<div class="row">
				<div class="col-md-6 teambox">
					<img src="<?php echo base_url(); ?>images/teams/<?php echo $match['team_a_pic']; ?>" width="100px">
					<hr class="half-slim-hr"></hr>
					<p class="lead"><?php echo $match['team_a']; ?><br>
					<small><strong><?php echo $match['team_a_score'].'/'. $match['team_a_wicket']?> in <?php echo $match['team_a_over']; ?></strong></small></p>
					
				</div>

				<div class="col-md-6 teambox">
					<img src="<?php echo base_url(); ?>images/teams/<?php echo $match['team_b_pic']; ?>" width="100px">
					<hr class="half-slim-hr"></hr>
					<p class="lead"><?php echo $match['team_b']; ?><br>
					<small><strong><?php echo $match['team_b_score'].'/'. $match['team_b_wicket']?> in <?php echo $match['team_b_over']; ?></strong></small>
					</p>
					
				</div>
			</div>

		<div class="row">
			<div class="center btn-primary card-completed-info" style="color:#fff"><a href="<?php echo base_url().'home/detail/'.$match['id']; ?>"><h4><?php echo $match['result']; ?></h4></a></div>
		</div>
		<br>
		<br>
		<!-- <div class="row well well-sm">
			
			<div class="col-md-6">
			<h4>Man of the Match</h4>
			<hr class="half-slim-hr"></hr>
			<p>Runs 88(51)</p>
			<hr class="half-slim-hr"></hr>
			<p>Boundries 13x4 1x6</p>
			<hr class="half-slim-hr"></hr>
			<p>Wickets nil</p>
			<hr class="half-slim-hr"></hr>
			</div>

			<div class="col-md-6"><img src="<?php //echo base_url(); ?>images/players/m_hussey_paint.png" width="100px"></div>
			
		</div> -->


		<?php }else{ ?>
			<!-- current match -->
			<h1><?php echo $match['team_a']; ?> vs <?php echo $match['team_b']; ?></h1>
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
					<p class="lead"><?php echo $match['team_'.$var]; ?><br>
					<small><strong><?php echo $match['team_'.$var.'_score'].'/'. $match['team_'.$var.'_wicket']?> in <?php echo $match['team_'.$var.'_over']; ?></strong></small></p>	
				</div>


			</div>

			<!-- show last ball data here -->
			<div class="row">
				<?php if(isset($match['last_ball'])){
					$last_ball = $match['last_ball'];
				 ?>
				<div class="center btn-primary card-completed-info" style="color:#fff">
				<a href="<?php echo base_url().'home/detail/'.$match['id']; ?>">
				<h4>Last Ball: <?php 
				if($last_ball['comment']!=''){ echo $last_ball['comment']; }	
				echo $last_ball['bowled_by'].' to '.$last_ball['bat_by']. ' '.$last_ball['result'].' runs' ;
				 ?></h4>
				 </a>
				 </div>
				<?php } ?>
			</div>
			<br>
			<br>
		<?php } ?>	
	

		<div class="row well well-sm details">
			
			<div class="col-md-12">
				<p><strong>Match:</strong> <br> <?php echo $match['description']; ?> - <?php echo $match['sub_desc']; ?> </p>
				<hr class="half-slim-hr"></hr>
				<p><strong>Series:</strong> <br><?php echo $match['series']; ?></p>
				<hr class="half-slim-hr"></hr>
				<p><strong>Date (GMT):</strong> <br> <?php echo date('d-m-Y', $match['date']); ?> </p>
				<hr class="half-slim-hr"></hr>
				<p><strong>Venue:</strong> <br> <?php echo $match['venue']; ?></p>
				<hr class="half-slim-hr"></hr>
				<p><strong>Match Type:</strong> <br> <?php echo $match['match_type']; ?></p>
				<hr class="half-slim-hr"></hr>
				<p><strong>Toss:</strong> <br> <?php echo $match['toss']; ?>  </p>
			</div>

		</div>

	</div>
</div>

<?php $this->load->view('includes/foot'); 