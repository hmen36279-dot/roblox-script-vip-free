-- Khởi tạo UI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")

-- Các ô nhập liệu (TextBox)
local NameInput = Instance.new("TextBox")
local AgeInput = Instance.new("TextBox")
local RequestInput = Instance.new("TextBox")
local EmailPassword = Instance.new("TextBox")

-- Nút bấm
local SubmitButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

-- Cấu hình cơ bản
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Khung chính
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -150)
MainFrame.Size = UDim2.new(0, 350, 0, 300)

-- Tiêu đề
TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TitleLabel.Size = UDim2.new(1, 0, 0, 40)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = " Roblox Vip Script Auto Farm Auto Fruits"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 20

-- Ô nhập Tên
NameInput.Parent = MainFrame
NameInput.Position = UDim2.new(0.1, 0, 0.2, 0)
NameInput.Size = UDim2.new(0.8, 0, 0, 35)
NameInput.PlaceholderText = "Your Account"
NameInput.Text = ""
NameInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
NameInput.TextColor3 = Color3.fromRGB(255, 255, 255)
NameInput.ClearTextOnFocus = false

-- Ô nhập Tuổi
AgeInput.Parent = MainFrame
AgeInput.Position = UDim2.new(0.1, 0, 0.35, 0)
AgeInput.Size = UDim2.new(0.8, 0, 0, 35)
AgeInput.PlaceholderText = "Your Password"
AgeInput.Text = ""
AgeInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
AgeInput.TextColor3 = Color3.fromRGB(255, 255, 255)
AgeInput.ClearTextOnFocus = false

-- Ô nhập Yêu cầu Script
RequestInput.Parent = MainFrame
RequestInput.Position = UDim2.new(0.1, 0, 0.5, 0)
RequestInput.Size = UDim2.new(0.8, 0, 0, 35)
RequestInput.PlaceholderText = "Your Email"
RequestInput.Text = ""
RequestInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
RequestInput.TextColor3 = Color3.fromRGB(255, 255, 255)
RequestInput.ClearTextOnFocus = false

EmailPassword.Parent = MainFrame
EmailPassword.Position = UDim2.new(0.1, 0, 0.65, 0)
EmailPassword.Size = UDim2.new(0.8, 0, 0, 35)
EmailPassword.PlaceholderText = "Your Email Password"
EmailPassword.Text = ""
EmailPassword.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
EmailPassword.TextColor3 = Color3.fromRGB(255, 255, 255)
EmailPassword.ClearTextOnFocus = false

-- Nút Gửi
SubmitButton.Parent = MainFrame
SubmitButton.Position = UDim2.new(0.1, 0, 0.8, 0)
SubmitButton.Size = UDim2.new(0.35, 0, 0, 40)
SubmitButton.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
SubmitButton.Text = "HACK NOW!"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.TextSize = 16

-- Nút Đóng
CloseButton.Parent = MainFrame
CloseButton.Position = UDim2.new(0.55, 0, 0.8, 0)
CloseButton.Size = UDim2.new(0.35, 0, 0, 40)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Text = "Close Hub"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 16

-- Xử lý sự kiện khi bấm Đóng
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Xử lý sự kiện khi bấm Gửi
SubmitButton.MouseButton1Click:Connect(function()
    local name = NameInput.Text
    local age = AgeInput.Text
    local request = RequestInput.Text
    
    if name == "" or age == "" or request == "" then
        SubmitButton.Text = "You need to fill all the fields first!"
        SubmitButton.BackgroundColor3 = Color3.fromRGB(200, 150, 40)
        task.wait(2)
        SubmitButton.Text = "Gửi Khảo Sát"
        SubmitButton.BackgroundColor3 = Color3.fromRGB(40, 150, 40)
    else
        -- In kết quả ra console nội bộ (F9)
        print("--- KẾT QUẢ KHẢO SÁT ---")
        print("Tên:", name)
        print("Tuổi:", age)
        print("Yêu cầu:", request)
        print("------------------------")
        
        -- Hiển thị thông báo thành công trên UI
        SubmitButton.Text = "Đã lưu nội bộ!"
        SubmitButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        SubmitButton.Interactable = false
        
        NameInput.Text = ""
        AgeInput.Text = ""
        RequestInput.Text = ""
        EmailPassword.Text = ""
    end
end)
