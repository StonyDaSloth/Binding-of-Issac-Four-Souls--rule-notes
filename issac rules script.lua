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

-- command response table
function getResponseTable() 
    response = {}

    response["help"] = "Commands: "
                    .. "\n-death penalty [info on the death penalty]"
                    .. "\n-player death [what happens on player death]"
                    .. "\n-attack steps [summary of steps when player declares attack]"
                    .. "\n-hand size [hand size limit]"
                    .. "\n-? [(keyword) [description of given keyword]"

    -- commands
    response["death penalty"] = "non-eternal item is destroyed"
                            .. "\ndiscard loot card"
                            .. "\nloose 1 coin"
                            .. "\ndeactivate (tap) each tap ability controlled "

    response["player death"] = "any purchase, attack, end declerations stop and move to death steps and player pays death penalty"
                            .. "\nif active player is dying, stack finishes up and proceeds to end phase as normal"

    response["attack steps"] = "1. player declares they are attacking"
                            .. "\n\t 2. priority passes"
                            .. "\n\t 3. attacking player chooses targets"
                            .. "\n\t 4. abilities can be triggered and interact with attack decleration"

    response["hand size"] = "he max hand size is 10"

    response["monster death"] = "1. monster moves out of monster slot"
                            .. "\n2. trigger - abilities that trigger on monster death before gaining"
                            .. "\n3. active player gains rewards from monster"
                            .. "\n4. trigger - abilities that trigger on monster death after reward"
                            .. "\n5. player gains soul, if applicable"
                            .. "\n6. refill monster slot if applicable"

    -- reponse for cures is broken
    -- repsonse["curse"] = "Curse has 2 triggers. \nFirst trigger is when it enters play. \nSecond trigger is when cursed player dies"


    -- keyword descriptions
    -- response["?recharge"] = "untap an item"

    -- response["?reroll"] = "re-roll has 2 meanings." 
    --     .. "\nRe-roll a die means to roll it again."
    --     .. "\nRe-roll an item means to destroy the item and the owner of the destroyed item gains a treasure"
    --     .. "\n:: note, if the item destroyed is a shop item, it is replaced by the top card of the treasure deck"
    return response
end
-- checks for command repsonse and prints
-- tables:
-- https://www.lua.org/pil/2.5.html
function getResponse(msg) 
    response = getResponseTable()
    print("\n-------------------------")
    if msg == "-help" then
        print (response["help"])
    end
    if msg == "-death penalty" then 
        print (response["death penalty"])
    end
    if msg == "-player death" then   
        print (response["player death"])
    end
    if msg == "-attack steps" then
        print(response["attack steps"])
    end
    if msg == "-hand size" then
        print(response["hand size"])
    end
    if msg == "-monster death" then
        print(response["monster death"])
    end

    -- response for curse is broken
    -- if msg == "-curse" then
    --     print(response["curse"])
    -- end
    -- other commands
    if (msg == "-red") then
        Lighting.light_intensity = 2
        Lighting.setLightColor({r = 1, g = .06, b = .06})
        Lighting.appy()
        print("table color red")
    end
    if (msg == "-blue") then
        Lighting.light_intensity = 2
        Lighting.setLightColor({r = .06, g = .06, b = 1})
        Lighting.appy()
        print("table color blue")
    end
    if (msg == "-green") then
        Lighting.light_intensity = 2
        Lighting.setLightColor({r = .06, g = 1, b = .06})
        Lighting.appy()
        print ("table color green")
    end
    if (msg == "-flip table") then
        flipTable()
    end
    print("-------------------------\n")
end
