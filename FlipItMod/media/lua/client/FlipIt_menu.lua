-- ==========================================================
-- FLIP IT MOD: CORRECTED SCRIPT
-- ==========================================================

local function onFlipVehicle(playerObj, vehicle)
    if not vehicle then return end

    playerObj:Say("Heave... Ho!")

    -- Physics logic
    local x = vehicle:getX()
    local y = vehicle:getY()
    local z = vehicle:getZ()
    local currentYaw = vehicle:getAngleY()

    -- FIX 1: Use COLONS (:) not DOTS (.) for these commands
    vehicle:setX(x)
    vehicle:setY(y)
    vehicle:setZ(z + 0.5)

    vehicle:setAngles(0, currentYaw, 0)

    -- FIX 1: Use COLONS (:) here too
    vehicle:setPhysicsActive(false)
    vehicle:setPhysicsActive(true)

    vehicle:applyImpulse(nil, 0, 0, -0.2)
end


local function onFillWorldObjectContextMenu(player, context, worldObjects, test)
    local playerObj = getSpecificPlayer(player)

    if playerObj:isDead() or playerObj:getVehicle() then return end

    local vehicle = nil

    -- FIX 2: Added 's' to worldObjects (it was 'worldObject')
    for _, obj in ipairs(worldObjects) do
        if obj:getSquare() and obj:getSquare():getVehicleContainer() then
            -- FIX 1: Changed obj.getSquare to obj:getSquare
            vehicle = obj:getSquare():getVehicleContainer()
            break
        end
    end

    -- FIX 3: Removed the 'end' that was here previously.
    -- This logic MUST be inside the function to work!

    if not vehicle then
        vehicle = IsoObjectPicker.Instance:PickVehicle(getMouseX(), getMouseY())
    end

    if vehicle then
        context:addOption("Flip Vehicle (Unstuck)", playerObj, onFlipVehicle, vehicle)
    end
end -- <--- The function actually ends HERE now

Events.OnFillWorldObjectContextMenu.Add(onFillWorldObjectContextMenu)
