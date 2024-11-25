select 
    game_id,
    pfr_game_id,
    season::integer,
    week::integer,
    game_type,
    team,
    opponent as opponent_team,
    pfr_player_name,
    pfr_player_id,
    carries::integer,
    cast(case when rushing_yards_before_contact = 'NA' then null else rushing_yards_before_contact end as numeric) as rushing_yards_before_contact,
    cast(case when rushing_yards_before_contact_avg = 'NA' then null else rushing_yards_before_contact_avg end as numeric) as rushing_yards_before_contact_avg,
    cast(case when rushing_yards_after_contact = 'NA' then null else rushing_yards_after_contact end as numeric) as rushing_yards_after_contact,
    rushing_yards_after_contact_avg,
    rushing_broken_tackles::integer,
    cast(
        case 
            when receiving_broken_tackles = 'NA' then null
            else receiving_broken_tackles
        end
    as integer) as receiving_broken_tackles
from {{ source('warehouse', 'advstats_rush') }}