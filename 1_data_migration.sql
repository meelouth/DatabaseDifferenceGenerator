INSERT INTO sch_static.abilities (ability_id,name,description,comment,icon,target_property,target_type,target_additional,damage_koeff,damage_koeff_per_level,crit_chance,range,range_aoe,range_aoe_per_level,israngefilled,cooldown_ms,duration_ms,start_cooldown_ms,need_energy,isultimate,bullet_duration_ms,special_action,iscopyaoefx,parameters_int) VALUES (75,'новая','строка',NULL,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
UPDATE sch_static.abilities SET comment = 'Проводник, АОЕ ульта ТЕСТ' WHERE ability_id = 74
INSERT INTO sch_static.abilities (ability_id,name,description,comment,icon,target_property,target_type,target_additional,damage_koeff,damage_koeff_per_level,crit_chance,range,range_aoe,range_aoe_per_level,israngefilled,cooldown_ms,duration_ms,start_cooldown_ms,need_energy,isultimate,bullet_duration_ms,special_action,iscopyaoefx,parameters_int) VALUES (76,'Перезагрузка','Восстанавливает себе %HEAL% здоровья.','Проводник, лечение','AbilityIcon_Heal',7,1,0,-3,0.05,0,1500,0,0,false,8000,3000,4000,0,false,0,0,false,NULL)
INSERT INTO sch_static.ability_delete_effects_tagged (ability_id,delete_effect_tag) VALUES (21,1)
INSERT INTO sch_static.ability_delete_effects_tagged (ability_id,delete_effect_tag) VALUES (21,2)
INSERT INTO sch_static.ability_delete_effects_tagged (ability_id,delete_effect_tag) VALUES (62,3)
DELETE FROM sch_static.ability_delete_effects_tagged WHERE ability_id = 1 AND delete_effect_tag = 1
UPDATE sch_static.attributes SET icon = 'RoomAttributeIcon_labyrinth' WHERE attribute_id = 13
DELETE FROM sch_static.battles WHERE battle_id = 1026
DELETE FROM sch_static.battles WHERE battle_id = 1027
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,101,5,7,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,104,5,7,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,125,5,7,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,131,5,7,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,101,1,1,5,2)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,104,1,1,5,2)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,125,1,1,5,2)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (418,131,1,1,5,2)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,123,5,5,15,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,115,5,5,15,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,127,5,5,15,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,129,5,5,15,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,130,5,5,15,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,118,5,5,15,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (419,135,5,5,10,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (424,102,4,6,30,3)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (425,109,4,6,30,3)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (426,123,4,6,30,3)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,102,5,5,25,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,106,5,5,25,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,109,5,5,25,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,118,5,5,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,135,5,5,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,123,5,5,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,127,5,5,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (434,129,5,5,5,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (435,107,5,5,30,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (435,104,5,5,25,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (435,110,5,5,25,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (435,125,5,5,10,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (435,130,5,5,10,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (436,105,5,5,20,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (436,124,5,5,20,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (436,108,5,5,20,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (436,131,5,5,20,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (436,112,5,5,10,1)
INSERT INTO sch_static.chest_items (chest_id,item_id,min_count,max_count,chance,block) VALUES (436,115,5,5,10,1)
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 123 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 115 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 127 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 129 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 130 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 424 AND item_id = 102 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 425 AND item_id = 109 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 426 AND item_id = 123 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 123 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 115 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 127 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 129 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 130 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 424 AND item_id = 102 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 425 AND item_id = 109 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 426 AND item_id = 123 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 123 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 115 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 127 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 129 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 130 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 424 AND item_id = 102 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 425 AND item_id = 109 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 426 AND item_id = 123 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 123 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 115 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 127 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 129 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 130 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 424 AND item_id = 102 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 425 AND item_id = 109 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 426 AND item_id = 123 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 5 AND max_count = 7 AND chance = 10 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 101 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 418 AND item_id = 104 AND min_count = 1 AND max_count = 1 AND chance = 10 AND block = 2
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 123 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 115 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 127 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 129 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 419 AND item_id = 130 AND min_count = 5 AND max_count = 5 AND chance = 20 AND block = 1
DELETE FROM sch_static.chest_items WHERE chest_id = 424 AND item_id = 102 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 425 AND item_id = 109 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
DELETE FROM sch_static.chest_items WHERE chest_id = 426 AND item_id = 123 AND min_count = 1 AND max_count = 3 AND chance = 70 AND block = 3
INSERT INTO sch_static.chests (chest_id,banner_icon,banner_prefab) VALUES (434,NULL,'damage_box_Prf')
INSERT INTO sch_static.chests (chest_id,banner_icon,banner_prefab) VALUES (435,NULL,'tank_box_Prf')
INSERT INTO sch_static.chests (chest_id,banner_icon,banner_prefab) VALUES (436,NULL,'support_box_Prf')
UPDATE sch_static.items SET icon = 'ItemIcon_Equipment_ArmorField' WHERE item_id = 49
UPDATE sch_static.items SET is_visible = true WHERE item_id = 61
UPDATE sch_static.items SET is_visible = true WHERE item_id = 62
UPDATE sch_static.items SET is_visible = true WHERE item_id = 63
UPDATE sch_static.items SET is_visible = true WHERE item_id = 65
UPDATE sch_static.items SET is_visible = true WHERE item_id = 66
UPDATE sch_static.items SET is_visible = true WHERE item_id = 67
UPDATE sch_static.items SET is_visible = true WHERE item_id = 68
UPDATE sch_static.items SET is_visible = true WHERE item_id = 69
UPDATE sch_static.items SET is_visible = true WHERE item_id = 70
UPDATE sch_static.items SET is_visible = true WHERE item_id = 71
UPDATE sch_static.items SET is_visible = true WHERE item_id = 72
UPDATE sch_static.items SET is_visible = true WHERE item_id = 73
UPDATE sch_static.items SET name = 'Малый кристалл силового поля', is_visible = true WHERE item_id = 74
UPDATE sch_static.items SET name = 'Кристалл силового поля', is_visible = true WHERE item_id = 75
UPDATE sch_static.items SET is_visible = true WHERE item_id = 76
UPDATE sch_static.items SET is_visible = true WHERE item_id = 77
UPDATE sch_static.items SET is_visible = true WHERE item_id = 78
UPDATE sch_static.items SET is_visible = true WHERE item_id = 79
UPDATE sch_static.items SET is_visible = true WHERE item_id = 80
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (81,'Магазин','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','синий','ItemIcon_Equipment_Magazine',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (82,'Барабанный магазин','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_RoundMagazine',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (83,'Бинокль','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_Binoculars',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (84,'Видео-дрон','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_Dron',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (85,'Короб патрон','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_AmmoBox',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (86,'Эссенция','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','синий','ItemIcon_Equipment_Flask',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (87,'Ингалятор','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_Inhaler',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (88,'Автоматическая аптечка','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_CyberAidkit',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (89,'Укрепленный череп','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_ArmoredSkull',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (90,'Спинной имплант','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_SpineImplant',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (91,'Крепкие перчатки','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','синий','ItemIcon_Equipment_Gloves',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (92,'Керамическая броня','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_CeramicArmor',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (93,'Бронепластина','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_KevlarArmor',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (94,'Бронированные перчатки','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_ArmoredGloves',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (95,'Боевой шлем','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_BattleHelmet',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (96,'Усилитель рук','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','синий','ItemIcon_Equipment_HandImplant',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (97,'Расширение мозга','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','фиолетовый','ItemIcon_Equipment_BrainExtend',false,2,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (98,'Квантовый процессор','Предмет экипировки. Собирайте комплект, чтобы повышать ранг персонажей.','оранжевый','ItemIcon_Equipment_QuantumProcessor',false,2,0,false,NULL,NULL)
UPDATE sch_static.items SET icon = 'ItemIcon_Chip_Nyx' WHERE item_id = 114
UPDATE sch_static.items SET icon = 'ItemIcon_Chip_Cyclops' WHERE item_id = 118
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (135,'Стек Одиссея','Собирайте, чтобы повысить звёздность персонажа',NULL,'ItemIcon_Chip_Odysseus',true,4,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (136,'Стек Эвридики','Собирайте, чтобы повысить звёздность персонажа',NULL,'ItemIcon_Chip_Eurydice',true,4,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (137,'Стек Ники','Собирайте, чтобы повысить звёздность персонажа',NULL,'ItemIcon_Chip_Eurydice',true,4,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (304,'Фрагмент сканера местности','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_Scaner',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (305,'Фрагмент разрывных снарядов','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_ExplosionAmmo',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (306,'Фрагмент тепловизора','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_ThermVision',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (307,'Фрагмент оптического прицела','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_OpticalSight',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (308,'Фрагмент бронебойных патронов','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_ArmorPiercing',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (309,'Фрагмент системы самонаведения','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_AimSystem',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (310,'Фрагмент аптечки','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_FirstAid',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (311,'Фрагмент сыворотки','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_Serum',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (312,'Фрагмент кибер-сердца','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_CyberHeart',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (313,'Фрагмент защитных имплантов','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_DefImplants',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (314,'Фрагмент био-геля','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_BioGel',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (315,'Фрагмент адреналина','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_Adrenalin',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (316,'Фрагмент кевлара','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_KevlarCloth',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (317,'Фрагмент керамо-брони','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_CeramicCloth',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (318,'Фрагмент энергощита','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_EnergyShield',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (375,'Легендарный имплант атаки',NULL,'оранжевый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (319,'Фрагмент бронекостюма','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_ArmorSuit',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (320,'Фрагмент защитного поля','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_ArmorField',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (321,'Фрагмент тяжелой брони','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_HeavyArmor',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (322,'Фрагмент модуля реакции','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_ModuleReaction',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (323,'Фрагмент нанопроцессора','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_NanoProccesor',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (324,'Фрагмент сервопривода','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_ServoDrive',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (325,'Фрагмент мышечных имплатов','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_NanoImplant',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (326,'Фрагмент мозгового импланта','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_BrainImplant',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (327,'Фрагмент нейронного ускорителя','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_NeiroAccelerator',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (328,'Фрагмент очков дополненной реальности','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_ArGlasses',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (329,'Фрагмент шлема объемного зрения','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_VisionHelmet',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (330,'Фрагмент киберглаза','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_CyberGlass',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (331,'Фрагмент магазина','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_Magazine',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (332,'Фрагмент барабанного магазина','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_RoundMagazine',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (333,'Фрагмент бинокля','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_Binoculars',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (334,'Фрагмент видео-дрона','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_Dron',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (335,'Фрагмент короба патрон','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_AmmoBox',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (336,'Фрагмент стальных костей','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_BonesSteel',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (337,'Фрагмент титановых костей','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_BonesTitanium',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (338,'Фрагмент кристалических костей','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_BonesCrystal',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (339,'Фрагмент эссенции','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_Flask',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (340,'Фрагмент ингалятора','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_Inhaler',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (341,'Фрагмент автоматической аптечки','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_CyberAidkit',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (342,'Фрагмент укрепленного черепа','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_ArmoredSkull',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (343,'Фрагмент спинного импланта','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_SpineImplant',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (344,'Фрагмент большого генератора силового поля','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_LargeGenerator',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (345,'Фрагмент малого кристалла силового поля','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_FragmentCrystal',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (346,'Фрагмент кристалла силового поля','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_ForcefieldCrystal',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (347,'Фрагмент крепких перчаток','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','синий','ItemIcon_Equipment_Gloves',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (348,'Фрагмент керамической брони','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_CeramicArmor',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (349,'Фрагмент бронепластины','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','фиолетовый','ItemIcon_Equipment_KevlarArmor',false,1,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (350,'Фрагмент бронированных перчаток','Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.','оранжевый','ItemIcon_Equipment_ArmoredGloves',false,1,0,false,NULL,NULL)
UPDATE sch_static.items SET item_type = 1, name = 'Фрагмент боевого шлема', description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'оранжевый', icon = 'ItemIcon_Equipment_BattleHelmet' WHERE item_id = 351
UPDATE sch_static.items SET name = 'Фрагмент мобильных протезов', description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'фиолетовый', icon = 'ItemIcon_Equipment_Legs', item_type = 1 WHERE item_id = 353
UPDATE sch_static.items SET name = 'Фрагмент джамперов', description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'оранжевый', icon = 'ItemIcon_Equipment_Jumpers', item_type = 1 WHERE item_id = 354
UPDATE sch_static.items SET name = 'Фрагмент усилителя рук', description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'синий', icon = 'ItemIcon_Equipment_HandImplant', item_type = 1 WHERE item_id = 355
UPDATE sch_static.items SET item_type = 1, name = 'Фрагмент расширения мозга', description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'фиолетовый', icon = 'ItemIcon_Equipment_BrainExtend' WHERE item_id = 356
UPDATE sch_static.items SET description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'оранжевый', icon = 'ItemIcon_Equipment_QuantumProcessor', item_type = 1, name = 'Фрагмент квантового процессора' WHERE item_id = 357
UPDATE sch_static.items SET name = 'Обычный имплант здоровья' WHERE item_id = 362
UPDATE sch_static.items SET name = 'Продвинутый имплант здоровья' WHERE item_id = 363
UPDATE sch_static.items SET name = 'Экспертный имплант здоровья' WHERE item_id = 364
UPDATE sch_static.items SET name = 'Легендарный имплант здоровья' WHERE item_id = 365
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (366,'Малый имплант защиты',NULL,'белый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (367,'Обычный имплант защиты',NULL,'зеленый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (368,'Продвинутый имплант защиты',NULL,'синий',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (369,'Экспертный имплант защиты',NULL,'фиолетовый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (370,'Легендарный имплант здоровья',NULL,'оранжевый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (371,'Малый имплант атаки',NULL,'белый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (372,'Обычный имплант атаки',NULL,'зеленый',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (373,'Продвинутый имплант атаки',NULL,'синий',NULL,false,5,0,false,NULL,NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (374,'Экспертный имплант атаки',NULL,'фиолетовый',NULL,false,5,0,false,NULL,NULL)
UPDATE sch_static.items SET description = 'Содержит 5000 кредитов, 1500 энергии и 5 <sprite="SpriteTMPAtlas" name="ItemIcon_Equipment_MediumChip"/>' WHERE item_id = 413
UPDATE sch_static.items SET description = 'Содержит 15 кристаллов и 5 <sprite="SpriteTMPAtlas" name="ItemIcon_Equipment_MediumChip"/>' WHERE item_id = 414
UPDATE sch_static.items SET description = 'Содержит 50 кристаллов и 10 <sprite="SpriteTMPAtlas" name="ItemIcon_Equipment_MediumChip"/>' WHERE item_id = 415
UPDATE sch_static.items SET description = 'Содержит 3000 энергии и 3 <sprite="SpriteTMPAtlas" name="ItemIcon_Equipment_ExtendedChip"/>' WHERE item_id = 416
UPDATE sch_static.items SET is_visible = true WHERE item_id = 417
UPDATE sch_static.items SET is_visible = true WHERE item_id = 418
UPDATE sch_static.items SET is_visible = true WHERE item_id = 419
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (434,'Бокс "Атака"','Гарантировано содержит 5 стеков случайных персонажей',NULL,'ItemIcon_Chest_Human',true,3,0,true,'damage_box_Prf',NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (435,'Бокс "Защита"','Гарантировано содержит 5 стеков случайных персонажей',NULL,'ItemIcon_Chest_Human',true,3,0,true,'tank_box_Prf',NULL)
INSERT INTO sch_static.items (item_id,name,description,comment,icon,is_visible,item_type,plus_exp,is_chest,chest_prefab,parameters) VALUES (436,'Бокс "Лечение"','Гарантировано содержит 5 стеков случайных персонажей',NULL,'ItemIcon_Chest_Human',true,3,0,true,'support_box_Prf',NULL)
UPDATE sch_static.items SET name = 'Фрагмент кибер-ног', description = 'Фрагмент предмета экипировки. Собрав нужное количество фрагментов можно создать предмет.', comment = 'синий', icon = 'ItemIcon_Equipment_Implant Feet', item_type = 1 WHERE item_id = 352
UPDATE sch_static.items SET name = 'Малый имплант здоровья' WHERE item_id = 361
UPDATE sch_static.items SET name = 'L-коин', description = 'Открывает доступ в Лабиринт', icon = 'ItemIcon_Resource_Lcoin' WHERE item_id = 501
UPDATE sch_static.items SET name = 'L-жетон', description = 'Требуется для повышения L-звания персонажа. Можно получить в Лабиринте.', icon = 'ItemIcon_labyrinth_medal' WHERE item_id = 502
INSERT INTO sch_static.room_attributes (room_id,attribute_id) VALUES (10,13)
DELETE FROM sch_static.room_attributes WHERE room_id = 8 AND attribute_id = 13
DELETE FROM sch_static.room_attributes WHERE room_id = 8 AND attribute_id = 13
DELETE FROM sch_static.room_attributes WHERE room_id = 8 AND attribute_id = 13
DELETE FROM sch_static.room_attributes WHERE room_id = 8 AND attribute_id = 13
DELETE FROM sch_static.room_attributes WHERE room_id = 8 AND attribute_id = 13
INSERT INTO sch_static.room_buttons (room_id,button_name,button_icon,button_action) VALUES (10,'info','ButtonIcon_Info',1)
INSERT INTO sch_static.room_buttons (room_id,button_name,button_icon,button_action) VALUES (10,'lab','ButtonIcon_Lab',4)
UPDATE sch_static.room_level_attributes SET attribute_value = 600 WHERE room_id = 2 AND level = 2 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 4200 WHERE room_id = 2 AND level = 2 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 1200 WHERE room_id = 2 AND level = 3 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 9600 WHERE room_id = 2 AND level = 3 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 2400 WHERE room_id = 2 AND level = 4 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 21600 WHERE room_id = 2 AND level = 4 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 4800 WHERE room_id = 2 AND level = 5 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 48000 WHERE room_id = 2 AND level = 5 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 9600 WHERE room_id = 2 AND level = 6 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 105000 WHERE room_id = 2 AND level = 6 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 19200 WHERE room_id = 2 AND level = 7 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 230000 WHERE room_id = 2 AND level = 7 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 39000 WHERE room_id = 2 AND level = 8 AND attribute_id = 1
UPDATE sch_static.room_level_attributes SET attribute_value = 500000 WHERE room_id = 2 AND level = 8 AND attribute_id = 2
UPDATE sch_static.room_level_attributes SET attribute_value = 85000 WHERE room_id = 3 AND level = 3 AND attribute_id = 5
UPDATE sch_static.room_level_attributes SET attribute_value = 380000 WHERE room_id = 3 AND level = 5 AND attribute_id = 5
UPDATE sch_static.room_level_attributes SET attribute_value = 750000 WHERE room_id = 3 AND level = 6 AND attribute_id = 5
UPDATE sch_static.room_level_attributes SET attribute_value = 1500000 WHERE room_id = 3 AND level = 7 AND attribute_id = 5
INSERT INTO sch_static.room_level_attributes (room_id,level,attribute_id,attribute_value) VALUES (10,1,13,1)
INSERT INTO sch_static.room_level_attributes (room_id,level,attribute_id,attribute_value) VALUES (10,2,13,2)
INSERT INTO sch_static.room_level_attributes (room_id,level,attribute_id,attribute_value) VALUES (10,3,13,3)
INSERT INTO sch_static.room_level_attributes (room_id,level,attribute_id,attribute_value) VALUES (10,4,13,4)
INSERT INTO sch_static.room_level_attributes (room_id,level,attribute_id,attribute_value) VALUES (10,5,13,5)
INSERT INTO sch_static.room_level_attributes (room_id,level,attribute_id,attribute_value) VALUES (10,6,13,6)
INSERT INTO sch_static.room_levels (room_id,level,upgrade_item_id,upgrade_cost,upgrade_duration_sec,base_level_require) VALUES (10,1,1,1000,3600,3)
INSERT INTO sch_static.room_levels (room_id,level,upgrade_item_id,upgrade_cost,upgrade_duration_sec,base_level_require) VALUES (10,2,1,4500,5400,5)
INSERT INTO sch_static.room_levels (room_id,level,upgrade_item_id,upgrade_cost,upgrade_duration_sec,base_level_require) VALUES (10,3,1,15000,14400,5)
INSERT INTO sch_static.room_levels (room_id,level,upgrade_item_id,upgrade_cost,upgrade_duration_sec,base_level_require) VALUES (10,4,1,30000,28800,7)
INSERT INTO sch_static.room_levels (room_id,level,upgrade_item_id,upgrade_cost,upgrade_duration_sec,base_level_require) VALUES (10,5,1,220000,36000,7)
INSERT INTO sch_static.room_levels (room_id,level,upgrade_item_id,upgrade_cost,upgrade_duration_sec,base_level_require) VALUES (10,6,1,500000,54000,7)
UPDATE sch_static.room_levels SET upgrade_cost = 220000, upgrade_duration_sec = 36000, base_level_require = 6 WHERE room_id = 8 AND level = 1
UPDATE sch_static.rooms SET description = 'Фондовый рынок - основной источник дохода.



Улучшайте оборудование, чтобы зарабатывать больше кредитов.' WHERE room_id = 2
UPDATE sch_static.rooms SET description = 'Дата-центр хранит данные о счетах повстанцев.



Улучшайте отсек, чтобы иметь возможность хранить больше кредитов.' WHERE room_id = 3
UPDATE sch_static.rooms SET description = 'Здесь генерируется энергия, которая нужна для выполнения миссий.



Улучшайте мастерскую, чтобы быстрее производить энергию.' WHERE room_id = 4
UPDATE sch_static.rooms SET description = 'Хранилище для накопленной энергии.



Улучшайте склад, чтобы иметь возможность хранить больше энергии.' WHERE room_id = 5
UPDATE sch_static.rooms SET description = 'Постоянные тренировки и хорошие условия для отдыха - то, что нужно солдату.



Улучшайте отсек, чтобы повышать максимальный уровень персонажей.' WHERE room_id = 7
UPDATE sch_static.rooms SET parameters_int = '{1941964}' WHERE room_id = 9
INSERT INTO sch_static.rooms (room_id,name,description,prefab,select_sound,parameters_int) VALUES (10,'Лабиринт','Программа виртуальных соревнований, которые могут принести реальную прибыль. Вы готовы зайти в ЛАБИРИНТ'Labyrinth'',NULL,'{2015202}',?)
INSERT INTO sch_start.start_items (item_id,count) VALUES (7,23)
