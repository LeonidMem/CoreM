data modify storage corem:workbench Inventory set from block ~ ~ ~ Items
data remove storage corem:workbench Inventory[{Slot:2b}]
data remove storage corem:workbench Inventory[{Slot:3b}]
data remove storage corem:workbench Inventory[{Slot:4b}]
data remove storage corem:workbench Inventory[{Slot:11b}]
data remove storage corem:workbench Inventory[{Slot:12b}]
data remove storage corem:workbench Inventory[{Slot:13b}]
data remove storage corem:workbench Inventory[{Slot:20b}]
data remove storage corem:workbench Inventory[{Slot:21b}]
data remove storage corem:workbench Inventory[{Slot:22b}]
data remove storage corem:workbench Inventory[{tag:{Tags:[corem.clear]}}]
data remove storage corem:workbench Inventory[{tag:{Tags:[corem.workbench]}}]

execute if data storage corem:workbench Inventory[0] run data modify block ~ ~ ~ Items[{Slot:15b}] set value {Slot:15b,Count:0b} 
execute if data storage corem:workbench Inventory[0] run function corem:custom_wb/remove