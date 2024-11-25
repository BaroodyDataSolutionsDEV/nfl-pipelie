-- create schema
drop schema if exists raw cascade;
create schema raw;

-- create pbp table
create table raw.pbp (
    "play_id" text,
    "game_id" text,
    "old_game_id" text,
    "home_team" text,
    "away_team" text,
    "season_type" text,
    "week" text,
    "posteam" text,
    "posteam_type" text,
    "defteam" text,
    "side_of_field" text,
    "yardline_100" text,
    "game_date" text,
    "quarter_seconds_remaining" text,
    "half_seconds_remaining" text,
    "game_seconds_remaining" text,
    "game_half" text,
    "quarter_end" text,
    "drive" text,
    "sp" text,
    "qtr" text,
    "down" text,
    "goal_to_go" text,
    "time" text,
    "yrdln" text,
    "ydstogo" text,
    "ydsnet" text,
    "desc" text,
    "play_type" text,
    "yards_gained" text,
    "shotgun" text,
    "no_huddle" text,
    "qb_dropback" text,
    "qb_kneel" text,
    "qb_spike" text,
    "qb_scramble" text,
    "pass_length" text,
    "pass_location" text,
    "air_yards" text,
    "yards_after_catch" text,
    "run_location" text,
    "run_gap" text,
    "field_goal_result" text,
    "kick_distance" text,
    "extra_point_result" text,
    "two_point_conv_result" text,
    "home_timeouts_remaining" text,
    "away_timeouts_remaining" text,
    "timeout" text,
    "timeout_team" text,
    "td_team" text,
    "td_player_name" text,
    "td_player_id" text,
    "posteam_timeouts_remaining" text,
    "defteam_timeouts_remaining" text,
    "total_home_score" text,
    "total_away_score" text,
    "posteam_score" text,
    "defteam_score" text,
    "score_differential" text,
    "posteam_score_post" text,
    "defteam_score_post" text,
    "score_differential_post" text,
    "no_score_prob" text,
    "opp_fg_prob" text,
    "opp_safety_prob" text,
    "opp_td_prob" text,
    "fg_prob" text,
    "safety_prob" text,
    "td_prob" text,
    "extra_point_prob" text,
    "two_point_conversion_prob" text,
    "ep" text,
    "epa" text,
    "total_home_epa" text,
    "total_away_epa" text,
    "total_home_rush_epa" text,
    "total_away_rush_epa" text,
    "total_home_pass_epa" text,
    "total_away_pass_epa" text,
    "air_epa" text,
    "yac_epa" text,
    "comp_air_epa" text,
    "comp_yac_epa" text,
    "total_home_comp_air_epa" text,
    "total_away_comp_air_epa" text,
    "total_home_comp_yac_epa" text,
    "total_away_comp_yac_epa" text,
    "total_home_raw_air_epa" text,
    "total_away_raw_air_epa" text,
    "total_home_raw_yac_epa" text,
    "total_away_raw_yac_epa" text,
    "wp" text,
    "def_wp" text,
    "home_wp" text,
    "away_wp" text,
    "wpa" text,
    "vegas_wpa" text,
    "vegas_home_wpa" text,
    "home_wp_post" text,
    "away_wp_post" text,
    "vegas_wp" text,
    "vegas_home_wp" text,
    "total_home_rush_wpa" text,
    "total_away_rush_wpa" text,
    "total_home_pass_wpa" text,
    "total_away_pass_wpa" text,
    "air_wpa" text,
    "yac_wpa" text,
    "comp_air_wpa" text,
    "comp_yac_wpa" text,
    "total_home_comp_air_wpa" text,
    "total_away_comp_air_wpa" text,
    "total_home_comp_yac_wpa" text,
    "total_away_comp_yac_wpa" text,
    "total_home_raw_air_wpa" text,
    "total_away_raw_air_wpa" text,
    "total_home_raw_yac_wpa" text,
    "total_away_raw_yac_wpa" text,
    "punt_blocked" text,
    "first_down_rush" text,
    "first_down_pass" text,
    "first_down_penalty" text,
    "third_down_converted" text,
    "third_down_failed" text,
    "fourth_down_converted" text,
    "fourth_down_failed" text,
    "incomplete_pass" text,
    "touchback" text,
    "interception" text,
    "punt_inside_twenty" text,
    "punt_in_endzone" text,
    "punt_out_of_bounds" text,
    "punt_downed" text,
    "punt_fair_catch" text,
    "kickoff_inside_twenty" text,
    "kickoff_in_endzone" text,
    "kickoff_out_of_bounds" text,
    "kickoff_downed" text,
    "kickoff_fair_catch" text,
    "fumble_forced" text,
    "fumble_not_forced" text,
    "fumble_out_of_bounds" text,
    "solo_tackle" text,
    "safety" text,
    "penalty" text,
    "tackled_for_loss" text,
    "fumble_lost" text,
    "own_kickoff_recovery" text,
    "own_kickoff_recovery_td" text,
    "qb_hit" text,
    "rush_attempt" text,
    "pass_attempt" text,
    "sack" text,
    "touchdown" text,
    "pass_touchdown" text,
    "rush_touchdown" text,
    "return_touchdown" text,
    "extra_point_attempt" text,
    "two_point_attempt" text,
    "field_goal_attempt" text,
    "kickoff_attempt" text,
    "punt_attempt" text,
    "fumble" text,
    "complete_pass" text,
    "assist_tackle" text,
    "lateral_reception" text,
    "lateral_rush" text,
    "lateral_return" text,
    "lateral_recovery" text,
    "passer_player_id" text,
    "passer_player_name" text,
    "passing_yards" text,
    "receiver_player_id" text,
    "receiver_player_name" text,
    "receiving_yards" text,
    "rusher_player_id" text,
    "rusher_player_name" text,
    "rushing_yards" text,
    "lateral_receiver_player_id" text,
    "lateral_receiver_player_name" text,
    "lateral_receiving_yards" text,
    "lateral_rusher_player_id" text,
    "lateral_rusher_player_name" text,
    "lateral_rushing_yards" text,
    "lateral_sack_player_id" text,
    "lateral_sack_player_name" text,
    "interception_player_id" text,
    "interception_player_name" text,
    "lateral_interception_player_id" text,
    "lateral_interception_player_name" text,
    "punt_returner_player_id" text,
    "punt_returner_player_name" text,
    "lateral_punt_returner_player_id" text,
    "lateral_punt_returner_player_name" text,
    "kickoff_returner_player_name" text,
    "kickoff_returner_player_id" text,
    "lateral_kickoff_returner_player_id" text,
    "lateral_kickoff_returner_player_name" text,
    "punter_player_id" text,
    "punter_player_name" text,
    "kicker_player_name" text,
    "kicker_player_id" text,
    "own_kickoff_recovery_player_id" text,
    "own_kickoff_recovery_player_name" text,
    "blocked_player_id" text,
    "blocked_player_name" text,
    "tackle_for_loss_1_player_id" text,
    "tackle_for_loss_1_player_name" text,
    "tackle_for_loss_2_player_id" text,
    "tackle_for_loss_2_player_name" text,
    "qb_hit_1_player_id" text,
    "qb_hit_1_player_name" text,
    "qb_hit_2_player_id" text,
    "qb_hit_2_player_name" text,
    "forced_fumble_player_1_team" text,
    "forced_fumble_player_1_player_id" text,
    "forced_fumble_player_1_player_name" text,
    "forced_fumble_player_2_team" text,
    "forced_fumble_player_2_player_id" text,
    "forced_fumble_player_2_player_name" text,
    "solo_tackle_1_team" text,
    "solo_tackle_2_team" text,
    "solo_tackle_1_player_id" text,
    "solo_tackle_2_player_id" text,
    "solo_tackle_1_player_name" text,
    "solo_tackle_2_player_name" text,
    "assist_tackle_1_player_id" text,
    "assist_tackle_1_player_name" text,
    "assist_tackle_1_team" text,
    "assist_tackle_2_player_id" text,
    "assist_tackle_2_player_name" text,
    "assist_tackle_2_team" text,
    "assist_tackle_3_player_id" text,
    "assist_tackle_3_player_name" text,
    "assist_tackle_3_team" text,
    "assist_tackle_4_player_id" text,
    "assist_tackle_4_player_name" text,
    "assist_tackle_4_team" text,
    "tackle_with_assist" text,
    "tackle_with_assist_1_player_id" text,
    "tackle_with_assist_1_player_name" text,
    "tackle_with_assist_1_team" text,
    "tackle_with_assist_2_player_id" text,
    "tackle_with_assist_2_player_name" text,
    "tackle_with_assist_2_team" text,
    "pass_defense_1_player_id" text,
    "pass_defense_1_player_name" text,
    "pass_defense_2_player_id" text,
    "pass_defense_2_player_name" text,
    "fumbled_1_team" text,
    "fumbled_1_player_id" text,
    "fumbled_1_player_name" text,
    "fumbled_2_player_id" text,
    "fumbled_2_player_name" text,
    "fumbled_2_team" text,
    "fumble_recovery_1_team" text,
    "fumble_recovery_1_yards" text,
    "fumble_recovery_1_player_id" text,
    "fumble_recovery_1_player_name" text,
    "fumble_recovery_2_team" text,
    "fumble_recovery_2_yards" text,
    "fumble_recovery_2_player_id" text,
    "fumble_recovery_2_player_name" text,
    "sack_player_id" text,
    "sack_player_name" text,
    "half_sack_1_player_id" text,
    "half_sack_1_player_name" text,
    "half_sack_2_player_id" text,
    "half_sack_2_player_name" text,
    "return_team" text,
    "return_yards" text,
    "penalty_team" text,
    "penalty_player_id" text,
    "penalty_player_name" text,
    "penalty_yards" text,
    "replay_or_challenge" text,
    "replay_or_challenge_result" text,
    "penalty_type" text,
    "defensive_two_point_attempt" text,
    "defensive_two_point_conv" text,
    "defensive_extra_point_attempt" text,
    "defensive_extra_point_conv" text,
    "safety_player_name" text,
    "safety_player_id" text,
    "season" text,
    "cp" text,
    "cpoe" text,
    "series" text,
    "series_success" text,
    "series_result" text,
    "order_sequence" text,
    "start_time" text,
    "time_of_day" text,
    "stadium" text,
    "weather" text,
    "nfl_api_id" text,
    "play_clock" text,
    "play_deleted" text,
    "play_type_nfl" text,
    "special_teams_play" text,
    "st_play_type" text,
    "end_clock_time" text,
    "end_yard_line" text,
    "fixed_drive" text,
    "fixed_drive_result" text,
    "drive_real_start_time" text,
    "drive_play_count" text,
    "drive_time_of_possession" text,
    "drive_first_downs" text,
    "drive_inside20" text,
    "drive_ended_with_score" text,
    "drive_quarter_start" text,
    "drive_quarter_end" text,
    "drive_yards_penalized" text,
    "drive_start_transition" text,
    "drive_end_transition" text,
    "drive_game_clock_start" text,
    "drive_game_clock_end" text,
    "drive_start_yard_line" text,
    "drive_end_yard_line" text,
    "drive_play_id_started" text,
    "drive_play_id_ended" text,
    "away_score" text,
    "home_score" text,
    "location" text,
    "result" text,
    "total" text,
    "spread_line" text,
    "total_line" text,
    "div_game" text,
    "roof" text,
    "surface" text,
    "temp" text,
    "wind" text,
    "home_coach" text,
    "away_coach" text,
    "stadium_id" text,
    "game_stadium" text,
    "aborted_play" text,
    "success" text,
    "passer" text,
    "passer_jersey_number" text,
    "rusher" text,
    "rusher_jersey_number" text,
    "receiver" text,
    "receiver_jersey_number" text,
    "pass" text,
    "rush" text,
    "first_down" text,
    "special" text,
    "play" text,
    "passer_id" text,
    "rusher_id" text,
    "receiver_id" text,
    "name" text,
    "jersey_number" text,
    "id" text,
    "fantasy_player_name" text,
    "fantasy_player_id" text,
    "fantasy" text,
    "fantasy_id" text,
    "out_of_bounds" text,
    "home_opening_kickoff" text,
    "qb_epa" text,
    "xyac_epa" text,
    "xyac_mean_yardage" text,
    "xyac_median_yardage" text,
    "xyac_success" text,
    "xyac_fd" text,
    "xpass" text,
    "pass_oe" text
);

-- create rosters table
create table raw.rosters (
    "season" text,
    "team" text,
    "position" text,
    "depth_chart_position" text,
    "jersey_number" text,
    "status" text,
    "full_name" text,
    "first_name" text,
    "last_name" text,
    "birth_date" text,
    "height" text,
    "weight" text,
    "college" text,
    "gsis_id" text,
    "espn_id" text,
    "sportradar_id" text,
    "yahoo_id" text,
    "rotowire_id" text,
    "pff_id" text,
    "pfr_id" text,
    "fantasy_data_id" text,
    "sleeper_id" text,
    "years_exp" text,
    "headshot_url" text,
    "ngs_position" text,
    "week" text,
    "game_type" text,
    "status_description_abbr" text,
    "football_name" text,
    "esb_id" text,
    "gsis_it_id" text,
    "smart_id" text,
    "entry_year" text,
    "rookie_year" text,
    "draft_club" text,
    "draft_number" text
);

-- create injuries table
create table raw.injuries (
    "season" text,
    "game_type" text,
    "team" text,
    "week" text,
    "gsis_id" text,
    "position" text,
    "full_name" text,
    "first_name" text,
    "last_name" text,
    "report_primary_injury" text,
    "report_secondary_injury" text,
    "report_status" text,
    "practice_primary_injury" text,
    "practice_secondary_injury" text,
    "practice_status" text,
    "date_modified" text
);

-- create advstats_def table
create table raw.advstats_def (
    "game_id" text,
    "pfr_game_id" text,
    "season" text,
    "week" text,
    "game_type" text,
    "team" text,
    "opponent" text,
    "pfr_player_name" text,
    "pfr_player_id" text,
    "def_ints" text,
    "def_targets" text,
    "def_completions_allowed" text,
    "def_completion_pct" text,
    "def_yards_allowed" text,
    "def_yards_allowed_per_cmp" text,
    "def_yards_allowed_per_tgt" text,
    "def_receiving_td_allowed" text,
    "def_passer_rating_allowed" text,
    "def_adot" text,
    "def_air_yards_completed" text,
    "def_yards_after_catch" text,
    "def_times_blitzed" text,
    "def_times_hurried" text,
    "def_times_hitqb" text,
    "def_sacks" text,
    "def_pressures" text,
    "def_tackles_combined" text,
    "def_missed_tackles" text,
    "def_missed_tackle_pct" text
);

-- create advstats_pass table
create table raw.advstats_pass (
    "game_id" text,
    "pfr_game_id" text,
    "season" text,
    "week" text,
    "game_type" text,
    "team" text,
    "opponent" text,
    "pfr_player_name" text,
    "pfr_player_id" text,
    "passing_drops" text,
    "passing_drop_pct" text,
    "receiving_drop" text,
    "receiving_drop_pct" text,
    "passing_bad_throws" text,
    "passing_bad_throw_pct" text,
    "times_sacked" text,
    "times_blitzed" text,
    "times_hurried" text,
    "times_hit" text,
    "times_pressured" text,
    "times_pressured_pct" text,
    "def_times_blitzed" text,
    "def_times_hurried" text,
    "def_times_hitqb" text
);

-- create advstats_rec table
create table raw.advstats_rec (
    "game_id" text,
    "pfr_game_id" text,
    "season" text,
    "week" text,
    "game_type" text,
    "team" text,
    "opponent" text,
    "pfr_player_name" text,
    "pfr_player_id" text,
    "rushing_broken_tackles" text,
    "receiving_broken_tackles" text,
    "passing_drops" text,
    "passing_drop_pct" text,
    "receiving_drop" text,
    "receiving_drop_pct" text,
    "receiving_int" text,
    "receiving_rat" text
);

-- create advstats_rush table
create table raw.advstats_rush (
    "game_id" text,
    "pfr_game_id" text,
    "season" text,
    "week" text,
    "game_type" text,
    "team" text,
    "opponent" text,
    "pfr_player_name" text,
    "pfr_player_id" text,
    "carries" text,
    "rushing_yards_before_contact" text,
    "rushing_yards_before_contact_avg" text,
    "rushing_yards_after_contact" text,
    "rushing_yards_after_contact_avg" text,
    "rushing_broken_tackles" text,
    "receiving_broken_tackles" text
);

-- load pbp data
\copy raw.pbp FROM '/home/mike_user/portfolio-projects/nfl/data/archive/pbp/play_by_play_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.pbp FROM '/home/mike_user/portfolio-projects/nfl/data/archive/pbp/play_by_play_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.pbp FROM '/home/mike_user/portfolio-projects/nfl/data/archive/pbp/play_by_play_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.pbp FROM '/home/mike_user/portfolio-projects/nfl/data/archive/pbp/play_by_play_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.pbp FROM '/home/mike_user/portfolio-projects/nfl/data/archive/pbp/play_by_play_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

-- load rosters data
\copy raw.rosters FROM '/home/mike_user/portfolio-projects/nfl/data/archive/rosters/roster_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.rosters FROM '/home/mike_user/portfolio-projects/nfl/data/archive/rosters/roster_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.rosters FROM '/home/mike_user/portfolio-projects/nfl/data/archive/rosters/roster_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.rosters FROM '/home/mike_user/portfolio-projects/nfl/data/archive/rosters/roster_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.rosters FROM '/home/mike_user/portfolio-projects/nfl/data/archive/rosters/roster_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

-- load injuries data
\copy raw.injuries FROM '/home/mike_user/portfolio-projects/nfl/data/archive/injuries/injuries_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.injuries FROM '/home/mike_user/portfolio-projects/nfl/data/archive/injuries/injuries_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.injuries FROM '/home/mike_user/portfolio-projects/nfl/data/archive/injuries/injuries_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.injuries FROM '/home/mike_user/portfolio-projects/nfl/data/archive/injuries/injuries_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.injuries FROM '/home/mike_user/portfolio-projects/nfl/data/archive/injuries/injuries_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');

-- load advstats data
\copy raw.advstats_def FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_def_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_def FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_def_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_def FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_def_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_def FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_def_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_def FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_def_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rec FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rec_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rec FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rec_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rec FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rec_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rec FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rec_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rec FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rec_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_pass FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_pass_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_pass FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_pass_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_pass FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_pass_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_pass FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_pass_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_pass FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_pass_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rush FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rush_2020.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rush FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rush_2021.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rush FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rush_2022.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rush FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rush_2023.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');
\copy raw.advstats_rush FROM '/home/mike_user/portfolio-projects/nfl/data/archive/advstats/advstats_week_rush_2024.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',');