select
    season::integer,
    game_type,
    team,
    week::integer,
    gsis_id,
    position,
    full_name,
    first_name,
    last_name,
    report_primary_injury,
    report_secondary_injury,
    report_status,
    practice_primary_injury,
    practice_secondary_injury,
    practice_status,
    date_modified::timestamptz
from {{ source('warehouse', 'injuries') }}