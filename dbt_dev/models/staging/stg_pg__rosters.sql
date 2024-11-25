select
    season::numeric::integer,
    team,
    position,
    depth_chart_position,
    jersey_number::numeric::integer,
    status,
    full_name,
    first_name,
    last_name,
    birth_date,
    height::numeric::integer as height_inches,
    weight::numeric::integer as weight_pounds,
    college,
    gsis_id,
    espn_id,
    sportradar_id,
    yahoo_id,
    rotowire_id,
    pff_id,
    pfr_id,
    fantasy_data_id,
    sleeper_id,
    years_exp,
    headshot_url,
    ngs_position,
    week::numeric::integer,
    game_type,
    status_description_abbr,
    football_name,
    esb_id,
    gsis_it_id,
    smart_id,
    entry_year::numeric::integer,
    rookie_year::numeric::integer,
    draft_club,
    draft_number::numeric::integer
from {{ source('warehouse', 'rosters') }}