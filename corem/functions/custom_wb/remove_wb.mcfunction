data merge entity @e[type=item,distance=..1,limit=1,nbt={Item:{id:"minecraft:barrel",Count:1b}}] {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{CustomModelData:324324,EntityTag:{id:"minecraft:bat",CustomName:'{"text":"MBench"}',CustomNameVisible:0,NoAI:1b,Health:1,Attributes:[{Name:"generic.maxHealth",Base:1}],Silent:1},display:{Name:"[{\"text\":\"Workbench\",\"italic\":false,\"color\":\"gold\"}]"}}}}
kill @e[type=item,distance=..1,nbt={Item:{tag:{Tags:[corem.clear]}}}]
tp @e[type=armor_stand,distance=..1,tag=corem.workbench.armor_stand] ~ -100 ~
kill @s