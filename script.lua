-- Notificação ao iniciar
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "4M CLAN SCRIPT",
    Text = "Script iniciado com sucesso!",
    Duration = 3
})

-- Auto Tap
task.spawn(function()
    while true do
        task.wait(0.1)
        local args = {
            [1] = "Treinar"
        }
        game:GetService("ReplicatedStorage").Remotes.Treinar:FireServer(unpack(args))
    end
end)

-- Auto Rebirth (com quantidade 1, você pode mudar se quiser)
task.spawn(function()
    while true do
        task.wait(5) -- tempo entre os rebirths
        local args = {
            [1] = 1 -- número de rebirths (mude se quiser mais)
        }
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
    end
end)
