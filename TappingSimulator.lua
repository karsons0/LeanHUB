getgenv().autoTap = false;
getgenv().autoRebirth = false;
getgenv().autoHatch = false;

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local w = Rayfield:CreateWindow({
    Name = "Tapping Simulator | Lean Hub",
    LoadingTitle = "Lean Hub!",
    LoadingSubtitle = "I LOVE Lean!",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "LeanHUB",
        FileName = "Configuration"
    },
    Discord = {
        Enabled = true,
        Invite = "nFadEquPC4",
        RememberJoins = true
    },
    KeySystem = true,
    KeySettings = {
        Title = "Lean Hub",
        Subtitle = "Key System",
        Note = "Join the discord! (https://discord.gg/nFadEquPC4)",
        FileName = "LeanKey",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = "DGVMnENZggdM2L6ZYcCe5C6R4dyeJP"

    }
})


local a = w:CreateTab("Farming", 4483362458)
local b = w:CreateTab("Pets", 4483362458)
local c = w:CreateTab("Settings", 4483362458)


local UnloadB = c:CreateButton({
    Name = "Unload",
    Callback = function()

        Rayfield:Notify({
            Title = "Are You Sure you want to unload?",
            Content = "",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Yes!",
                  Callback = function()
                  getgenv().autoTap = false;
                  getgenv().autoRebirth = false;
                  getgenv().autoHatch = false;
                  Rayfield:Destroy()
               end
            },
         },
         })
        
    end,
})


--local b = w:CreateFolder("Farm")

--local c = w:CreateFolder("Pet")


local AutoTapT = a:CreateToggle({
    Name = "AutoTap",
    CurrentValue = false,
    Flag = "AutoTap",
    Callback = function(Value)
        getgenv().autoTap = Value
        if Value then
            doTap();
        end
    end
})

local AutoRebirthT = a:CreateToggle({
    Name = "AutoRebirth",
    CurrentValue = false,
    Flag = "AutoRebirth",
    Callback = function(Value)
        getgenv().autoRebirth = Value
        if Value then
            autoRebirth(20);
        end
    end
})



local AutoHatchT = b:CreateToggle({
    Name = "AutoHatch",
    CurrentValue = false,
    Flag = "AutoHatch",
    Callback = function(Value)
        getgenv().autoHatch = Value
        if Value then
            buyEgg("Jungle Egg");
        end
    end,
})

AutoHatchT:Set(false)
AutoTapT:Set(false)
AutoRebirthT:Set(false)
Rayfield:LoadConfiguration()


function doTap()
    spawn(function()
        while autoTap do
            local args = {[1] = "Main"}
            game:GetService("ReplicatedStorage").Events.Tap:FireServer(unpack(args))
            wait()
        end
    
    end)
end


function autoRebirth(rebirthAmount)
    spawn(function()

        while autoRebirth do
            local args = {[1] = rebirthAmount}
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
            wait()
        end
        
    
    end)
end

function buyEgg(EggType)
    spawn(function()

        while wait() do
            if not autoHatch then break end;
                local args = {[1] = {},[2] = EggType,[3] = 0}
                game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        end
    end)
end


        
    
doTap()
buyEgg("Jungle Egg");
autoRebirth(20)
