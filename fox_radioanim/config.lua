Config = {}

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

-- [componentId][drawableId][variationId] = "animationType"
Config.RadioClothing = {
    [9] = { -- Bulletproof vest / Gilet pare-balles
        [14] = {
            [0] = "shoulder",
            [1] = "chest",
            [2] = "chest"
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
    [5] = { -- Sac
        [66] = {
            [0] = "shoulder",
            [1] = "chest",
            [2] = "chest"
        },
    },
}

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