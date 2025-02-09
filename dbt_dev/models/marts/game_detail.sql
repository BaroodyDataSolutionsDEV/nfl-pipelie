with team_games as (
	select
		game_id,
		old_game_id,
		home_team as team, 
		away_team as opponent,
		playoffs,
		week_of_season,
		to_date,
		season,
		kickoff_time,
		stadium,
		weather_description,
		temperature_fahrenheit,
		humidity_percent,
		wind_description,
		nfl_api_id,
		home_score,
		away_score,
		neutral_site,
		net_score_relative_to_home_team,
		total_points_scored,
		division_game,
		roof_description,
		surface_description,
		temp_f,
		wind_mph,
		home_coach,
		away_coach,
		stadium_id,
		game_stadium,
		home_opening_kickoff
	from {{ ref('dim_games') }}
	union all
	select
		game_id,
		old_game_id,
		away_team as team, 
		home_team as opponent,
		playoffs,
		week_of_season,
		to_date,
		season,
		kickoff_time,
		stadium,
		weather_description,
		temperature_fahrenheit,
		humidity_percent,
		wind_description,
		nfl_api_id,
		home_score,
		away_score,
		neutral_site,
		net_score_relative_to_home_team,
		total_points_scored,
		division_game,
		roof_description,
		surface_description,
		temp_f,
		wind_mph,
		home_coach,
		away_coach,
		stadium_id,
		game_stadium,
		home_opening_kickoff
	from {{ ref('dim_games') }}
),
game_details as (
    select 
        games.game_id,
        games.season,
        games.week_of_season,
        games.playoffs,
        games.kickoff_time,
        games.neutral_site,
        games.stadium,
        games.weather_description,
        games.temperature_fahrenheit,
        games.temp_f,
        games.humidity_percent,
        games.wind_description,
        games.wind_mph,
        games.roof_description,
        games.surface_description,
        games.home_team,
        games.away_team,
        games.home_coach,
        games.away_coach,
        games.home_score,
        games.away_score,
        games.home_score - games.away_score as net_score_relative_to_home_team,
        games.home_score + games.away_score as total_score,
        games.home_opening_kickoff
    from {{ ref('dim_games') }} games
),
plays_summary as (
    select 
        team_games.game_id,
        team_games.team,
        team_games.opponent,
        max(yards_gained) as longest_play,
        sum(qb_dropback) as qb_dropbacks,
        sum(air_yards) as air_yards,
        sum(yards_after_catch) as yac,
        sum(penalty) as penalties,
        sum(rush_attempt) as rushes,
        sum(pass_attempt) as passes,
        sum(incomplete_pass) as incomplete_passes,
        sum(pass_attempt) - sum(incomplete_pass) as completed_passes,
        sum(complete_pass) as complete_pass_validation,
        sum(qb_hit) as qb_hits,
        sum(interception) as interceptions,
        sum(sack) as sacks,
        sum(fumble) as fumbles,
        sum(pass_touchdown) as passing_touchdowns,
        sum(rush_touchdown) as rushing_touchdowns,
        sum(return_touchdown) as returned_touchdowns,
        sum(first_down) as first_downs
    from team_games
        left join {{ ref('fct_play') }} plays on team_games.game_id = plays.game_id 
            and team_games.team = plays.possession_team
    group by team_games.game_id, team_games.team, team_games.opponent
),
final as (
    select 
        game_details.game_id,
        game_details.season,
        game_details.week_of_season,
        game_details.playoffs,
        game_details.kickoff_time,
        game_details.neutral_site,
        game_details.stadium,
        game_details.weather_description,
        game_details.temperature_fahrenheit,
        game_details.temp_f,
        game_details.humidity_percent,
        game_details.wind_description,
        game_details.wind_mph,
        game_details.roof_description,
        game_details.surface_description,
        game_details.home_team,
        game_details.away_team,
        game_details.home_coach,
        game_details.away_coach,
        game_details.home_score,
        game_details.away_score,
        game_details.net_score_relative_to_home_team,
        game_details.total_score,
        game_details.home_opening_kickoff,
        plays_summary.team,
        plays_summary.opponent,
        plays_summary.longest_play,
        plays_summary.qb_dropbacks,
        plays_summary.air_yards,
        plays_summary.yac,
        plays_summary.penalties,
        plays_summary.rushes,
        plays_summary.passes,
        plays_summary.incomplete_passes,
        plays_summary.completed_passes,
        plays_summary.complete_pass_validation,
        plays_summary.qb_hits,
        plays_summary.interceptions,
        plays_summary.sacks,
        plays_summary.fumbles,
        plays_summary.passing_touchdowns,
        plays_summary.rushing_touchdowns,
        plays_summary.returned_touchdowns,
        plays_summary.first_downs
    from plays_summary
        inner join game_details on plays_summary.game_id = game_details.game_id
)
select * from final