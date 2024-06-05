-- on game load
function onload()
    -- print "Hello World!"
end

-- on chat message
function onChat(msg, player)
    -- check for command char
    if (string.sub(msg, 1, 1) == "-") then
        getResponse(msg)
    end
end

-- checks for command repsonse and prints
function getResponse(msg) 
    print("\n-------------------------")
    if msg == "-death penalty" then 
        print ("non-eternal item is destroyed"
            .. "\ndiscard loot card"
            .. "\nloose 1 coin"
            .. "\ndeactivate (tap) each tap ability controlled ONLY ACTIVE PLAYERS CONTINUE")
    end
    if msg =="-player death" then   
            print ("any purchase, attack, end declerations stop and move to death steps and player pays death penalty"
                .. "\nany purchase, attack, end declerations stop and move to death steps and player pays death penalty"
                .. "\n\nif active player is dying, turn ends")
    end
    print("-------------------------\n")
end