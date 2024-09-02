# Better tprint
Do you want to print your table but you are tired of the `tprint()` function and how it is junky as hell?  
I mean look at this: suppose you have this table
```lua
local POKEMON = {
    Types = {
        [1] = 'Grass',
        [2] = 'Poison'
    },
    Level = 5,
    HP = {
        Max = 15,
        Current = 15
    },
    EvolvesTo = {
        [1] = {
            Name = 'Ivysaur',
            LevelRequired = 16,
            TradeRequired = false,
            ItemRequired = false
        }
    },
}
```
and you want it printed on the console. If you use the vanilla `tprint(POKEMON)`, the result is this
```lua
{
  EvolvesTo= table: 0x63c208e64860   {
     [1] = table: 0x63c208e648a0      {
        TradeRequired= "false",
        ItemRequired= "false",
        LevelRequired= 16,
        Name= "Ivysaur",
      },
   },
  Level= 5,
  Types= table: 0x63c208e64760   {
     [1] = "Grass",
     [2] = "Poison",
   },
  HP= table: 0x63c208e647e0   {
     Max= 15,
     Current= 15,
   },
}
```
but if you use the **Better tprint** function, the result looks like this:
```lua
{
  Types = {
     [1] = "Grass",
     [2] = "Poison",
   },
  Level = 5,
  HP = {
     Max = 15,
     Current = 15,
   },
  EvolvesTo = {
     [1] = {
        Name = "Ivysaur",
        LevelRequired = 16,
        ItemRequired = false,
        TradeRequired = false,
      },
   },
}
```
The **Better tprint** is designed to handle:
- tables,
- numbers,
- strings,
- booleans,
- functions
  
in a nice clean way so that you can tell them apart from each other.  
## How to use
Download this mod and put it into your *Mods* folder, then you can use `tprint(element)` like you did before and it will show the improved result.  
You are not limited to passing a table inside the function, it can print all types of variable that lua supports.
