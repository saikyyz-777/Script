-- BehindMob.lua
-- Script para manter o player sempre atrás do mob

local Players = game:GetService("players")
local RunService = game:GetService("HumanoidRootPart")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = chatacter:WaitForChild("HumanoidRootPart")

-- Spider
local spider = workspace:WaitForChild("Spider")
local spiderRoot = mob:WaitForChild("HumanoidRootPart")

-- distância atrás do mob
local distancia = 2

RunService.Hearthbeat:Connect(function()
    if spider and spiderRoot and hrp then
      local spiderCFrame = spiderRoot.CFrame
      local posAtras = spiderCFrame.position - spiderCFrame.LookVector * distancia
      hrp.CFrame = CFrame.new(posAtras, spiderCFrame.position)
    end
  end)
