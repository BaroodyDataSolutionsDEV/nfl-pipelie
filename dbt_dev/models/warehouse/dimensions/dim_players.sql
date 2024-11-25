with 

rosters as (
    select * from {{ ref('stg_pg__rosters') }}
),

recent_rosters as (
    select *
    from (
        select 
            *, 
            rank() over (partition by gsis_id order by season desc) season_rank
        from rosters
    )
    where season_rank = 1
),


final as (
    select
        recent_rosters.gsis_id as player_id,
        recent_rosters.position,
        recent_rosters.full_name,
        recent_rosters.first_name,
        recent_rosters.last_name,
        cast(recent_rosters.birth_date as date),
        recent_rosters.height_inches,
        recent_rosters.weight_pounds,
        recent_rosters.college,
        recent_rosters.years_exp,
        recent_rosters.headshot_url,
        recent_rosters.football_name,
        recent_rosters.entry_year,
        recent_rosters.rookie_year,
        recent_rosters.draft_club,
        recent_rosters.draft_number
    from recent_rosters
)

select * from final