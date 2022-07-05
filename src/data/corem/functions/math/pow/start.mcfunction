scoreboard players set corem.num corem.math 0
scoreboard players set corem.temp corem.math 0

scoreboard players operation corem.num corem.math += corem.num1 corem.math
scoreboard players operation corem.temp corem.math += corem.num2 corem.math

function corem:math/pow/loop