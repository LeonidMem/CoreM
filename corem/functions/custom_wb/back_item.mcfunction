summon item ~ ~ ~ {Item:{id:stone,Count:1},Tags:[NoId]}
data modify entity @e[type=item,distance=..1,tag=NoId,limit=1] Item set from block ~ ~-1 ~ Items[0]
tag @e[type=item,distance=..1,tag=NoId,limit=1] remove NoId
data remove block ~ ~-1 ~ Items[0]