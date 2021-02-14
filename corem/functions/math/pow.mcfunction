execute if score corem.num2 corem.math matches 0 run scoreboard players set corem.num corem.math 1
execute if score corem.num2 corem.math matches ..-1 run scoreboard players set corem.num corem.math 0
execute unless score corem.num2 corem.math matches 0 unless score corem.num2 corem.math matches ..-1 run function corem:math/pow/start

scoreboard players operation corem.num corem.math += corem.num1 corem.math
scoreboard players operation corem.num corem.math += corem.num2 corem.math