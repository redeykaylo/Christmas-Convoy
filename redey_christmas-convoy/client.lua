CreateThread(function()
    local trailerHash = GetHashKey("trflat")
    local treeHash = GetHashKey("prop_tree_cedar_03")

    RequestModel(treeHash)
    while not HasModelLoaded(treeHash) do
        Wait(10)
    end

    while true do
        Wait(1000)

        local vehicles = GetGamePool("CVehicle")
        for _, trailer in ipairs(vehicles) do
            if DoesEntityExist(trailer) and GetEntityModel(trailer) == trailerHash then
                if not Entity(trailer).state.treeAttached then

                    -- zajistíme control nad trailerem
                    NetworkRequestControlOfEntity(trailer)
                    while not NetworkHasControlOfEntity(trailer) do
                        Wait(10)
                    end

                    -- vytvoříme LOKÁLNÍ strom (bez fyziky)
                    local tree = CreateObject(
                        treeHash,
                        0.0, 0.0, 0.0,
                        false, -- !!! NENÍ networked
                        false,
                        false
                    )

                    -- vypnutí fyziky (KRITICKÉ)
                    SetEntityCollision(tree, false, false)
                    SetEntityCompletelyDisableCollision(tree, true)
                    SetEntityDynamic(tree, false)
                    FreezeEntityPosition(tree, true)

                    -- attach bez soft pinningu
                    AttachEntityToEntity(
                        tree,
                        trailer,
                        0,
                        0.0,   -- X
                        6.2,   -- Y
                        1.3,   -- Z
                        90.0,  -- rotace
                        0.0,
                        0.0,
                        false,
                        false, -- soft pinning OFF
                        false, -- collision OFF
                        false,
                        2,
                        true
                    )

                    Entity(trailer).state.treeAttached = true
                end
            end
        end
    end
end)
