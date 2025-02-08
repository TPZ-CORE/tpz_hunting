

-----------------------------------------------------------
--[[ Skinnables Animals ]]--
-----------------------------------------------------------

-- @param name : the name of the animal.
-- @param givenItem : The rewards for each animal based on the given table (Must always ensure givenItem and givenAmount have the same length).

-- @param givenAmount : The quantity of the givenItem rewards based on the given table (Must always ensure givenAmount and givenItem has the same length).
-- givenAmount = {0} will set an amount to random amount between ItemQuantity Max/Min
-- givenAmount = { {2,5} } will set an amount to random between the first and second numbers in the supplied table, for the corresponding givenItem.
-- If you are giving 1 meat and 1 feathers, the length of the givenAmount must be (2), for example {1, 1} which will give 1 meat and 1 feather.

Config.SkinnableAnimals = {
    [-1124266369]  = { name = "Bear",                    givenItem = { "heart_bear" },         givenAmount = { 1 },         experience = 30 },
    [730092646]    = { name = "American Black Bear",     givenItem = { "heart_bear" },         givenAmount = { 1 },         experience = 30 },

    -- Meat
    [-466054788]   = { name = "Wild Turkey",             givenItem = { "meat", "feathers" },  givenAmount = { 1, {1, 3} }, experience = 15 },
    [-2011226991]  = { name = "Wild Turkey",             givenItem = { "meat", "feathers" },  givenAmount = { 1, {1, 3} }, experience = 15 },
    [-166054593]   = { name = "Wild Turkey",             givenItem = { "meat", "feathers" },  givenAmount = { 1, {1, 3} }, experience = 15 },
    [-1003616053]  = { name = "Duck",                    givenItem = { "meat", "feathers" },  givenAmount = { 1, {1, 3} }, experience = 10 },

    [2023522846]   = { name = "Dominique Rooster",       givenItem = { "meat" },              givenAmount = { 1 },         experience = 10 },
    [723190474]    = { name = "Canada Goose",            givenItem = { "meat", "feathers"},   givenAmount = { 1, {1, 3} }, experience = 10 },
    [-407730502]   = { name = "Snapping Turtle",         givenItem = { "meat" },              givenAmount = { 1 },         experience = 10 },

    -- Pelt
    [1110710183]   = { name = "Deer",                    givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },
    [-15687816381] = { name = "Big Horn Ram",            givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },
    [2028722809]   = { name = "Boar",                    givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },
    [-1963605336]  = { name = "Buck",                    givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },
    [1556473961]   = { name = "Bison",                   givenItem = { "pelt", "bison_meat" },givenAmount = { 1, {1, 3} }, experience = 20 },
    [-2021043433]  = { name = "Elk",                     givenItem = { "pelt", "biggame" },   givenAmount = { 1, {1, 2} }, experience = 20 },
   
    [252669332]    = { name = "American Red Fox",        givenItem = { "pelt"},               givenAmount = { 1 },         experience = 15 },
    [-1143398950]  = { name = "Big Grey Wolf",           givenItem = { "pelt" },              givenAmount = { 1 },         experience = 25 },
    [-885451903]   = { name = "Medium Grey Wolf",        givenItem = { "heart_wolf", "pelt" }, givenAmount = { 1, 1 },      experience = 25 },
    [-829273561]   = { name = "Small Grey Wolf",         givenItem = { "heart_wolf", "pelt" }, givenAmount = { 1, 1 },      experience = 25 },
    [1755643085]   = { name = "American Pronghorn Doe",  givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },
    [1654513481]   = { name = "Panther",                 givenItem = { "pelt" },              givenAmount = { 1 },         experience = 40 },
    [90264823]     = { name = "Cougar",                  givenItem = { "pelt" },              givenAmount = { 1 },         experience = 40 },
    [480688259]    = { name = "Coyote",                  givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },
    [457416415]    = { name = "Gila Monster",            givenItem = { "pelt" },              givenAmount = { 1 },         experience = 15 },

    [-1098441944]  = { name = "Moose",                   givenItem = { "pelt" },              givenAmount = { 1 },         experience = 10 },
    [-1892280447]  = { name = "Alligator Small",         givenItem = { "biggame" },           givenAmount = { 1 },         experience = 15 },
    [-2004866590]  = { name = "Alligator",               givenItem = { "biggame" },           givenAmount = { {1, 3} },    experience = 20 },

    -- Fur
    [989669666]    = { name = "Rat",                     givenItem = { "fur" }, givenAmount = { 1 }, experience = 10 },
    [1458540991]   = { name = "North American Racoon",   givenItem = { "fur" }, givenAmount = { 1 }, experience = 10 },
    [-541762431]   = { name = "Black-Tailed Jackrabbit", givenItem = { "fur" }, givenAmount = { 1 }, experience = 10 },
    [-1414989025]  = { name = "Wirginia Possum",         givenItem = { "fur" }, givenAmount = { 1 }, experience = 10 },
    [-1854059305]  = { name = "Green Iguana",            givenItem = { "fur" }, givenAmount = { 1 }, experience = 10  },
    [-593056309]   = { name = "Desert Iguana",           givenItem = { "fur" }, givenAmount = { 1 }, experience = 10 },
    [-1134449699]  = { name = "American Muskrat",        givenItem = { "fur" }, givenAmount = { 1 }, experience = 10  },
    [759906147]    = { name = "North American Beaver",   givenItem = { "fur" }, givenAmount = { 1 }, experience = 10  },

    -- Snakes
    [-229688157]   = { name = "Water Snake",             givenItem = { "snake_skin", "snake_poison" }, givenAmount = { 1, 1 }, experience = 5 },
    [-1790499186]  = { name = "Snake Red Boa",           givenItem = { "snake_skin", "snake_poison" }, givenAmount = { 1, 1 }, experience = 5 },
    [1464167925]   = { name = "Snake Fer-De-Lance",      givenItem = { "snake_skin", "snake_poison" }, givenAmount = { 1, 1 }, experience = 5 },
    [846659001]    = { name = "Black-Tailed Rattlesnake",givenItem = { "snake_skin", "snake_poison" }, givenAmount = { 1, 1 }, experience = 5 },
    [545068538]    = { name = "Western Rattlesnake",     givenItem = { "snake_skin", "snake_poison" }, givenAmount = { 1, 1 }, experience = 5 },

    -- Feathers
    [1104697660]   = { name = "Vulture",                  givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [1459778951]   = { name = "Eagle",                    givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [831859211]    = { name = "Egret",                    givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-164963696]   = { name = "Herring Seagull",          givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-1076508705]  = { name = "Roseate Spoonbill",        givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-466687768]   = { name = "Red-Footed Booby",         givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-575340245]   = { name = "Wester Raven",             givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [1416324601]   = { name = "Ring-Necked Pheasant",     givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [1265966684]   = { name = "American White Pelican",   givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-1797450568]  = { name = "Blue And Yellow Macaw",    givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [1205982615]   = { name = "Californian Condor",       givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-2073130256]  = { name = "Double-Crested Cormorant", givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-2145890973]  = { name = "Ferruinous Hawk",          givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [1095117488]   = { name = "Great Blue Heron",         givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-564099192]   = { name = "Whooping Crane",           givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [-861544272]   = { name = "Great Horned Owl",         givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
    [386506078]    = { name = "Common Loon",              givenItem = { "feathers" }, givenAmount = { {1, 3} }, experience = 10 },
   

}

-- Animals that are traded in to the butcher
Config.Animals = {
    -- Animals
    [-1124266369]  = { name = "Bear",                         givenItem = { "meat" },                              givenAmount = { {2,6} },   dollars = 2.0,  experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 957520252, [2] = 143941906, [3] = 1292673537 } },
    [-15687816381] = { name = "Big Horn Ram",                 givenItem = { "meat" },                              givenAmount = { {2,5} },   dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1796037447, [2] = -476045512, [3] = 1795984405 } },
    [2028722809]   = { name = "Boar",                         givenItem = { "meat" },                              givenAmount = { {2,3} },   dollars = 0.45, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1248540072, [2] = nil, [3] = -1858513856 } },
    
    [1556473961]   = { name = "Bison",                        givenItem = { "bison_meat" },                        givenAmount = { {1, 2} },  dollars = 0.45, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -1730060063, [2] = -591117838, [3] = -237756948 } },

    [-1963605336]  = { name = "Buck",                         givenItem = { "meat" },                              givenAmount = { {2,3} },   dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1603936352, [2] = -868657362, [3] = -702790226 } },
    [1110710183]   = { name = "Deer",                         givenItem = { "meat" },                          givenAmount = { {1,2} },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -662178186, [2] = -1827027577, [3] = -1035515486 } },
    [-2021043433]  = { name = "Elk",                          givenItem = { "biggame" },                           givenAmount = { {1,2} },   dollars = 0.45, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 2053771712, [2] = 1181652728, [3] = -1332163079 } },
   
    [252669332]    = { name = "American Red Fox",             givenItem = { "meat", "fibers" },  givenAmount = { 1, {1, 3} },                 dollars = 0.40, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1647012424, [2] = 238733925, [3] = 500722008 } },
    [-1143398950]  = { name = "Big Grey Wolf",                givenItem = { "meat", "fibers" },  givenAmount = { 1, {1, 3} },                 dollars = 0.40, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 85441452, [2] = 1145777975, [3] = 653400939 } },
    [-885451903]   = { name = "Medium Grey Wolf",             givenItem = { "meat", "fibers" },  givenAmount = { 1, {1, 3} },                 dollars = 0.40, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 85441452, [2] = 1145777975, [3] = 653400939 } },
    [-829273561]   = { name = "Small Grey Wolf",              givenItem = { "meat", "fibers" },  givenAmount = { 1, {1, 3} },                 dollars = 0.40, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 85441452, [2] = 1145777975, [3] = 653400939 } },
  

    [-407730502]   = { name = "Snapping Turtle",              givenItem = { "meat" },                              givenAmount = { 0 },       dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
   
    [1104697660]   = { name = "Vulture",                      givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-1003616053]  = { name = "Duck",                         givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1459778951]   = { name = "Eagle",                        givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [831859211]    = { name = "Egret",                        givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-466054788]   = { name = "Wild Turkey",                  givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-2011226991]  = { name = "Wild Turkey",                  givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-166054593]   = { name = "Wild Turkey",                  givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-164963696]   = { name = "Herring Seagull",              givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-1076508705]  = { name = "Roseate Spoonbill",            givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [2023522846]   = { name = "Dominique Rooster",            givenItem = { "meat" },                              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-466687768]   = { name = "Red-Footed Booby",             givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-575340245]   = { name = "Wester Raven",                 givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    
    [1416324601]   = { name = "Ring-Necked Pheasant",         givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1265966684]   = { name = "American White Pelican",       givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-1797450568]  = { name = "Blue And Yellow Macaw",        givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1205982615]   = { name = "Californian Condor",           givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
   
    [-2073130256]  = { name = "Double-Crested Cormorant",     givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    
    [723190474]    = { name = "Canada Goose",                 givenItem = { "meat" },                              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-2145890973]  = { name = "Ferruinous Hawk",              givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1095117488]   = { name = "Great Blue Heron",             givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-564099192]   = { name = "Whooping Crane",               givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-861544272]   = { name = "Great Horned Owl",             givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [386506078]    = { name = "Common Loon",                  givenItem = { "birdmeat" },                          givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },

    [-229688157]   = { name = "Water Snake",                  givenItem = { "snake_skin" },                         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-1790499186]  = { name = "Snake Red Boa",                givenItem = { "snake_skin" },                         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1464167925]   = { name = "Snake Fer-De-Lance",           givenItem = { "snake_skin" },                         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [846659001]    = { name = "Black-Tailed Rattlesnake",     givenItem = { "snake_skin" },                         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [545068538]    = { name = "Western Rattlesnake",          givenItem = { "snake_skin" },                         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-1211566332]  = { name = "Striped Skunk",                givenItem = { "leather" },                            givenAmount = { 0 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    
    --[40345436]     = { name = "Merino Sheep", givenItem = { "wool" }, givenAmount = { 0 }, money = 0.075, xp = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1729948479, [2] = -1317365569, [3] = 1466150167 },
   
    [1458540991]   = { name = "North American Racoon",        givenItem = { "meat", "fibers" },  givenAmount = { 1, {1, 3} },                 dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-541762431]   = { name = "Black-Tailed Jackrabbit",      givenItem = { "meat", "fibers" },  givenAmount = { 1, {1, 3} },                 dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1755643085]   = { name = "American Pronghorn Doe",       givenItem = { "meat" },                              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -983605026, [2] = 554578289, [3] = -1544126829 } },

    [-1414989025]  = { name = "Wirginia Possum",              givenItem = { "meat" },                              givenAmount = { 0 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
   
    -- [1007418994]   = { name = "Berkshire Pig", givenItem = { "meat" }, givenAmount = { 0 }, money = 0.30, xp = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -308965548, [2] = -57190831, [3] = -1102272634 },
   
    [1654513481]   = { name = "Panther",                      givenItem = { "meat", "fibers"},   givenAmount = { {1, 3}, {1, 2}  },           dollars = 1.0, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1584468323, [2] = -395646254, [3] = 1969175294 } },
    [90264823]     = { name = "Cougar",                       givenItem = { "meat", "fibers"},   givenAmount = { {1, 3}, {1, 2}  },           dollars = 1.0, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1914602340, [2] = 459744337, [3] = -1791452194 } },
   
    [480688259]    = { name = "Coyote",                       givenItem = { "meat" },                              givenAmount = { {1, 3} },  dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -1558096473, [2] = 1150939141, [3] = -794277189 } },
    [457416415]    = { name = "Gila Monster",                 givenItem = { "meat" },                              givenAmount = { {1, 3} },  dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
   
    [-1854059305]  = { name = "Green Iguana",                 givenItem = { "meat" },                              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-593056309]   = { name = "Desert Iguana",                givenItem = { "meat" },                              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
  
    -- [1751700893]   = { name = "Peccary Pig",               givenItem = { "meat" },                              givenAmount = { 0 },       money = 0, cents = 30, xp = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -99092070, [2] = -1379330323, [3] = 1963510418 } },
    
    [-1098441944]  = { name = "Moose",                        givenItem = { "meat" },                              givenAmount = { {1, 3} },  dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1868576868, [2] = 1636891382, [3] = -217731719 } },
   
    --[-1134449699]  = { name = "American Muskrat",           givenItem = { "meat" },                              givenAmount = { 0 },       money = 0, cents = 7,  xp = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    --[556355544]    = { name = "Angus Ox",                   givenItem = { "meat" },                              givenAmount = { 0 },       money = 0, cents = 30, xp = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 4623248928, [2] = 1208128650, [3] = 659601266 } },
   
    [-1892280447]  = { name = "Alligator Small",              givenItem = { "biggame" },                           givenAmount = { 1 },       dollars = 0.20, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1806153689, [2] = -802026654, [3] = -1625078531 } },
    [-2004866590]  = { name = "Alligator",                    givenItem = { "biggame" },                           givenAmount = { {1, 3} },  dollars = 0.30, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 3 }, quality = { [1] = -1243878166, [2] = nil, [3] = -1475338121 } },
    [759906147]    = { name = "North American Beaver",        givenItem = { "meat" },                              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = -1569450319, [2] = -2059726619, [3] = 854596618 } },
    [730092646]    = { name = "American Black Bear",          givenItem = { "biggame" },                           givenAmount = { {1, 3} },  dollars = 0.50, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = 1083865179, [2] = 1490032862, [3] = 663376218 } },
   
    -- Fish
    [-711779521]   = { name = "Longnose Gar",                 givenItem = { "a_c_fishlongnosegar_01_lg" },         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-1553593715]  = { name = "Muskie",                       givenItem = { "a_c_fishmuskie_01_lg" },              givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [-300867788]   = { name = "Lake Sturgeon",                givenItem = { "a_c_fishlakesturgeon_01_lg" },        givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1538187374]   = { name = "Channel Catfish",              givenItem = { "a_c_fishchannelcatfish_01_lg" },      givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [697075200]    = { name = "Northern Pike",                givenItem = { "a_c_fishnorthernpike_01_lg" },        givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1867262572]   = { name = "Bluegill",                     givenItem = { "a_c_fishbluegil_01_ms" },             givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1493541632]   = { name = "Bullhead Catfish",             givenItem = { "a_c_fishbullheadcat_01_ms" },         givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [3111984125]   = { name = "Chain Pickerl",                givenItem = { "a_c_fishchainpickerel_01_ms" },       givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [463643368]    = { name = "Large Mouth Bass",             givenItem = { "a_c_fishlargemouthbass_01_lg" },      givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [3842742512]   = { name = "Perch",                        givenItem = { "a_c_fishperch_01_ms" },               givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [134747314]    = { name = "Rainbow Trout",                givenItem = { "a_c_fishrainbowtrout_01_lg" },        givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [4051778898]   = { name = "Redfin Pickerl",               givenItem = { "a_c_fishredfinpickerel_01_ms" },      givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [2313405824]   = { name = "Rock Bass",                    givenItem = { "a_c_fishrockbass_01_ms" },            givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [2410477101]   = { name = "Smallmouth Bass",              givenItem = { "a_c_fishrockbass_01_sm" },            givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [543892122]    = { name = "Salmon Sockeye",               givenItem = { "a_c_fishsalmonsockeye_01_ms" },       givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
    [1702636991]   = { name = "Salmon Sockeye",               givenItem = { "a_c_fishsalmonsockeye_01_lg" },       givenAmount = { 1 },       dollars = 0.15, experience = 0, qualityMultiplier = { [1] = 1.0, [2] = 1.5, [3] = 2 }, quality = { [1] = nil, [2] = nil, [3] = nil } },
}
