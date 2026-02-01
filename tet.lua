local Players = game:GetService("Players")
local player = Players.LocalPlayer

local SENHA = "1234"

local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,300,0,180)
frame.Position = UDim2.new(0.5,-150,0.5,-90)
frame.BackgroundColor3 = Color3.fromRGB(25,25,35)
Instance.new("UICorner", frame)

local box = Instance.new("TextBox", frame)
box.Size = UDim2.new(0.9,0,0,40)
box.Position = UDim2.new(0.05,0,0.3,0)
box.PlaceholderText = "Digite a senha"
box.Text = ""
box.TextSize = 18

local btn = Instance.new("TextButton", frame)
btn.Size = UDim2.new(0.9,0,0,40)
btn.Position = UDim2.new(0.05,0,0.6,0)
btn.Text = "ENTRAR"

btn.MouseButton1Click:Connect(function()
    if box.Text == SENHA then
        gui:Destroy()
        print("Senha correta")
        -- AQUI continua o script normal
    else
        btn.Text = "Senha errada"
    end
end)