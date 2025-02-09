with

pbp as (
    select * from {{ ref('stg_pg__pbp') }}
),

final as (
    select
        play_id,
        game_id,
        possession_team,
        defense_team,
        side_of_field,
        absolute_yardline,
        quarter_seconds_remaining,
        half_seconds_remaining,
        game_seconds_remaining,
        game_half,
        end_of_quarter,
        drive,
        scoring_play,
        qtr,
        down,
        goal_to_go,
        time_remaining_quarter,
        yardline_description,
        yards_to_go,
        yards_to_go_net,
        play_description,
        play_type,
        yards_gained,
        shotgun,
        no_huddle,
        qb_dropback,
        qb_kneel,
        qb_spike,
        qb_scramble,
        pass_length_category,
        pass_field_location,
        air_yards,
        yards_after_catch,
        run_location,
        run_gap,
        field_goal_result,
        kick_distance,
        extra_point_result,
        two_point_conversion_result,
        home_timeouts_remaining,
        away_timeouts_remaining,
        is_timeout,
        timeout_team,
        td_team,
        td_player_name,
        td_player_id,
        result_home_score,
        result_away_score,
        possession_team_score,
        defteam_score,
        score_differential,
        possession_team_score_after_play,
        defteam_score_after_play,
        score_differential_after_play,
        punt_blocked,
        first_down_rush,
        first_down_pass,
        first_down_penalty,
        third_down_converted,
        third_down_failed,
        fourth_down_converted,
        fourth_down_failed,
        incomplete_pass,
        touchback,
        interception,
        punt_inside_twenty,
        punt_in_endzone,
        punt_out_of_bounds,
        punt_downed,
        punt_fair_catch,
        kickoff_inside_twenty,
        kickoff_in_endzone,
        kickoff_out_of_bounds,
        kickoff_downed,
        kickoff_fair_catch,
        fumble_forced,
        fumble_not_forced,
        fumble_out_of_bounds,
        solo_tackle,
        is_safety,
        penalty,
        tackled_for_loss,
        fumble_lost,
        own_kickoff_recovery,
        own_kickoff_recovery_td,
        qb_hit,
        rush_attempt,
        pass_attempt,
        sack,
        touchdown,
        pass_touchdown,
        rush_touchdown,
        return_touchdown,
        extra_point_attempt,
        two_point_attempt,
        field_goal_attempt,
        kickoff_attempt,
        punt_attempt,
        fumble,
        complete_pass,
        assist_tackle,
        lateral_reception,
        lateral_rush,
        lateral_return,
        lateral_recovery,
        passer_player_id,
        passer_player_name,
        passing_yards,
        receiver_player_id,
        receiver_player_name,
        receiving_yards,
        rusher_player_id,
        rusher_player_name,
        rushing_yards,
        lateral_receiver_player_id,
        lateral_receiver_player_name,
        lateral_receiving_yards,
        lateral_rusher_player_id,
        lateral_rusher_player_name,
        lateral_rushing_yards,
        lateral_sack_player_id,
        lateral_sack_player_name,
        interception_player_id,
        interception_player_name,
        lateral_interception_player_id,
        lateral_interception_player_name,
        punt_returner_player_id,
        punt_returner_player_name,
        lateral_punt_returner_player_id,
        lateral_punt_returner_player_name,
        kickoff_returner_player_name,
        kickoff_returner_player_id,
        lateral_kickoff_returner_player_id,
        lateral_kickoff_returner_player_name,
        punter_player_id,
        punter_player_name,
        kicker_player_name,
        kicker_player_id,
        own_kickoff_recovery_player_id,
        own_kickoff_recovery_player_name,
        blocked_player_id,
        blocked_player_name,
        tackle_for_loss_1_player_id,
        tackle_for_loss_1_player_name,
        tackle_for_loss_2_player_id,
        tackle_for_loss_2_player_name,
        qb_hit_1_player_id,
        qb_hit_1_player_name,
        qb_hit_2_player_id,
        qb_hit_2_player_name,
        forced_fumble_player_1_team,
        forced_fumble_player_1_player_id,
        forced_fumble_player_1_player_name,
        forced_fumble_player_2_team,
        forced_fumble_player_2_player_id,
        forced_fumble_player_2_player_name,
        solo_tackle_1_team,
        solo_tackle_2_team,
        solo_tackle_1_player_id,
        solo_tackle_2_player_id,
        solo_tackle_1_player_name,
        solo_tackle_2_player_name,
        assist_tackle_1_player_id,
        assist_tackle_1_player_name,
        assist_tackle_1_team,
        assist_tackle_2_player_id,
        assist_tackle_2_player_name,
        assist_tackle_2_team,
        assist_tackle_3_player_id,
        assist_tackle_3_player_name,
        assist_tackle_3_team,
        assist_tackle_4_player_id,
        assist_tackle_4_player_name,
        assist_tackle_4_team,
        tackle_with_assist,
        tackle_with_assist_1_player_id,
        tackle_with_assist_1_player_name,
        tackle_with_assist_1_team,
        tackle_with_assist_2_player_id,
        tackle_with_assist_2_player_name,
        tackle_with_assist_2_team,
        pass_defense_1_player_id,
        pass_defense_1_player_name,
        pass_defense_2_player_id,
        pass_defense_2_player_name,
        fumbled_1_team,
        fumbled_1_player_id,
        fumbled_1_player_name,
        fumbled_2_player_id,
        fumbled_2_player_name,
        fumbled_2_team,
        fumble_recovery_1_team,
        fumble_recovery_1_yards,
        fumble_recovery_1_player_id,
        fumble_recovery_1_player_name,
        fumble_recovery_2_team,
        fumble_recovery_2_yards,
        fumble_recovery_2_player_id,
        fumble_recovery_2_player_name,
        sack_player_id,
        sack_player_name,
        half_sack_1_player_id,
        half_sack_1_player_name,
        half_sack_2_player_id,
        half_sack_2_player_name,
        return_team,
        return_yards,
        penalty_team,
        penalty_player_id,
        penalty_player_name,
        penalty_yards,
        replay_or_challenge,
        replay_or_challenge_result,
        penalty_type,
        defensive_two_point_attempt,
        defensive_two_point_conv,
        defensive_extra_point_attempt,
        defensive_extra_point_conv,
        safety_player_name,
        safety_player_id,
        cp,
        cpoe,
        series,
        series_success,
        series_result,
        order_sequence,
        time_of_day,
        play_clock_time,
        play_deleted,
        play_type_nfl,
        special_teams_play,
        special_teams_play_type,
        end_clock_time,
        end_yard_line,
        fixed_drive,
        fixed_drive_result,
        drive_real_start_time,
        drive_play_count,
        drive_time_of_possession,
        drive_first_downs,
        drive_inside20,
        drive_ended_with_score,
        drive_quarter_start,
        drive_quarter_end,
        drive_yards_penalized,
        drive_start_transition,
        drive_end_transition,
        drive_game_clock_start,
        drive_game_clock_end,
        drive_start_yard_line,
        drive_end_yard_line,
        drive_play_id_started,
        drive_play_id_ended,
        aborted_play,
        play_result_greater_than_epa,
        passer,
        passer_jersey_number,
        rusher,
        rusher_jersey_number,
        receiver,
        receiver_jersey_number,
        pass,
        rush,
        first_down,
        special,
        play,
        passer_id,
        rusher_id,
        receiver_id,
        out_of_bounds,
        home_opening_kickoff
    from pbp
)

select * from final