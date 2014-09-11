<?php
if(isset($detail['batting']['a']['team_name'])&&isset($detail['batting']['b']['team_name'])&&isset($detail['bowling']['a']['team_name'])&&isset($detail['bowling']['b']['team_name'])){  ?>
<div class="row">
	<div class="col-md-6">
		<div class="panel">
		<!-- team a batting -->
		<h4><?php	
		 echo $detail['batting']['a']['team_name']; ?> Batting: <?php echo $match['team_a_score']; ?>/<?php echo $match['team_a_wicket']; ?> in <?php echo $match['team_a_over']; ?></h4>
		<table class="table table-striped">
	      <thead>
	        <tr>
	          <th></th>
	          <th>R</th>
	          <th>4's</th>
	          <th>6's</th>
	          <th>SR</th>
	        </tr>
	      </thead>
	      <tbody>
	        
	        <?php foreach($detail['batting']['a'] as $batsmen){
	        	if(isset($batsmen['player_name'])){
	         ?>		<tr>
	          <td><?php echo $batsmen['player_name'];
	          if($batsmen['status']=='out'){ ?>
	          <br>
	          <?php if(isset($batsmen['FOW'])){ echo $batsmen['FOW']; } ?>
				</td>
	          <?php
	          }
	          ?>
	          	 
	          <td> <?php echo $batsmen['run']; ?>( <?php echo $batsmen['ball']; ?>)</td>
	          <td> <?php echo $batsmen['four']; ?></td>
	          <td> <?php echo $batsmen['six']; ?></td>
	          <td><?php 
	          if($batsmen['run']==0){
	          	$num = 0.00;
	          }
	          else{
	           $num = ($batsmen['run']/$batsmen['ball'])*100;
	           }
	           echo number_format((float)$num, 2, '.', '');
	           ?></td>
	           </tr>
	       	<?php }
	       }
	       	 ?>
	       
	       
	      </tbody>
	    </table>

	    <p><strong>Fours:</strong><?php echo $match['team_a_four']; ?>, <strong>Sixes:</strong> <?php echo $match['team_a_four']; ?><!-- , <strong>Extras:</strong> 10 --></p>

	    </div>

		<br>

		<div class="panel">
		<!-- team b bowling -->
	    <h4><?php echo $detail['bowling']['b']['team_name']; ?> Bowling</h4>	
	    <table class="table table-striped">
	      <thead>
	        <tr>
	          <th></th>
	          <th>O</th>
	          <th>R</th>
	          <th>W</th>
	          <th>Econ</th>
	          <th>Extras</th>
	        </tr>
	      </thead>
	      <tbody>
	      <?php foreach($detail['bowling']['b'] as $bowler){ 
	      	if(isset($bowler['player_name'])){
	       ?>
	        <tr>
	          <td><?php echo $bowler['player_name']; ?></td>
	          <td><?php echo $bowler['over']; ?></td>
	          <td><?php echo $bowler['run']; ?></td>
	          <td><?php echo $bowler['wicket']; ?></td>
	          <td>
	          <?php
	         	$var = explode('.', $bowler['over']);
	         	if($var[1]==0){
	         		$econ = $bowler['run']/$var[0];
	         	}  	
	         	else{
	         		$econ = ($bowler['run']/(($var[0]*6)+$var[1]))*6;
	         	}
	         	echo number_format((float)$econ, 2, '.', '');
	          ?></td>
	          <td><?php echo $bowler['extra']; ?></td>
	        </tr>
	       <?php }
	 	  }
	         ?>
	      </tbody>
	    </table>
	    </div>

      <div class="panel">
	    <h4>Fall of Wickets</h4>	
	    <ol>
	    	 <?php foreach($detail['fow']['a'] as $wicket){  ?>
		    <li><?php echo $wicket['player_name'].' at '.$wicket['run'].' runs, in '.$wicket['over'].' over'; ?></li>
		    <?php } ?>
	    </ol>
	   </div>


	</div>

	<div class="col-md-6">
		<div class="panel">
		<!-- team b batting -->
		<h4><?php echo $detail['batting']['b']['team_name']; ?> Batting: <?php echo $match['team_b_score']; ?>/<?php echo $match['team_b_wicket']; ?> in <?php echo $match['team_b_over']; ?></h4>
		<table class="table table-striped">
	      <thead>
	        <tr>
	          <th></th>
	          <th>R</th>
	          <th>4's</th>
	          <th>6's</th>
	          <th>SR</th>
	        </tr>
	      </thead>
	      <tbody>
	        
	        <?php foreach($detail['batting']['b'] as $batsmen){
	        	if(isset($batsmen['player_name'])){
	         ?>		<tr>
	          <td><?php echo $batsmen['player_name'];
	          if($batsmen['status']=='out'){ ?>
	          <br>
	          <?php if(isset($batsmen['FOW'])){ echo $batsmen['FOW']; } ?>
				</td>
	          <?php
	          }
	          ?>
	          	 
	          <td> <?php echo $batsmen['run']; ?>( <?php echo $batsmen['ball']; ?>)</td>
	          <td> <?php echo $batsmen['four']; ?></td>
	          <td> <?php echo $batsmen['six']; ?></td>
	          <td><?php 
	          if($batsmen['run']==0){
	          	$num = 0.00;
	          }
	          else{
	           $num = ($batsmen['run']/$batsmen['ball'])*100;
	           }
	           echo number_format((float)$num, 2, '.', '');
	           ?></td>
	           </tr>
	       	<?php }
	       }
	       	 ?>
	       
	       
	      </tbody>
	    </table>

	    <p><strong>Fours:</strong><?php echo $match['team_b_four']; ?>, <strong>Sixes:</strong> <?php echo $match['team_b_four']; ?><!-- , <strong>Extras:</strong> 10 --></p>

	    </div>

		<br>

		<div class="panel">
		<!-- team a bowling -->
	    <h4><?php echo $detail['bowling']['a']['team_name']; ?> Bowling</h4>	
	    <table class="table table-striped">
	      <thead>
	        <tr>
	          <th></th>
	          <th>O</th>
	          <th>R</th>
	          <th>W</th>
	          <th>Econ</th>
	          <th>Extras</th>
	        </tr>
	      </thead>
	      <tbody>
	      <?php foreach($detail['bowling']['a'] as $bowler){ 
	      	if(isset($bowler['player_name'])){
	       ?>
	        <tr>
	          <td><?php echo $bowler['player_name']; ?></td>
	          <td><?php echo $bowler['over']; ?></td>
	          <td><?php echo $bowler['run']; ?></td>
	          <td><?php echo $bowler['wicket']; ?></td>
	          <td>
	          <?php
	         	$var = explode('.', $bowler['over']);
	         	if($var[1]==0){
	         		$econ = $bowler['run']/$var[0];
	         	}  	
	         	else{
	         		$econ = ($bowler['run']/(($var[0]*6)+$var[1]))*6;
	         	}
	         	echo number_format((float)$econ, 2, '.', '');
	          ?></td>
	          <td><?php echo $bowler['extra']; ?></td>
	        </tr>
	       <?php }
	 	  }
	         ?>
	      </tbody>
	    </table>
	    </div>

      <div class="panel">
	    <h4>Fall of Wickets</h4>	
	    <ol>
	    	 <?php foreach($detail['fow']['b'] as $wicket){  ?>
		    <li><?php echo $wicket['player_name'].' at '.$wicket['run'].' runs, in '.$wicket['over'].' over'; ?></li>
		    <?php } ?>
	    </ol>
	   </div>

	</div>
</div>
<?php }