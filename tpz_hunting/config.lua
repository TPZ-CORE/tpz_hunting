
Config = {}

Config.Debug = true

Config.Keys = {
    ['G'] = 0x760A9C6F,["B"] = 0x4CC0E2FE,['S'] = 0xD27782E3,['W'] = 0x8FD015D8,['H'] = 0x24978A28,
    ['U'] = 0xD8F73058,["R"] = 0xE30CD707,["ENTER"] = 0xC7B5340A,['E'] = 0xCEFD9220,["J"] = 0xF3830D8E,
    ['F'] = 0xB2F377E8, ['C'] = 0x9959A6F0,
    ['L'] = 0x80F28E95, ['BACKSPACE'] = 0x156F7119,["DOWN"] = 0x05CA7C52,["UP"] = 0x6319DB71,["LEFT"] = 0xA65EBAB4,
    ["RIGHT"] = 0xDEB34313, ["SPACEBAR"] = 0xD9D0E1C0, ["DEL"] = 0x4AF4D473,
}

Config.Prompts  = { 
    ['SELL']  = { key = 'G', label = 'Sell' },
    ['STORE'] = { enabled = true, key = 'ENTER', label = 'Store' }, -- set @enabled to false if you don't the butcher to contain a store.
}

-----------------------------------------------------------
--[[ General ]]--
-----------------------------------------------------------

Config.tpz_leveling = true

-- NPC Rendering Distance which is deleting the npc when being away from the bank.
Config.NPCRenderingDistance = 30.0

-----------------------------------------------------------
--[[ Butcher Locations ]]--
-----------------------------------------------------------

Config.Locations = {
    
    ['valentine'] = {

        Coords = {x = -339.0141, y = 767.6358, z = 115.5645 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = -339.0141, y = 767.6358, z = 115.5645, h = 100.41 },
        },

        ActionDistance = 3.0,
    },

    ['rhodes'] = {

        Coords = { x = 1297.389, y = -1277.61, z = 74.877 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = 1297.389, y = -1277.61, z = 74.877, h = 156.73445129395 },
        },

        ActionDistance = 3.0,
    },

    
    ['strawberry'] = {

        Coords = { x = -1753.06, y = -392.826, z = 155.24 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = -1753.06, y = -392.826, z = 155.24, h = 189.38822937012 },
        },

        ActionDistance = 3.0,
    },

    ['blackwater'] = {

        Coords = { x = -753.033, y = -1284.86, z = 42.471 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = -753.033, y = -1284.86, z = 42.471, h = 274.577941894 },
        },

        ActionDistance = 3.0,
    },

    ['annesburg'] = {

        Coords = { x = 2934.325, y = 1301.286, z = 43.483 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = 2934.325, y = 1301.286, z = 43.483, h = 75.6289825439 },
        },

        ActionDistance = 3.0,
    },

    ['vanhorn'] = {

        Coords = { x = 2540.808, y = 802.3381, z = 75.378 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = 2540.808, y = 802.3381, z = 75.378, h = 176.213623046 },
        },

        ActionDistance = 3.0,
    },


    ['saintdenisport'] = {

        Coords = { x = 2819.538, y = -1331.21, z = 45.511 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = 2819.538, y = -1331.21, z = 45.511, h = 66.05968475341 },
        },

        ActionDistance = 3.0,
    },


    ['tumbleweed'] = {

        Coords = { x = -5509.94, y = -2947.15, z = -2.893 },

        BlipData = {
            Enabled = true,
            Title   = "Animals Butcher",
            Sprite  = -1665418949,
        },

        NPCData = {
            Enabled = true,
            Model = "S_M_M_UNIBUTCHERS_01",

            Coords = { x = -5509.94, y = -2947.15, z = -2.893, h = 261.7309570312 },
        },

        ActionDistance = 3.0,
    },

}
