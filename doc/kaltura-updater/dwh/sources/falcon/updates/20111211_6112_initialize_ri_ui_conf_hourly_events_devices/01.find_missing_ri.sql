INSERT IGNORE INTO kalturadw.dwh_dim_ui_conf (ui_conf_type_id, 
						partner_id, 
						subp_id, 
						created_at, 
						created_date_id,
						created_hour_id, 
						updated_at, 
						updated_date_id, 
						updated_hour_id,
						ui_conf_status_id, 
						ui_conf_id, 
						ri_ind)
			SELECT 	DISTINCT 	-1 ui_conf_type_id, 
						-1 partner_id, 
						-1 subp_id,
						"2099-01-01 00:00:00" created_at, 
						-1 created_date_id,
						-1 created_hour_id, 
						"2099-01-01 00:00:00" updated_at,
						-1 updated_date_id, 
						-1 updated_hour_id,
						-1 ui_conf_status_id, 
						ui_conf_id,
						1 ri_ind
			FROM kalturadw.dwh_hourly_events_devices;
