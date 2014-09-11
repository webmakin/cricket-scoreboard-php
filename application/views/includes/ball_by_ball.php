 <div class="row">
 	<div class="col-md-5">
	<h4><?php echo $detail['batting']['a']['team_name']; ?></h4>
	
	<?php foreach($detail['over']['a'] as $over){ ?>

	<div class="panel">
	 <div class="row well well-sm">
	  <div class="col-md-4">
	  	<h3><?php 
	  		$number = $over['over_no'];
	  		$ends = array('th','st','nd','rd','th','th','th','th','th','th');
			if (($number %100) >= 11 && ($number%100) <= 13)
			   $abbreviation = $number. 'th';
			else
			   $abbreviation = $number. $ends[$number % 10];
	  	 	echo $number;
	  	 	?> over</h3>
	  	<small><?php echo $detail['batting']['b']['team_name']; ?>: <?php echo $over['score_at_end']; ?>/<?php echo $over['wicket_at_end']; ?></small> 
	  </div>
	  <div class="col-md-4 col-md-offset-4">
	  	<img src="<?php echo base_url(); ?>images/players/<?php echo $over['player_pic']; ?>" width="60px"><br>
	  	<small><?php echo $over['bowled_by']; ?></small> 
	  </div>
	 </div>

	 <div class="row">
		 <div class="col-md-12">
		 	<ul class="over">
		 	<?php 
		 	 foreach ($over['balls'] as $key => $value) {
		 	 	
		 		echo '<li><span class="btn-primary">'.$over['over_no'].'.'.$value['ball_no'].'</span>'.$over['bowled_by'].' to '.$value['bat_by'].': '.$value['result'].' runs.</li>';
		 	}	
		 		?>

		 	</ul>
		 </div>
	 </div>
 	</div>

	<?php } ?>

	</div>
 	<div class="col-md-5 col-md-offset-1">
 	<h4><?php echo $detail['batting']['b']['team_name']; ?></h4>
	
	<?php foreach($detail['over']['b'] as $over){ ?>

	<div class="panel">
	 <div class="row well well-sm">
	  <div class="col-md-4">
	  	<h3><?php 
	  		$number = $over['over_no'];
	  		$ends = array('th','st','nd','rd','th','th','th','th','th','th');
			if (($number %100) >= 11 && ($number%100) <= 13)
			   $abbreviation = $number. 'th';
			else
			   $abbreviation = $number. $ends[$number % 10];
	  	 	echo $number;
	  	 	?> over</h3>
	  	<small><?php echo $detail['batting']['a']['team_name']; ?>: <?php echo $over['score_at_end']; ?>/<?php echo $over['wicket_at_end']; ?></small> 
	  </div>
	  <div class="col-md-4 col-md-offset-4">
	  	<img src="<?php echo base_url(); ?>images/players/<?php echo $over['player_pic']; ?>" width="60px"><br>
	  	<small><?php echo $over['bowled_by']; ?></small> 
	  </div>
	 </div>

	 <div class="row">
		 <div class="col-md-12">
		 	<ul class="over">
		 	<?php 
		 	 foreach ($over['balls'] as $key => $value) {
		 	 	
		 		echo '<li><span class="btn-primary">'.$over['over_no'].'.'.$value['ball_no'].'</span>'.$over['bowled_by'].' to '.$value['bat_by'].': '.$value['result'].' runs.</li>';
		 	}	
		 		?>

		 	</ul>
		 </div>
	 </div>
	 </div>
	 
	<?php } ?>
	</div>
</div>