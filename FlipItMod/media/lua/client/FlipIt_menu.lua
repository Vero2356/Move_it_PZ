local function onFlipVehicle(playerObj, vehicle)

    --if  Vehicle dissapars then this
    if not vehicle then return end

    -- player saying this
    playerObj:Say("Heave... Ho!")


    -- Physics logic
    -- Current Location
    local x = vehicle:getX()
    local y =  vehicle:getY()
    local z = vehicle:getZ()



end