
SET @PATH_ID := 533 * 10000 + 4;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 533 * 10000 + 4 * 3;
SET @GROUP_ID := 533 * 10000 + 4;

DELETE FROM `creature` WHERE (`guid` IN ('88795', '88796', '88797'));
DELETE FROM `creature_movement` WHERE (`Id` = '88795');

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '2894.091552734375', '-2985.539306640625', '267.7573242187500000', '100', '0', '0'),
(@PATH_ID, '02', '2857.651611328125', '-2985.763427734375', '267.7573242187500000', '100', '0', '0'),
(@PATH_ID, '03', '2838.583007812500', '-2985.468017578125', '264.1363830566406250', '100', '0', '0'),
(@PATH_ID, '04', '2806.801513671875', '-2985.781738281250', '248.5280456542968750', '100', '0', '0'),
(@PATH_ID, '05', '2778.591552734375', '-2985.795166015625', '240.5573272705078125', '100', '0', '0'),
(@PATH_ID, '06', '2753.272460937500', '-2986.195068359375', '240.5573120117187500', '100', '0', '0'),
(@PATH_ID, '07', '2704.170166015625', '-2985.057861328125', '240.5573425292968750', '100', '0', '0'),
(@PATH_ID, '08', '2680.982177734375', '-3003.037597656250', '240.5573425292968750', '100', '0', '0'),
(@PATH_ID, '09', '2649.092529296875', '-3032.515869140625', '240.6875305175781250', '100', '0', '0'),
(@PATH_ID, '10', '2619.247070312500', '-3061.765380859375', '240.6875610351562500', '100', '0', '0'),
(@PATH_ID, '11', '2596.782226562500', '-3084.143066406250', '240.9628448486328125', '100', '0', '0'),
(@PATH_ID, '12', '2570.247314453125', '-3111.786376953125', '240.6875457763671875', '100', '0', '0'),
(@PATH_ID, '13', '2553.954345703125', '-3131.364746093750', '240.6875457763671875', '100', '0', '0'),
(@PATH_ID, '14', '2556.140380859375', '-3179.359619140625', '240.6875610351562500', '100', '0', '0'),
(@PATH_ID, '15', '2554.573486328125', '-3224.922851562500', '242.7877502441406250', '100', '0', '0'),
(@PATH_ID, '16', '2555.261230468750', '-3243.888671875000', '252.8784484863281250', '100', '0', '0'),
(@PATH_ID, '17', '2556.263916015625', '-3258.990722656250', '260.7500610351562500', '100', '0', '0'),
(@PATH_ID, '18', '2556.699218750000', '-3278.864501953125', '267.7500000000000000', '100', '0', '0'),
(@PATH_ID, '19', '2556.457031250000', '-3322.006103515625', '267.7499694824218750', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '533', '1', '0', '0', '2894.091552734375', '-2985.539306640625', '267.7573242187500000', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '533', '1', '0', '0', '2899.091552734375', '-2990.539306640625', '267.7573242187500000', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '533', '1', '0', '0', '2889.091552734375', '-2980.539306640625', '267.7573242187500000', '0.0', '3600', '3600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '16451'),
(@CREATURE_ID + 1, '16452'),
(@CREATURE_ID + 2, '16452');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Naxxramas - Deathknight Vindicator (3) Patrol 004', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '2', '5', '0', @PATH_ID, @PATH_TYPE, 'Naxxramas - Deathknight Vindicator (3) Patrol 004');
