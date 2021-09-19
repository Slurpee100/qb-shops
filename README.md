# qb-shops
Shops For QB-Core

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>


Add to shared.lua

```
["slurpee"] 			         = {["name"] = "slurpee", 				    ["label"] = "Slurpee",                ["weight"] = 3500,       ["type"] = "item",      ["image"] = "slurpee2.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Slurpee"},
["dorito_chips"] 			         = {["name"] = "dorito_chips", 				    ["label"] = "Doritos",                ["weight"] = 3500,       ["type"] = "item",      ["image"] = "dorito_chips.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Dortios"},
["2litercoke"] 			         = {["name"] = "2litercoke", 				    ["label"] = "2 Liter Coke",                ["weight"] = 3500,       ["type"] = "item",      ["image"] = "2litercoke.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "2 Liter Coke"},
["sprite"] 			         = {["name"] = "sprite", 				    ["label"] = "Sprite",                ["weight"] = 3500,       ["type"] = "item",      ["image"] = "sprite.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sprite"},
["donut"] 			         = {["name"] = "donut", 				    ["label"] = "Donut",                ["weight"] = 3500,       ["type"] = "item",      ["image"] = "donut.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Donut"},
```

THIS EDIT OF QB-SHOPS USE QB-TARGET https://github.com/BerkieBb/qb-target
Add to qb-target config.targetmodels

```
["slushy"] = {
        models = {
            `prop_juice_dispenser`
        },
        options = {
            {
                type = "server",
                event = "Slurpee:Getitem",
                icon = "fas fa-filter",
                label = "Pour A Slurpee.",
            },
        },
        distance = 2.5
    },
    ["chips"] = {
        models = {
            `v_ret_247shelves03`
        },
        options = {
            {
                type = "server",
                event = "Chip:Getitem",
                icon = "fas fa-shopping-bag",
                label = "Buy Some Doritos.",
            },
        },
        distance = 2.5
    },
    ["coke"] = {
        models = {
            `v_ret_247shelves02`
        },
        options = {
            {
                type = "server",
                event = "Coke:Getitem",
                icon = "fas fa-shopping-bag",
                label = "Buy Some Coke.",
            },
			{
                type = "server",
                event = "SmallCoke:Getitem",
                icon = "fas fa-shopping-bag",
                label = "Buy Some Small Coke.",
            },
			{
                type = "server",
                event = "Sprite:Getitem",
                icon = "fas fa-shopping-bag",
                label = "Buy Some Small Sprite.",
            },
        },
        distance = 2.5
    },
    ["donuts"] = {
        models = {
            `v_ret_247_donuts`
        },
        options = {
            {
                type = "server",
                event = "Donut:Getitem",
                icon = "fas fa-shopping-bag",
                label = "Buy Some Donuts.",
            },
        },
        distance = 2.5
    },
```
