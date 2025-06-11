Hi, Welcome on my first script.
This script is really simple :

- It allow you to customize radio effect when you speak on it with a custom "cloth'.

Sometimes, when player speak at a radio, a simple animation start, like speaking at the radio prop, but like for police officer, he already got a radio on her chest, or her shoulder
so why don't exploit this ??

This script simply allow you to select which animation you want to use in different situation (chest, shoulder, earpice) depending your animation script and wich cloth is impacted (tshirt, bag, body armor...).

In plus, you can customise animation by variation of the cloth (EUP for exemple, use different radio localisation in one cloth, but 4 variants, so it's easier to configure :D !)

If you have any question, don't esitate to DM me on Discord : SleepingFox25 (Discord coming soon ;) )

# =====================================
Explaination of how work the config.lua
# =====================================
You can add, remove, or modify every animations in this section :

Config.Animations = {
    ["shoulder"] = { 
        dict = "random@arrests",
        anim = "generic_radio_chatter"
    },
    ["chest"] = {
        dict = "anim@cop_mic_pose_002",
        anim = "chest_mic"
    },
    ["ear"] = {
        dict = "cellphone@",
        anim = "cellphone_call_listen_base"
    }
}

Here, you can set cloth by sex, cloth ID, cloth Number and her variation :
(Default set for last EUP) - You Can add many as you want !

Simple explication : 
-- [componentId] (https://wiki.rage.mp/wiki/Clothes)
    -- [drawableId]
        --[variationId] = "animationType"

Exemple code :


Config.RadioClothing = {
    male = {
        [9] = { -- Bulletproof vest / Gilet pare-balles
            [14] = { -- ID Cloth
                [0] = "shoulder",  -- Variation
                [1] = "chest",     -- Variation
                [2] = "chest"      -- Variation
            },
            [13] = {
                [0] = "shoulder",
                [1] = "chest",
                [2] = "chest"
            },
            [12] = {
                [2] = "shoulder"
            }
        },
        [8] = { -- T-Shirt
            [7] = {
                [0] = "shoulder"
            }
        },
        [1] = { -- Mask / Masque
            [16] = {
                [0] = "ear"
            }
        },
        [5] = { -- Bag / Sac
            [66] = {
                [0] = "shoulder",
                [1] = "chest",
                [2] = "chest"
            },
        },
    },
    female = {
        [9] = {
            [6] = {
                [0] = "shoulder"
            }
        },
        [8] = {
            [7] = {
                [1] = "chest"
            }
        }
    }
}
