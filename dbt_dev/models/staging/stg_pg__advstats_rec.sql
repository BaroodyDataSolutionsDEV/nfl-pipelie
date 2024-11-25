select
    game_id,
    pfr_game_id,
    season,
    week,
    game_type,
    team,
    opponent,
    pfr_player_name,
    pfr_player_id,
    cast(case when rushing_broken_tackles = 'NA' then null else rushing_broken_tackles end as integer) as rushing_broken_tackles,
    cast(case when receiving_broken_tackles = 'NA' then null else receiving_broken_tackles end as integer) as receiving_broken_tackles,
    cast(case when passing_drops = 'NA' then null else passing_drops end as integer) as passing_drops,
    cast(case when passing_drop_pct = 'NA' then null else passing_drop_pct end as numeric) as passing_drop_pct,
    cast(case when receiving_drop = 'NA' then null else receiving_drop end as integer) as receiving_drop,
    cast(case when receiving_drop_pct = 'NA' then null else receiving_drop_pct end as numeric) as receiving_drop_pct,
    cast(case when receiving_int = 'NA' then null else receiving_int end as integer) as receiving_int,
    cast(case when receiving_rat = 'NA' then null else receiving_rat end as numeric) as receiving_rat
from {{ source('warehouse', 'advstats_rec') }}