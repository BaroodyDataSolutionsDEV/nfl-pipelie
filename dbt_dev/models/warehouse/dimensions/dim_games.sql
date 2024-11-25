with

pbp as (
    select * from {{ ref('stg_pg__pbp') }}
),


final as (
    select distinct
        game_id,
        old_game_id,
        home_team, 
        away_team,
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
    from pbp
)

select *
from final