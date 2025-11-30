return {
    timeout = 10000,
    maxSpikes = 5,
    policePlatePrefix = 'LSPD',
    objects = {
        cone = {model = `prop_roadcone02a`, freeze = false},
        barrier = {model = `prop_barrier_work06a`, freeze = true},
        roadsign = {model = `prop_snow_sign_road_06g`, freeze = true},
        tent = {model = `prop_gazebo_03`, freeze = true},
        light = {model = `prop_worklight_03b`, freeze = true},
        chair = {model = `prop_chair_08`, freeze = true},
        chairs = {model = `prop_chair_pile_01`, freeze = true},
        tabe = {model = `prop_table_03`, freeze = true},
        monitor = {model = `des_tvsmash_root`, freeze = true},
    },

    -- Stations structure: Each station contains all its locations
    stations = {
        {
            id = 'mission_row',
            label = 'Mission Row Police Station',
            coords = vec3(434.0, -983.0, 30.7),
            jobs = {'police'}, -- Only 'police' job can access this station (LSPD)
            duty = {
                vec3(440.085, -974.924, 30.689),
            },
            vehicle = {
                vec4(452.0, -996.0, 26.0, 175.0),
                vec4(447.0, -997.0, 26.0, 178.0),
                vec4(463.0, -1019.0, 28.0, 87.0),
                vec4(463.0, -1015.0, 28.0, 87.0),
            },
            stash = { -- Not currently used, use ox_inventory stashes
                -- vec3(453.075, -980.124, 30.889),
            },
            impound = {
                vec3(436.68, -1007.42, 27.32),
            },
            helicopter = {
                vec4(449.168, -981.325, 43.691, 87.234),
            },
            armory = { -- Not currently used, use ox_inventory shops
                -- vec3(462.23, -981.12, 30.68),
            },
            trash = {
                vec3(439.0907, -976.746, 30.776),
            },
            fingerprint = {
                vec3(460.9667, -989.180, 24.92),
            },
            evidence = { -- Not currently used, use ox_inventory evidence system
            },
        },
        {
            id = 'sandy_shores',
            label = 'Sandy Shores Police Station',
            coords = vec3(1853.4, 3684.5, 34.3),
            jobs = {'bcso'}, -- Only 'bcso' job can access this station (Blaine County Sheriff)
            duty = {
                vec3(1853.52, 3689.31, 33.27),
            },
            vehicle = {
                vec4(1853.86, 3675.71, 32.35, 211.27),
            },
            stash = {},
            impound = {
                vec3(1634.81, 3789.85, 33.76),
            },
            helicopter = {
                vec4(1852.59, 3714.92, 32.1, 276.71),
            },
            armory = {},
            trash = {
                vec3(1857.94, 3690.0, 33.27)
            },
            fingerprint = {
                vec3(1852.27, 3687.29, 33.27)
            },
            evidence = {},
        },
        -- Example: Add more stations here
        -- {
        --     id = 'paleto_bay',
        --     label = 'Paleto Bay Police Station',
        --     coords = vec3(-448.4, 6011.8, 31.7),
        --     jobs = {'sasp'}, -- Only 'sasp' job can access (State Police)
        --     -- jobs = {'police', 'bcso'}, -- Multiple jobs can access
        --     -- jobs = nil, -- No jobs field means all LEO jobs can access
        --     duty = {vec3(-448.4, 6011.8, 31.7)},
        --     vehicle = {},
        --     stash = {},
        --     impound = {},
        --     helicopter = {},
        --     armory = {},
        --     trash = {},
        --     fingerprint = {},
        --     evidence = {},
        -- },
    },

    radars = {
        -- /!\ The maxspeed(s) need to be in an increasing order /!\
        -- If you don't want to fine people just do that: 'config.speedFines = false'
        -- fine if you're maxspeed or less over the speedlimit
        -- (i.e if you're at 41 mph and the radar's limit is 35 you're 6mph over so a 25$ fine)
        speedFines = {
            {fine = 25, maxSpeed = 10 },
            {fine = 50, maxSpeed = 30},
            {fine = 250, maxSpeed = 80},
            {fine = 500, maxSpeed = 180},
        }
    }
}
