If you wish to create custom quests, read forth and learn. It's a bit tricky, but you can do it!

You will need to create at least two files in this folder: a JSON file that has the quest data, and a text file with
translation strings. More on the latter one later.

Your JSON file should look like this. Call it "myquests.json" or whatever you want (just make sure it ends in .json!)

{
    "quests": [

    ]
}

You're going to put your specific quests in the middle there, between the [ and ]. Make sure each quest is separated by
a comma!

An individual quest looks like this:

{
  "id": "letthemeatcake",
  "item": "minecraft:cake",
  "baseqty": 4,
  "multqty": 1.45,
  "rand": 0.25,
  "levelscale": 0.5,
  "baseprofit": 15,
  "command": "/give $player minecraft:diamond"
}

This is a lot, but again, some careful reading will prove useful. Here's what each line means:

id - This is a unique code that you assign to your quest. It shouldn't match any other quest. Hint: try taking the title
     of your quest (eg, "Let Them Eat Cake") and removing all the spaces and making it lower case (eg, letthemeatcake)

item - This is the specific item you want to ask for. If you don't know, try pressing F3 + H in Minecraft to enable
       advanced tool tips, and then look at the item you want to add. It will tell you there. If the item has metadata,
       you can add it at the end, like this: "minecraft:stone:2"

baseqty, multqty, levelscale - These all feed into the math of how many items the player is asked for at a time, and how
      quickly that number grows. The math used looks something like this:

let n              = completed orders x levelscale
let qty at level n = baseqty x multqty^n

      If that doesn't make sense, or you don't care, feel free to use the numbers in the above snippet, and tweak to
      satisfaction.

rand - This specifies how much randomness to apply to the final work order value. A value of 0.25, for example, means a
       randomness of +/- 25%. This should not go below zero, or above 1.

baseprofit - The amount of money that a single item is worth in this work order at level 0. This value grows by 10% for
             each completed level.

command - If you want to execute some custom behaviour when a work order is completed, put the command here and it will
          automatically run. If you need to reference the player, put $player in, and it will be replaced with the
          owner's username (@p and the like will not work correctly, since commands run in the context of the server
          itself. This is to ensure commands can have the permissions they need). Finally, note that commands can only
          be run if the player is online at the time.

Now that you have your quest, it's time to plop it in to the JSON file we saw above.

{
    "quests": [

        {
          "id": "letthemeatcake",
          "item": "minecraft:cake",
          "baseqty": 4,
          "multqty": 1.45,
          "rand": 0.25,
          "levelscale": 0.5,
          "baseprofit": 15
        },
        {
          "id": "dirtfordays",
          "item": "minecraft:dirt",
          "baseqty": 4,
          "multqty": 1.45,
          "rand": 0.25,
          "levelscale": 0.5,
          "baseprofit": 15
        }
    ]
}

I added a second quest in there so you can see what it looks like.

Ok, now you need to make the language file. Assuming you use English primarily, call this file en_us.lang. If you want
to translate it into another language, name it similarly (eg, fr_ca.lang for Canadian French). This one is a lot easier,
and should look like this:

letthemeatcake.title=Let Them Eat Cake
letthemeatcake.desc=Insert a clever description here

Basically, just put the id of the quest you made above on both lines, and put the actual text in you want. Every quest
you make should go into the same language file on separate lines, even if you split your quests into multiple files.

For bigger examples, check inside the MegaCorp .jar file (it's actually a ZIP file, so you can open it with 7-Zip or
your favourite program), and look in the assets/megacorp/quests folder.

If you're having trouble, come swing by the Discord, where we can help you out!

https://discord.gg/JvjaWtu
