
-- FORMATION TYPE 1 (1,2) & 2 (3,4) WITH 5 YARDS DISTANCE

SET @CGUID := '88611';

DELETE FROM `creature_linking` WHERE `guid` IN (88546, 88558, 88547, 88548, 88557, 88545, 88608, 88607, 88378, 88379, 88634, 88633, 88879, 88878, 88877, 88876);
DELETE FROM `creature_movement` WHERE `id` IN (88546, 88558, 88547, 88548, 88557, 88545, 88608, 88607, 88378, 88379, 88634, 88633, 88879, 88878, 88877, 88876);
DELETE FROM `creature` WHERE `guid` IN (88546, 88558, 88547, 88548, 88557, 88545, 88608, 88607, 88378, 88379, 88634, 88633, 88879, 88878, 88877, 88876);

DELETE FROM `creature` WHERE `id` = '16453';
-- not the actual spawn positions
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CGUID + 00, '16453', '533', '0', '0', '3215.6711', '-3742.4246', '284.37460', '2.167236804962158203', '7200', '7200', '0', '0', '81744', '0', '0', '2'),
(@CGUID + 01, '16453', '533', '0', '0', '3215.6711', '-3742.4246', '284.37460', '2.175009489059448242', '7200', '7200', '0', '0', '81744', '0', '0', '0'),
(@CGUID + 02, '16453', '533', '0', '0', '3232.1443', '-3779.0760', '273.24118', '2.175732612609863281', '7200', '7200', '0', '0', '81744', '0', '0', '2'),
(@CGUID + 03, '16453', '533', '0', '0', '3232.1443', '-3779.0760', '273.24118', '2.121353149414062500', '7200', '7200', '0', '0', '81744', '0', '0', '0'),
(@CGUID + 04, '16453', '533', '0', '0', '3452.4333', '-3503.1145', '267.75732', '4.698267936706542968', '7200', '7200', '0', '0', '81744', '0', '0', '2'),
(@CGUID + 05, '16453', '533', '0', '0', '3452.4333', '-3503.1145', '267.75732', '4.740263938903808593', '7200', '7200', '0', '0', '81744', '0', '0', '0'),
(@CGUID + 06, '16453', '533', '0', '0', '3101.4229', '-3882.5283', '267.67370', '0.608579635620117187', '7200', '7200', '0', '0', '81744', '0', '0', '2'),
(@CGUID + 07, '16453', '533', '0', '0', '3101.4229', '-3882.5283', '267.67370', '6.273565769195556640', '7200', '7200', '0', '0', '81744', '0', '0', '0');

REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(@CGUID + 01, @CGUID + 00, '512'),
(@CGUID + 03, @CGUID + 02, '512'),
(@CGUID + 05, @CGUID + 04, '512'),
(@CGUID + 07, @CGUID + 06, '512');

DELETE FROM `creature_movement` WHERE `id` = @CGUID + 00;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID + 00, '01', '3241.5210', '-3729.0486', '282.17334', '100', '0', '0'),
(@CGUID + 00, '02', '3267.4778', '-3728.9995', '278.05600', '100', '0', '0'),
(@CGUID + 00, '03', '3277.6829', '-3719.3176', '275.90060', '100', '0', '0'),
(@CGUID + 00, '04', '3282.1890', '-3705.0168', '275.79770', '100', '0', '0'),
(@CGUID + 00, '05', '3267.0046', '-3690.6316', '284.24560', '100', '0', '0'),
(@CGUID + 00, '06', '3245.8625', '-3689.3060', '287.15730', '100', '0', '0'),
(@CGUID + 00, '07', '3239.2420', '-3679.5540', '287.15732', '100', '0', '0'),
(@CGUID + 00, '08', '3245.8625', '-3689.3060', '287.15730', '100', '0', '0'),
(@CGUID + 00, '09', '3267.0046', '-3690.6316', '284.24560', '100', '0', '0'),
(@CGUID + 00, '10', '3282.1890', '-3705.0168', '275.79770', '100', '0', '0'),
(@CGUID + 00, '11', '3277.6829', '-3719.3176', '275.90060', '100', '0', '0'),
(@CGUID + 00, '12', '3267.4778', '-3728.9995', '278.05600', '100', '0', '0'),
(@CGUID + 00, '13', '3241.5210', '-3729.0486', '282.17334', '100', '0', '0'),
(@CGUID + 00, '14', '3215.6711', '-3742.4246', '284.37460', '100', '0', '0');

DELETE FROM `creature_movement` WHERE `id` = @CGUID + 02;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID + 02, '01', '3247.6294', '-3762.8142', '277.63196', '100', '0', '0'),
(@CGUID + 02, '02', '3234.1243', '-3743.2805', '280.92886', '100', '0', '0'),
(@CGUID + 02, '03', '3234.6243', '-3733.4463', '282.62576', '100', '0', '0'),
(@CGUID + 02, '04', '3252.5193', '-3730.2170', '279.39290', '100', '0', '0'),
(@CGUID + 02, '05', '3276.2488', '-3724.2840', '275.98654', '100', '0', '0'),
(@CGUID + 02, '06', '3309.4165', '-3714.9426', '267.06088', '100', '0', '0'),
(@CGUID + 02, '07', '3322.0552', '-3700.5261', '262.90097', '100', '0', '0'),
(@CGUID + 02, '08', '3309.4165', '-3714.9426', '267.06088', '100', '0', '0'),
(@CGUID + 02, '09', '3276.2488', '-3724.2840', '275.98654', '100', '0', '0'),
(@CGUID + 02, '10', '3252.5193', '-3730.2170', '279.39290', '100', '0', '0'),
(@CGUID + 02, '11', '3234.6243', '-3733.4463', '282.62576', '100', '0', '0'),
(@CGUID + 02, '12', '3234.1243', '-3743.2805', '280.92886', '100', '0', '0'),
(@CGUID + 02, '13', '3247.6294', '-3762.8142', '277.63196', '100', '0', '0'),
(@CGUID + 02, '14', '3232.1443', '-3779.0760', '273.24118', '100', '0', '0');

DELETE FROM `creature_movement` WHERE `id` = @CGUID + 04;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID + 04, '01', '3453.1223', '-3529.5593', '267.75732', '100', '0', '0'),
(@CGUID + 04, '02', '3453.2656', '-3552.2012', '267.75732', '100', '0', '0'),
(@CGUID + 04, '03', '3454.1970', '-3587.7083', '267.75732', '100', '0', '0'),
(@CGUID + 04, '04', '3455.2537', '-3610.6710', '267.75732', '100', '0', '0'),
(@CGUID + 04, '05', '3454.8315', '-3640.5725', '277.77972', '100', '0', '0'),
(@CGUID + 04, '06', '3453.7493', '-3661.2031', '287.95734', '100', '0', '0'),
(@CGUID + 04, '07', '3453.6590', '-3676.1848', '294.75730', '100', '0', '0'),
(@CGUID + 04, '08', '3454.3225', '-3704.1150', '294.75730', '100', '0', '0'),
(@CGUID + 04, '09', '3455.2795', '-3738.2104', '294.81265', '100', '0', '0'),
(@CGUID + 04, '10', '3427.8977', '-3765.5933', '294.81262', '100', '0', '0'),
(@CGUID + 04, '11', '3398.6416', '-3797.9392', '294.81260', '100', '0', '0'),
(@CGUID + 04, '12', '3378.4610', '-3824.1611', '294.81260', '100', '0', '0'),
(@CGUID + 04, '13', '3352.7979', '-3847.0908', '294.81262', '100', '0', '0'),
(@CGUID + 04, '14', '3329.4238', '-3866.9275', '294.81260', '100', '0', '0'),
(@CGUID + 04, '15', '3310.5889', '-3882.4420', '294.81260', '100', '0', '0'),
(@CGUID + 04, '16', '3286.1067', '-3884.0474', '294.81260', '100', '0', '0'),
(@CGUID + 04, '17', '3254.2063', '-3882.5903', '294.81262', '100', '0', '0'),
(@CGUID + 04, '18', '3238.5818', '-3883.8481', '290.95718', '100', '0', '0'),
(@CGUID + 04, '19', '3214.1858', '-3886.1802', '279.33282', '100', '0', '0'),
(@CGUID + 04, '20', '3193.3157', '-3886.1730', '268.36680', '100', '0', '0'),
(@CGUID + 04, '21', '3146.7324', '-3884.1719', '267.67368', '100', '0', '0'),
(@CGUID + 04, '22', '3108.4084', '-3882.7260', '267.67370', '100', '0', '0'),
(@CGUID + 04, '23', '3071.7043', '-3881.8564', '267.67370', '100', '0', '0'),
(@CGUID + 04, '24', '3108.4084', '-3882.7260', '267.67370', '100', '0', '0'),
(@CGUID + 04, '25', '3146.7324', '-3884.1719', '267.67368', '100', '0', '0'),
(@CGUID + 04, '26', '3193.3157', '-3886.1730', '268.36680', '100', '0', '0'),
(@CGUID + 04, '27', '3214.1858', '-3886.1802', '279.33282', '100', '0', '0'),
(@CGUID + 04, '28', '3238.5818', '-3883.8481', '290.95718', '100', '0', '0'),
(@CGUID + 04, '29', '3254.2063', '-3882.5903', '294.81262', '100', '0', '0'),
(@CGUID + 04, '30', '3286.1067', '-3884.0474', '294.81260', '100', '0', '0'),
(@CGUID + 04, '31', '3310.5889', '-3882.4420', '294.81260', '100', '0', '0'),
(@CGUID + 04, '32', '3329.4238', '-3866.9275', '294.81260', '100', '0', '0'),
(@CGUID + 04, '33', '3352.7979', '-3847.0908', '294.81262', '100', '0', '0'),
(@CGUID + 04, '34', '3378.4610', '-3824.1611', '294.81260', '100', '0', '0'),
(@CGUID + 04, '35', '3398.6416', '-3797.9392', '294.81260', '100', '0', '0'),
(@CGUID + 04, '36', '3427.8977', '-3765.5933', '294.81262', '100', '0', '0'),
(@CGUID + 04, '37', '3455.2795', '-3738.2104', '294.81265', '100', '0', '0'),
(@CGUID + 04, '38', '3454.3225', '-3704.1150', '294.75730', '100', '0', '0'),
(@CGUID + 04, '39', '3453.6590', '-3676.1848', '294.75730', '100', '0', '0'),
(@CGUID + 04, '40', '3453.7493', '-3661.2031', '287.95734', '100', '0', '0'),
(@CGUID + 04, '41', '3454.8315', '-3640.5725', '277.77972', '100', '0', '0'),
(@CGUID + 04, '42', '3455.2517', '-3610.8145', '267.75732', '100', '0', '0'),
(@CGUID + 04, '43', '3454.1970', '-3587.7083', '267.75732', '100', '0', '0'),
(@CGUID + 04, '44', '3453.2656', '-3552.2012', '267.75732', '100', '0', '0'),
(@CGUID + 04, '45', '3453.1223', '-3529.5593', '267.75732', '100', '0', '0'),
(@CGUID + 04, '46', '3452.4333', '-3503.1145', '267.75732', '100', '0', '0');

DELETE FROM `creature_movement` WHERE `id` = @CGUID + 06;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(@CGUID + 06, '01', '3139.2644', '-3882.8923', '267.67368', '100', '0', '0'),
(@CGUID + 06, '02', '3159.8762', '-3882.9246', '267.67368', '100', '0', '0'),
(@CGUID + 06, '03', '3182.4036', '-3882.5222', '267.67368', '100', '0', '0'),
(@CGUID + 06, '04', '3190.8704', '-3882.3455', '267.67365', '100', '0', '0'),
(@CGUID + 06, '05', '3229.0715', '-3883.2083', '287.10690', '100', '0', '0'),
(@CGUID + 06, '06', '3246.9670', '-3883.3916', '294.81262', '100', '0', '0'),
(@CGUID + 06, '07', '3262.9163', '-3882.4055', '294.81262', '100', '0', '0'),
(@CGUID + 06, '08', '3286.7432', '-3881.8604', '294.81260', '100', '0', '0'),
(@CGUID + 06, '09', '3310.9111', '-3882.4114', '294.81260', '100', '0', '0'),
(@CGUID + 06, '10', '3323.9430', '-3869.6501', '294.81260', '100', '0', '0'),
(@CGUID + 06, '11', '3347.2690', '-3847.0440', '294.81262', '100', '0', '0'),
(@CGUID + 06, '12', '3364.0474', '-3830.0703', '294.81260', '100', '0', '0'),
(@CGUID + 06, '13', '3388.6830', '-3805.0803', '294.81260', '100', '0', '0'),
(@CGUID + 06, '14', '3418.2036', '-3775.1672', '294.81262', '100', '0', '0'),
(@CGUID + 06, '15', '3433.6143', '-3758.0999', '294.81262', '100', '0', '0'),
(@CGUID + 06, '16', '3453.6470', '-3741.4788', '294.81265', '100', '0', '0'),
(@CGUID + 06, '17', '3453.9595', '-3698.9922', '294.75730', '100', '0', '0'),
(@CGUID + 06, '18', '3453.6182', '-3672.7063', '293.21667', '100', '0', '0'),
(@CGUID + 06, '19', '3453.8013', '-3655.2227', '285.49940', '100', '0', '0'),
(@CGUID + 06, '20', '3454.5288', '-3630.6558', '272.55457', '100', '0', '0'),
(@CGUID + 06, '21', '3453.5227', '-3592.4970', '267.75732', '100', '0', '0'),
(@CGUID + 06, '22', '3453.7139', '-3547.9480', '267.75732', '100', '0', '0'),
(@CGUID + 06, '23', '3453.3760', '-3523.5132', '267.75732', '100', '0', '0'),
(@CGUID + 06, '24', '3453.3975', '-3502.9626', '267.75732', '100', '0', '0'),
(@CGUID + 06, '25', '3453.3760', '-3523.5132', '267.75732', '100', '0', '0'),
(@CGUID + 06, '26', '3453.7139', '-3547.9480', '267.75732', '100', '0', '0'),
(@CGUID + 06, '27', '3453.5227', '-3592.4970', '267.75732', '100', '0', '0'),
(@CGUID + 06, '28', '3454.5288', '-3630.6558', '272.55457', '100', '0', '0'),
(@CGUID + 06, '29', '3453.8013', '-3655.2227', '285.49940', '100', '0', '0'),
(@CGUID + 06, '30', '3453.6182', '-3672.7063', '293.21667', '100', '0', '0'),
(@CGUID + 06, '31', '3453.9595', '-3698.9922', '294.75730', '100', '0', '0'),
(@CGUID + 06, '32', '3453.6470', '-3741.4788', '294.81265', '100', '0', '0'),
(@CGUID + 06, '33', '3433.6143', '-3758.0999', '294.81262', '100', '0', '0'),
(@CGUID + 06, '34', '3418.2036', '-3775.1672', '294.81262', '100', '0', '0'),
(@CGUID + 06, '35', '3388.6830', '-3805.0803', '294.81260', '100', '0', '0'),
(@CGUID + 06, '36', '3364.0474', '-3830.0703', '294.81260', '100', '0', '0'),
(@CGUID + 06, '37', '3347.2690', '-3847.0440', '294.81262', '100', '0', '0'),
(@CGUID + 06, '38', '3323.9430', '-3869.6501', '294.81260', '100', '0', '0'),
(@CGUID + 06, '39', '3310.9111', '-3882.4114', '294.81260', '100', '0', '0'),
(@CGUID + 06, '40', '3286.7432', '-3881.8604', '294.81260', '100', '0', '0'),
(@CGUID + 06, '41', '3262.9163', '-3882.4055', '294.81262', '100', '0', '0'),
(@CGUID + 06, '42', '3246.9670', '-3883.3916', '294.81262', '100', '0', '0'),
(@CGUID + 06, '43', '3229.0715', '-3883.2083', '287.10690', '100', '0', '0'),
(@CGUID + 06, '44', '3190.8704', '-3882.3455', '267.67365', '100', '0', '0'),
(@CGUID + 06, '45', '3182.4036', '-3882.5222', '267.67368', '100', '0', '0'),
(@CGUID + 06, '46', '3159.8762', '-3882.9246', '267.67368', '100', '0', '0'),
(@CGUID + 06, '47', '3139.2644', '-3882.8923', '267.67368', '100', '0', '0'),
(@CGUID + 06, '48', '3101.4229', '-3882.5283', '267.67370', '100', '0', '0');