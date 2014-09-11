<?php

class Mhome extends CI_Model{
		
	// func to get matches data for the	nav
	function get_matches(){
		$query = $this->db->get('match');
		$res_array = $query->result_array();
		foreach($res_array as $key => $value){
			$res_array[$key]['team_a'] = $this->get_t_data($value['team_a_id'], 'abbr');
			$res_array[$key]['team_b'] = $this->get_t_data($value['team_b_id'], 'abbr');
		}
		return $res_array;
	}

	//func to get the match data for the match id passed
	function get_match($id){
		$this->db->where('id', $id);
		$query = $this->db->get('match');
		$res_array = $query->row_array();
		$res_array['team_a_abbr'] = $this->get_t_data($res_array['team_a_id'], 'abbr');
		$res_array['team_a'] = $this->get_t_data($res_array['team_a_id'], 'name');
		$res_array['team_a_pic'] = $this->get_t_data($res_array['team_a_id'], 'pic');
		$res_array['team_b_abbr'] = $this->get_t_data($res_array['team_b_id'], 'abbr');
		$res_array['team_b'] = $this->get_t_data($res_array['team_b_id'], 'name');
		$res_array['team_b_pic'] = $this->get_t_data($res_array['team_b_id'], 'pic');
		//get current batsmen
		$res_array['curr_batsmen'] = $this->get_current_batsmen($id, $res_array['team_'.$res_array['curr_batting_team'].'_id']);
		//get latest ball details
		if($res_array['curr_ball_id']!=0){
			$res_array['last_ball'] = $this->get_last_ball($res_array['curr_ball_id']);
		}
		return $res_array;
	}

	//func to get the match detail for score card and ball by ball updates for the match id sent
	function get_match_detail($id){

		//get the team ids for this match
		$var = $this->get_match($id);

		//get batting scorecard for team a 
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_a_id']);
		$query = $this->db->get('batting_scorecard');
		$arr = '';
		$arr = $query->result_array();
		foreach ($arr as $key => $value) {
			$arr['team_name'] = $this->get_t_data($value['team_id'], 'name');
			$arr[$key]['player_name'] = $this->get_p_data($value['player_id'], 'name');
			//if the player is out get the FOW detail
			if($arr[$key]['status']=='out'){
				$arr[$key]['FOW'] = $this->get_fow_data($id, $value['player_id'], 'detail');
			}
		}
		$result['batting']['a'] = $arr;

		//get batting scorecard for team b
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_b_id']);
		$query = $this->db->get('batting_scorecard');
		$arr = '';
		$arr = $query->result_array();
		foreach ($arr as $key => $value) {
			$arr['team_name'] = $this->get_t_data($value['team_id'], 'name');
			$arr[$key]['player_name'] = $this->get_p_data($value['player_id'], 'name');
			//if the player is out get the FOW detail
			if($arr[$key]['status']=='out'){
				$arr[$key]['FOW'] = $this->get_fow_data($id, $value['player_id'], 'detail');
			}
		}
		$result['batting']['b'] = $arr;


		//get bowling scorecard for both teams
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_a_id']);
		$query = $this->db->get('bowling_scorecard');
		$arr = '';
		$arr = $query->result_array();
		foreach ($arr as $key => $value) {
			$arr['team_name'] = $this->get_t_data($value['team_id'], 'name');
			$arr[$key]['player_name'] = $this->get_p_data($value['player_id'], 'name');

		}
		$result['bowling']['a'] = $arr;

		//get bowling scorecard for team b
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_b_id']);
		$query = $this->db->get('bowling_scorecard');
		$arr = '';
		$arr = $query->result_array();
		foreach ($arr as $key => $value) {
			$arr['team_name'] = $this->get_t_data($value['team_id'], 'name');
			$arr[$key]['player_name'] = $this->get_p_data($value['player_id'], 'name');

		}
		$result['bowling']['b'] = $arr;

		//get FOW for both teams
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_a_id']);
		$query = $this->db->get('fall_of_wicket');
		$arr = '';
		$arr = $query->result_array();
		foreach ($arr as $key => $value) {
			$arr[$key]['player_name'] = $this->get_p_data($value['player_id'], 'name');

		}
		$result['fow']['a'] = $arr;

		//get FOW for team b
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_b_id']);
		$query = $this->db->get('fall_of_wicket');
		$arr = '';
		$arr = $query->result_array();
		foreach ($arr as $key => $value) {
			$arr[$key]['player_name'] = $this->get_p_data($value['player_id'], 'name');

		}
		$result['fow']['b'] = $arr;

		//get overdata clubbed with ball by ball data for both teams
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_a_id']);
		$query = $this->db->get('over');
		$arr = '';
		
		if($query->num_rows()>0){
			$arr = $query->result_array();
			// $arr['team_name'] = $this->get_t_data($arr['team_id'], 'name');
			foreach ($arr as $key => $value) {
				$arr[$key]['bowled_by'] = $this->get_p_data($value['bowled_by'], 'name');
				$arr[$key]['player_pic'] = $this->get_p_data($value['bowled_by'], 'pic');
				$arr[$key]['balls'] = $this->get_ball_data($value['balls']);
			}
			$result['over']['a'] = $arr;
		}

		//get over data for team b
		$this->db->where('match_id', $id);
		$this->db->where('team_id', $var['team_b_id']);
		$query = $this->db->get('over');
		$arr = '';
		
		if($query->num_rows()>0){
			$arr = $query->result_array();
			// $arr['team_name'] = $this->get_t_data($arr['team_id'], 'name');
			foreach ($arr as $key => $value) {
				$arr[$key]['bowled_by'] = $this->get_p_data($value['bowled_by'], 'name');
				$arr[$key]['player_pic'] = $this->get_p_data($value['bowled_by'], 'pic');
				$arr[$key]['balls'] = $this->get_ball_data($value['balls']);
			}
			$result['over']['b'] = $arr;
		}

		return $result;
	}

	//func to get the ball data
	function get_ball_data($str){
		$arr  = explode('|', $str);
		foreach ($arr as $key => $value) {
			$arr[$key] = $this->get_ball($value);
		}
		return $arr;
	}

	//func to get the row for the ball id sent along with relevant data
	function get_ball($id){
		$this->db->where('id', $id);
		$query = $this->db->get('ball');
		if($query->num_rows()>0){
			$arr = $query->row_array();
		
			$arr['bat_by'] =  $this->get_p_data($arr['bat_by'], 'name');
			return $arr;
		}
		else{
			return null;
		}
	}

	//func that takes id and returns single relevant data field for a team
	function get_t_data($id, $name){
		$this->db->where('id', $id);
		$query = $this->db->get('team');
		if($query->num_rows()>0){
			$row_array = $query->row_array();
			return $row_array[$name];
		}
		else{
			return null;
		}
	}

	//func that takes id and returns single relevant data field for a player
	function get_p_data($id, $name){
		$this->db->where('id', $id);
		$query = $this->db->get('player');
		if($query->num_rows()>0){
			$row_array = $query->row_array();
			return $row_array[$name];
		}
		else{
			return null;
		}
	}


	//func that takes match id playerid and returns single relevant data field for a FOW
	function get_fow_data($id, $player, $name){
		$this->db->where('match_id', $id);
		$this->db->where('player_id', $player);
		$query = $this->db->get('fall_of_wicket');
		if($query->num_rows()>0){
			$row_array = $query->row_array();
			return $row_array[$name];
		}
		else{
			return null;
		}
	}

	//func that takes id and returns single relevant data field for an over
	function get_o_data($id, $name){
		$this->db->where('id', $id);
		$query = $this->db->get('over');
		if($query->num_rows()>0){
			$row_array = $query->row_array();
			return $row_array[$name];
		}
		else{
			return null;
		}
	}

	//func takes the match id and team id and sends the current batsmen
	function get_current_batsmen($match_id, $team_id){
		$this->db->where('match_id', $match_id);
		$this->db->where('team_id', $team_id);
		$this->db->where('status', 'not out');
		$query = $this->db->get('batting_scorecard');
		//if no batsmen added get the first two team members and show score 0 
		$res_array = $query->result_array();
		foreach ($res_array as $key => $value) {
			$res_array[$key]['player'] = $this->get_p_data($value['player_id'], 'name');
		}
		return $res_array;
	}

	//func to get the last ball details
	function get_last_ball($id){
		$this->db->where('id', $id);
		$query = $this->db->get('ball');
		$arr = $query->row_array();
		$bowled_by =  $this->get_o_data($arr['over_id'],'bowled_by');
		$arr['bowled_by'] =  $this->get_p_data($bowled_by, 'name');
		$arr['bat_by'] =  $this->get_p_data($arr['bat_by'], 'name');
		return $arr;
	}

}