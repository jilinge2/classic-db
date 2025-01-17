
SET @PATH_ID := 469 * 10000 + 1;
SET @PATH_TYPE := 4;

SET @CREATURE_ID := 469 * 10000 + 1 * 3;
SET @GROUP_ID := 469 * 10000 + 1;

DELETE FROM `creature_movement` WHERE (`Id` = '139794');
DELETE FROM `creature` WHERE (`guid` IN ('139794', '139799', '139800'));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-7711.68945312500', '-1063.99194335937500', '445.171203613281250', '100', '0', '0'),
(@PATH_ID, '02', '-7695.09716796875', '-1052.92553710937500', '440.671264648437500', '100', '0', '0'),
(@PATH_ID, '03', '-7679.78027343750', '-1047.46069335937500', '440.208587646484375', '100', '0', '0'),
(@PATH_ID, '04', '-7683.86572265625', '-1038.30187988281250', '440.367401123046875', '100', '0', '0'),
(@PATH_ID, '05', '-7690.04101562500', '-1030.20959472656250', '440.377471923828125', '100', '0', '0'),
(@PATH_ID, '06', '-7696.85498046875', '-1024.05920410156250', '440.426452636718750', '100', '0', '0'),
(@PATH_ID, '07', '-7699.00976562500', '-1015.98352050781250', '440.365081787109375', '100', '0', '0'),
(@PATH_ID, '08', '-7704.31250000000', '-1004.79492187500000', '440.154266357421875', '100', '0', '0'),
(@PATH_ID, '09', '-7700.93505859375', '-1000.51702880859375', '440.162536621093750', '100', '0', '0'),
(@PATH_ID, '10', '-7698.79101562500', '-993.428833007812500', '440.125762939453125', '100', '0', '0'),
(@PATH_ID, '11', '-7691.95312500000', '-996.888671875000000', '440.180145263671875', '100', '0', '0'),
(@PATH_ID, '12', '-7682.15087890625', '-1002.88171386718750', '439.971649169921875', '100', '0', '0'),
(@PATH_ID, '13', '-7674.74902343750', '-1001.64111328125000', '440.219573974609375', '100', '0', '0'),
(@PATH_ID, '14', '-7674.31591796875', '-1009.23101806640625', '440.236511230468750', '100', '0', '0'),
(@PATH_ID, '15', '-7667.69775390625', '-1013.72528076171875', '440.256805419921875', '100', '0', '0'),
(@PATH_ID, '16', '-7663.98681640625', '-1021.78637695312500', '440.280029296875000', '100', '0', '0'),
(@PATH_ID, '17', '-7660.58447265625', '-1033.68029785156250', '440.164886474609375', '100', '0', '0'),
(@PATH_ID, '18', '-7672.19726562500', '-1040.58984375000000', '440.180938720703125', '100', '0', '0'),
(@PATH_ID, '19', '-7677.87841796875', '-1033.48034667968750', '439.970031738281250', '100', '0', '0'),
(@PATH_ID, '20', '-7682.59472656250', '-1022.21191406250000', '439.970428466796875', '100', '0', '0'),
(@PATH_ID, '21', '-7692.39160156250', '-1018.37371826171875', '440.261901855468750', '100', '0', '0'),
(@PATH_ID, '22', '-7700.76660156250', '-1021.95227050781250', '440.486572265625000', '100', '0', '0'),
(@PATH_ID, '23', '-7705.20849609375', '-1015.36822509765625', '440.432373046875000', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_ID + 0, '0', '469', '1', '0', '0', '-7711.18896484375', '-1061.2208251953125', '445.244049072265625', '0.0', '600', '600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 1, '0', '469', '1', '0', '0', '-7708.61962890625', '-1064.6988525390625', '445.259582519531250', '0.0', '600', '600', '0', '0', '1', '0', '0', '0'),
(@CREATURE_ID + 2, '0', '469', '1', '0', '0', '-7711.34130859375', '-1064.6536865234375', '445.259582519531250', '0.0', '600', '600', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_ID + 0, '12458'),
(@CREATURE_ID + 1, '12458'),
(@CREATURE_ID + 2, '12458');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blackwing Lair - Blackwing Taskmaster Patrol 001', '0', '0', '0', '1');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_ID + 0, '0'),
(@GROUP_ID, @CREATURE_ID + 1, '1'),
(@GROUP_ID, @CREATURE_ID + 2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '4', '4', '0', @PATH_ID, @PATH_TYPE, 'Blackwing Lair - Blackwing Taskmaster Patrol 001');
