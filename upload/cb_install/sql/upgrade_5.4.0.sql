DELETE FROM `{tbl_prefix}config` WHERE `name` IN (
	'cb_license'
	,'cb_license_local'
	,'use_ffmpeg_vf'
	,'buffer_time'
	,'server_friendly_conversion'
	,'cbhash'
	,'enable_troubleshooter'
	,'debug_level'
	,'sys_os'
	,'con_modules_type'
	,'version_type'
	,'version'
	,'user_comment_opt1'
	,'user_comment_opt2'
	,'user_comment_opt3'
	,'user_comment_opt4'
	,'ffmpeg_type'
	,'date_released'
	,'stream_via'
	,'use_watermark'
	,'hq_output'
	,'date_installed'
	,'date_updated'
	,'max_topic_length'
);

DROP TABLE `{tbl_prefix}modules`;

ALTER TABLE `{tbl_prefix}contacts` MODIFY COLUMN `contact_group_id` INT(255) NOT NULL DEFAULT '0';

ALTER TABLE `{tbl_prefix}ads_data`
    MODIFY COLUMN `last_viewed` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	DROP `ad_category`;
