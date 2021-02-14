scoreboard players remove corem.temp corem.math 1

scoreboard players operation corem.num corem.math *= corem.num2 corem.math

execute if score corem.temp matches 1.. run function corem:math/pow/loop