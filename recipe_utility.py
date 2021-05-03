class Item:
    
    def __init__(self, slot_id: int, id_: str, tag: str, amount: int):
        self.slot_id = slot_id
        self.id = id_
        self.tag = tag
        self.amount = amount
    
    class ItemBuilder:
        def __init__(self, slot_id: int):
            self.slot_id = 2 + slot_id % 3 + slot_id // 3 * 9
            self.id = "air"
            self.tag = "-"
            self.amount = 1

        def setID(self, id_: str):
            self.id = id_
            return self

        def setTag(self, tag: str):
            self.tag = tag
            return self

        def setAmount(self, amount: int):
            self.amount = amount
            return self

        def build(self):
            return Item(self.slot_id, self.id, self.tag, self.amount)

    @staticmethod
    def getBuilder(slot_id: int):
        return Item.ItemBuilder(slot_id)

    def __str__(self):
        out = '{Slot:' + str(self.slot_id) + 'b,id:"minecraft:' + self.id + '"'
        if self.tag != '-':
            out += ',tag:{' + self.tag + '}'
        out += '}'
        return out


while True:
    save = False
    file_name = ""
    items = []
    empty = []

    cmd = ""
    while cmd.upper() != "1" and cmd.upper() != "2":
        cmd = input("Save file or just paste code here? [1/2] ")
        if cmd.upper() == "1":
            save = True
            file_name = input("Enter file name (without '.mcfunction'): ")

    tag = input("Type unique tag (without '.check' and '.crafted'): ")

    for i in range(9):
        id_ = input(f"Type ID of item #{i + 1} (without 'minecraft:'): ")
            
        if id_ != "air":
            items.append(Item.getBuilder(i).setID(id_).setTag(input(f"Type tag of item #{i + 1}" + " (without 'tag:{}') (if there are not any tags, just type '-'): ")).build())
        else:
            empty.append(2 + i % 3 + i // 3 * 9)

    output_item = Item.getBuilder(0).setID(input(f"Type ID of output item (without 'minecraft:'): ")).setTag(input("Type tag of output item (without 'tag:{}') (don't forget about 'Tags:[corem.clear]'): ")).setAmount(input(f"Type amount of output item: ")).build()
    output_item.slot_id = 15
    
    barrel_items = '{Items:['

    for item in items:
        barrel_items += str(item) + ','

    barrel_items = barrel_items[:-1] + ']}'

    for slot_id in empty:
        barrel_items += ' unless data block ~ ~ ~ Items[{Slot:' + str(slot_id) + 'b}]'

    output = f'\n\n\nexecute if block ~ ~ ~ barrel{barrel_items} run tag @s add {tag}.check\n\n'
    output += 'execute if entity @s[tag=' + tag + '.check,scores={corem.workbench=0}] run data modify block ~ ~ ~ Items[{Slot:15b}] set value ' + str(output_item) + '\n'
    output += f'execute if entity @s[tag={tag}.check] run scoreboard players set @s corem.workbench 2\n\n'
    output += 'execute if entity @s[tag=' + tag + '.check] if data block ~ ~ ~ {Slot:15b,id:"minecraft:barrier"} run tag @s add ' + tag + '.crafted\n\n'
    output += 'execute if entity @s[tag=' + tag + '.crafted] run clear @a[distance=..6] ' + output_item.id + '{' + output_item.tag + '}\n'
    output += 'execute if entity @s[tag=' + tag + '.crafted] run give @p ' + output_item.id + ' ' + output_item.amount
    if output_item.tag != 'Tags:[corem.clear]':
        output += '{' + output_item.tag.replace('Tags:[corem.clear]', '').replace('corem.clear,', '') + '}'
    output += '\nexecute if entity @s[tag=' + tag + '.crafted] run function corem:custom_wb/count\n'
    output += 'execute if entity @s[tag=' + tag + '.crafted] run scoreboard players set @s corem.workbench 0\n\n'
    output += 'execute if entity @s[tag=!' + tag + '.check] if data block ~ ~ ~ Items[' + str(output_item) + '] run scoreboard players set @s corem.workbench 0\n\n'
    output += f'tag @s remove {tag}.crafted\n'
    output += f'tag @s remove {tag}.check'

    if save:
        f = open(f'{file_name}.mcfunction', 'w')
        f.write(output)
        f.close()
        print('\n\n\nDone!\n')
    else:
        print(output + '\n')
