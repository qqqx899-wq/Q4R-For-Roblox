-- LocalScript (Q4R Ultimate Menu - الإصدار المطور V26.4)
-- Developed by Q4R:STUDIO

local HttpService = game:GetService("HttpService")
local DATABASE_URL = "https://roblox-comm-bridge.lovable.app"
local LocalPlayer = game.Players.LocalPlayer

-- دعم دوال الـ HTTP لجميع المشغلات والهاكات
local requestFunc = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

local ScreenGui = Instance.new("ScreenGui")

-- ==========================================
-- 1. واجهة تسجيل الدخول
-- ==========================================
local LoginFrame = Instance.new("Frame")
local LoginTitle = Instance.new("TextLabel")
local LoginCloseBtn = Instance.new("TextButton")
local LoginLangBtn = Instance.new("TextButton")
local LoginTextBox = Instance.new("TextBox")
local LoginEnterBtn = Instance.new("TextButton")
local LoginWatermark = Instance.new("TextLabel")

-- ==========================================
-- 2. واجهة القائمة الرئيسية (Main UI)
-- ==========================================
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local MinimizeBtn = Instance.new("TextButton")

local Sidebar = Instance.new("ScrollingFrame")
local NewsTabBtn = Instance.new("TextButton")
local GeneralTabBtn = Instance.new("TextButton")
local Mm2TabBtn = Instance.new("TextButton")
local FlickTabBtn = Instance.new("TextButton") 
local LangTabBtn = Instance.new("TextButton")

local ContentFrame = Instance.new("Frame")
local ContentCorner = Instance.new("UICorner")

local NewsPage = Instance.new("ScrollingFrame")
local NewsLayout = Instance.new("UIListLayout")
local AdminAdminBtn = Instance.new("TextButton")

local AdminInputFrame = Instance.new("Frame")
local AdminInputCorner = Instance.new("UICorner")
local AdminTextBox = Instance.new("TextBox")
local AdminSendBtn = Instance.new("TextButton")
local AdminCloseBtn = Instance.new("TextButton")

local GeneralPage = Instance.new("ScrollingFrame")
local GeneralLayout = Instance.new("UIListLayout")
local Row1 = Instance.new("Frame")
local Row2 = Instance.new("Frame")
local Row3 = Instance.new("Frame")
local Row4 = Instance.new("Frame")
local Row5 = Instance.new("Frame")
local Row6 = Instance.new("Frame") 

local NoclipBtn = Instance.new("TextButton")
local FreecamBtn = Instance.new("TextButton")
local FlyBtn = Instance.new("TextButton")
local InfJumpBtn = Instance.new("TextButton")
local InvisibleBtn = Instance.new("TextButton")
local TPToolBtn = Instance.new("TextButton") 
local SavePosBtn = Instance.new("TextButton")
local TeleportPosBtn = Instance.new("TextButton")
local SoundMenuBtn = Instance.new("TextButton") 
local TeleportPlayerBtn = Instance.new("TextButton")

-- ==========================================
-- 3. واجهات الفريمات الإضافية (صوت فقط)
-- ==========================================
local SoundControlFrame = Instance.new("Frame")
local SoundControlCorner = Instance.new("UICorner")
local SoundTitle = Instance.new("TextLabel")
local SoundClose = Instance.new("TextButton")
local SoundIdInput = Instance.new("TextBox")
local SoundPlayBtn = Instance.new("TextButton")
local SoundStopBtn = Instance.new("TextButton")
local SoundVolUp = Instance.new("TextButton")
local SoundVolDown = Instance.new("TextButton")
local SoundVolDisplay = Instance.new("TextLabel")

local Mm2Page = Instance.new("ScrollingFrame")
local Mm2Layout = Instance.new("UIListLayout")
local Mm2Row1 = Instance.new("Frame")
local Mm2Row2 = Instance.new("Frame") 
local Mm2Row3 = Instance.new("Frame") 
local Mm2Row4 = Instance.new("Frame")
local Mm2Row5 = Instance.new("Frame") 
local Mm2Row6 = Instance.new("Frame")
local Mm2Row7 = Instance.new("Frame")

local KillFeedBtn = Instance.new("TextButton")
local DetectBtn = Instance.new("TextButton")
local TargetSheriffBtn = Instance.new("TextButton") 
local TargetMurderBtn = Instance.new("TextButton") 
local GrabGunBtn = Instance.new("TextButton") 
local KillInnocentsMenuBtn = Instance.new("TextButton")
local StopKillBtn = Instance.new("TextButton") 
local GodModeBtn = Instance.new("TextButton") 
local HideBtn = Instance.new("TextButton") 
local FlingSheriffBtn = Instance.new("TextButton")
local FlingMurderBtn = Instance.new("TextButton")
local ExtractBtn = Instance.new("TextButton")

-- الزر المستخرج الخارجي
local ExtractedAttackBtn = Instance.new("TextButton")

local FlickPage = Instance.new("ScrollingFrame")
local FlickLayout = Instance.new("UIListLayout")
local FlickRow1 = Instance.new("Frame")
local FlickRow2 = Instance.new("Frame") 
local FlickEspBtn = Instance.new("TextButton")
local FlickAimbotBtn = Instance.new("TextButton")
local FlickWallbangBtn = Instance.new("TextButton") 

local PlayerList = Instance.new("Frame")
local PlayerScroll = Instance.new("ScrollingFrame")
local PlayerListLayout = Instance.new("UIListLayout")

local InnocentList = Instance.new("Frame")
local InnocentScroll = Instance.new("ScrollingFrame")
local InnocentListLayout = Instance.new("UIListLayout")

local StudioWatermark = Instance.new("TextLabel")

local ADMIN_ID = 7942346966

-- إعداد الـ ScreenGui
ScreenGui.Name = "Q4R_UltimateMenu_V26_4"
local success, coreGui = pcall(function() return game:GetService("CoreGui") end)
ScreenGui.Parent = success and coreGui or LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- ==========================================
-- تصميم الواجهات
-- ==========================================
LoginFrame.Name = "LoginFrame"
LoginFrame.Parent = ScreenGui
LoginFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
LoginFrame.BorderSizePixel = 0 
LoginFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
LoginFrame.Size = UDim2.new(0, 300, 0, 200) 
LoginFrame.Active = true
LoginFrame.Draggable = true
LoginFrame.Visible = true 

local LoginCorner = Instance.new("UICorner")
LoginCorner.CornerRadius = UDim.new(0, 10)
LoginCorner.Parent = LoginFrame

LoginTitle.Name = "LoginTitle"
LoginTitle.Parent = LoginFrame
LoginTitle.BackgroundTransparency = 1
LoginTitle.Position = UDim2.new(0, 0, 0, 15)
LoginTitle.Size = UDim2.new(1, 0, 0, 35)
LoginTitle.Font = Enum.Font.SourceSansBold
LoginTitle.Text = "Q4R:STUDIO"
LoginTitle.TextColor3 = Color3.fromRGB(0, 220, 100)
LoginTitle.TextSize = 26

LoginCloseBtn.Name = "LoginCloseBtn"
LoginCloseBtn.Parent = LoginFrame
LoginCloseBtn.BackgroundTransparency = 1
LoginCloseBtn.Position = UDim2.new(1, -30, 0, 5)
LoginCloseBtn.Size = UDim2.new(0, 25, 0, 25)
LoginCloseBtn.Font = Enum.Font.SourceSans
LoginCloseBtn.Text = "✕"
LoginCloseBtn.TextColor3 = Color3.fromRGB(200, 50, 50)
LoginCloseBtn.TextSize = 22

LoginLangBtn.Name = "LoginLangBtn"
LoginLangBtn.Parent = LoginFrame
LoginLangBtn.BackgroundTransparency = 1
LoginLangBtn.Position = UDim2.new(1, -70, 0, 5)
LoginLangBtn.Size = UDim2.new(0, 35, 0, 25)
LoginLangBtn.Font = Enum.Font.SourceSansBold
LoginLangBtn.Text = "EN"
LoginLangBtn.TextColor3 = Color3.fromRGB(24, 119, 242)
LoginLangBtn.TextSize = 16

LoginTextBox.Name = "LoginTextBox"
LoginTextBox.Parent = LoginFrame
LoginTextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LoginTextBox.BorderSizePixel = 0
LoginTextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
LoginTextBox.Size = UDim2.new(0.8, 0, 0, 40)
LoginTextBox.Font = Enum.Font.SourceSansBold
LoginTextBox.PlaceholderText = "أدخل كود التفعيل..."
LoginTextBox.Text = ""
LoginTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginTextBox.TextSize = 18

local LoginTxtCorner = Instance.new("UICorner")
LoginTxtCorner.CornerRadius = UDim.new(0, 6)
LoginTxtCorner.Parent = LoginTextBox

LoginEnterBtn.Name = "LoginEnterBtn"
LoginEnterBtn.Parent = LoginFrame
LoginEnterBtn.BackgroundColor3 = Color3.fromRGB(24, 119, 242)
LoginEnterBtn.BorderSizePixel = 0
LoginEnterBtn.Position = UDim2.new(0.25, 0, 0.65, 0)
LoginEnterBtn.Size = UDim2.new(0.5, 0, 0, 35)
LoginEnterBtn.Font = Enum.Font.SourceSansBold
LoginEnterBtn.Text = "دخــول"
LoginEnterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginEnterBtn.TextSize = 18

local LoginBtnCorner = Instance.new("UICorner")
LoginBtnCorner.CornerRadius = UDim.new(0, 6)
LoginBtnCorner.Parent = LoginEnterBtn

LoginWatermark.Name = "LoginWatermark"
LoginWatermark.Parent = LoginFrame
LoginWatermark.BackgroundTransparency = 1
LoginWatermark.Position = UDim2.new(0, 0, 1, -20)
LoginWatermark.Size = UDim2.new(1, 0, 0, 20)
LoginWatermark.Font = Enum.Font.SourceSansItalic
LoginWatermark.Text = "Powered by Q4R"
LoginWatermark.TextColor3 = Color3.fromRGB(80, 80, 80)
LoginWatermark.TextSize = 12

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0 
MainFrame.Position = UDim2.new(0.15, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 540, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true 
MainFrame.Visible = false 

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 5)
Title.Size = UDim2.new(0, 100, 0, 35)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Q4R"
Title.TextColor3 = Color3.fromRGB(0, 220, 100)
Title.TextSize = 28
Title.TextXAlignment = Enum.TextXAlignment.Left

StudioWatermark.Name = "StudioWatermark"
StudioWatermark.Parent = MainFrame
StudioWatermark.BackgroundTransparency = 1
StudioWatermark.Position = UDim2.new(0, 10, 1, -20)
StudioWatermark.Size = UDim2.new(0, 120, 0, 20)
StudioWatermark.Font = Enum.Font.SourceSansItalic
StudioWatermark.Text = "By Q4R:STUDIO"
StudioWatermark.TextColor3 = Color3.fromRGB(80, 80, 80)
StudioWatermark.TextSize = 12
StudioWatermark.TextXAlignment = Enum.TextXAlignment.Left

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(1, -38, 0, 8)
CloseBtn.Size = UDim2.new(0, 25, 0, 25)
CloseBtn.Font = Enum.Font.SourceSans
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
CloseBtn.TextSize = 22

MinimizeBtn.Name = "MinimizeBtn"
MinimizeBtn.Parent = MainFrame
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Position = UDim2.new(1, -68, 0, 8)
MinimizeBtn.Size = UDim2.new(0, 25, 0, 25)
MinimizeBtn.Font = Enum.Font.SourceSans
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
MinimizeBtn.TextSize = 16

Sidebar.Name = "Sidebar"
Sidebar.Parent = MainFrame
Sidebar.BackgroundTransparency = 1
Sidebar.Position = UDim2.new(0, 5, 0, 45)
Sidebar.Size = UDim2.new(0, 120, 1, -70)
Sidebar.ScrollBarThickness = 2
Sidebar.CanvasSize = UDim2.new(0, 0, 0, 0)

local SidebarLayout = Instance.new("UIListLayout")
SidebarLayout.Parent = Sidebar
SidebarLayout.Padding = UDim.new(0, 6)

SidebarLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Sidebar.CanvasSize = UDim2.new(0, 0, 0, SidebarLayout.AbsoluteContentSize.Y + 10)
end)

local function styleSidebarBtn(btn, text, color)
    btn.Size = UDim2.new(1, -5, 0, 32)
    btn.BackgroundColor3 = color
    btn.Font = Enum.Font.SourceSansBold
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 13
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn
    btn.BorderSizePixel = 0
end

styleSidebarBtn(NewsTabBtn, "الأخبار 📢", Color3.fromRGB(65, 65, 65))
NewsTabBtn.Parent = Sidebar

styleSidebarBtn(GeneralTabBtn, "خصائص عامة", Color3.fromRGB(24, 119, 242))
GeneralTabBtn.Parent = Sidebar

styleSidebarBtn(Mm2TabBtn, "خصائص MM2", Color3.fromRGB(65, 65, 65))
Mm2TabBtn.Parent = Sidebar

styleSidebarBtn(FlickTabBtn, "خصائص Flick 🎯", Color3.fromRGB(65, 65, 65))
FlickTabBtn.Parent = Sidebar

styleSidebarBtn(LangTabBtn, "اللغة: العربية 🌐", Color3.fromRGB(35, 35, 35))
LangTabBtn.Parent = Sidebar

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
ContentFrame.Position = UDim2.new(0, 130, 0, 45)
ContentFrame.Size = UDim2.new(1, -140, 1, -55)

ContentCorner.CornerRadius = UDim.new(0, 10)
ContentCorner.Parent = ContentFrame

local function setupPage(page)
    page.Size = UDim2.new(1, -10, 1, -10)
    page.Position = UDim2.new(0, 5, 0, 5)
    page.BackgroundTransparency = 1
    if page:IsA("ScrollingFrame") then
        page.ScrollBarThickness = 4
        page.CanvasSize = UDim2.new(0, 0, 0, 0)
    end
end

NewsPage.Name = "NewsPage"
NewsPage.Parent = ContentFrame
setupPage(NewsPage)
NewsPage.Visible = false

NewsLayout.Parent = NewsPage
NewsLayout.Padding = UDim.new(0, 8)
NewsLayout.SortOrder = Enum.SortOrder.LayoutOrder

NewsLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    local extra = AdminAdminBtn.Visible and 50 or 0
    NewsPage.CanvasSize = UDim2.new(0, 0, 0, NewsLayout.AbsoluteContentSize.Y + extra + 10)
end)

AdminAdminBtn.Name = "AdminAdminBtn"
AdminAdminBtn.Size = UDim2.new(1, -10, 0, 32)
AdminAdminBtn.BackgroundColor3 = Color3.fromRGB(255, 65, 65)
AdminAdminBtn.Font = Enum.Font.SourceSansBold
AdminAdminBtn.Text = "أضف خبر 📢"
AdminAdminBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminAdminBtn.TextSize = 14
AdminAdminBtn.LayoutOrder = 0 
AdminAdminBtn.Visible = false 

if LocalPlayer.UserId == ADMIN_ID then
    AdminAdminBtn.Visible = true
end

local adminBtnCorner = Instance.new("UICorner")
adminBtnCorner.CornerRadius = UDim.new(0, 6)
adminBtnCorner.Parent = AdminAdminBtn
AdminAdminBtn.Parent = NewsPage

AdminInputFrame.Name = "AdminInputFrame"
AdminInputFrame.Parent = ScreenGui
AdminInputFrame.Size = UDim2.new(0, 300, 0, 150)
AdminInputFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
AdminInputFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
AdminInputFrame.BorderSizePixel = 0
AdminInputFrame.Visible = false
AdminInputFrame.Active = true
AdminInputFrame.Draggable = true

AdminInputCorner.CornerRadius = UDim.new(0, 10)
AdminInputCorner.Parent = AdminInputFrame

AdminTextBox.Name = "AdminTextBox"
AdminTextBox.Parent = AdminInputFrame
AdminTextBox.Size = UDim2.new(0.9, 0, 0, 50)
AdminTextBox.Position = UDim2.new(0.05, 0, 0.2, 0)
AdminTextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AdminTextBox.BorderSizePixel = 0
AdminTextBox.Font = Enum.Font.SourceSans
AdminTextBox.Text = ""
AdminTextBox.PlaceholderText = "اكتب الخبر هنا..."
AdminTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminTextBox.TextSize = 16
local txtCorner = Instance.new("UICorner")
txtCorner.CornerRadius = UDim.new(0, 5)
txtCorner.Parent = AdminTextBox

AdminSendBtn.Name = "AdminSendBtn"
AdminSendBtn.Parent = AdminInputFrame
AdminSendBtn.Size = UDim2.new(0.4, 0, 0, 35)
AdminSendBtn.Position = UDim2.new(0.05, 0, 0.65, 0)
AdminSendBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 80)
AdminSendBtn.Font = Enum.Font.SourceSansBold
AdminSendBtn.Text = "إرسال الخبر"
AdminSendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminSendBtn.TextSize = 15
local sendCorner = Instance.new("UICorner")
sendCorner.CornerRadius = UDim.new(0, 6)
sendCorner.Parent = AdminSendBtn

AdminCloseBtn.Name = "AdminCloseBtn"
AdminCloseBtn.Parent = AdminInputFrame
AdminCloseBtn.Size = UDim2.new(0.4, 0, 0, 35)
AdminCloseBtn.Position = UDim2.new(0.55, 0, 0.65, 0)
AdminCloseBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
AdminCloseBtn.Font = Enum.Font.SourceSansBold
AdminCloseBtn.Text = "إلغاء"
AdminCloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminCloseBtn.TextSize = 15
local cancelCorner = Instance.new("UICorner")
cancelCorner.CornerRadius = UDim.new(0, 6)
cancelCorner.Parent = AdminCloseBtn

GeneralPage.Name = "GeneralPage"
GeneralPage.Parent = ContentFrame
setupPage(GeneralPage)
GeneralPage.Visible = true

GeneralLayout.Parent = GeneralPage
GeneralLayout.Padding = UDim.new(0, 6)
GeneralLayout.SortOrder = Enum.SortOrder.LayoutOrder

GeneralLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    GeneralPage.CanvasSize = UDim2.new(0, 0, 0, GeneralLayout.AbsoluteContentSize.Y + 20)
end)

Mm2Page.Name = "Mm2Page"
Mm2Page.Parent = ContentFrame
setupPage(Mm2Page)
Mm2Page.Visible = false

Mm2Layout.Parent = Mm2Page
Mm2Layout.Padding = UDim.new(0, 6)
Mm2Layout.SortOrder = Enum.SortOrder.LayoutOrder

Mm2Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Mm2Page.CanvasSize = UDim2.new(0, 0, 0, Mm2Layout.AbsoluteContentSize.Y + 20)
end)

FlickPage.Name = "FlickPage"
FlickPage.Parent = ContentFrame
setupPage(FlickPage)
FlickPage.Visible = false

FlickLayout.Parent = FlickPage
FlickLayout.Padding = UDim.new(0, 6)
FlickLayout.SortOrder = Enum.SortOrder.LayoutOrder

FlickLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    FlickPage.CanvasSize = UDim2.new(0, 0, 0, FlickLayout.AbsoluteContentSize.Y + 20)
end)

local function setupRow(row, parent, order)
    row.Parent = parent
    row.Size = UDim2.new(1, 0, 0, 32)
    row.BackgroundTransparency = 1
    row.LayoutOrder = order
end

setupRow(Row1, GeneralPage, 1)
setupRow(Row2, GeneralPage, 2)
setupRow(Row3, GeneralPage, 3) 
setupRow(Row4, GeneralPage, 4)
setupRow(Row5, GeneralPage, 5) 
setupRow(Row6, GeneralPage, 6) 

setupRow(Mm2Row1, Mm2Page, 1)
setupRow(Mm2Row2, Mm2Page, 2) 
setupRow(Mm2Row3, Mm2Page, 3) 
setupRow(Mm2Row4, Mm2Page, 4)
setupRow(Mm2Row5, Mm2Page, 5)
setupRow(Mm2Row6, Mm2Page, 6)
setupRow(Mm2Row7, Mm2Page, 7)

setupRow(FlickRow1, FlickPage, 1)
setupRow(FlickRow2, FlickPage, 2) 

local function styleFeatureBtn(btn, text, isActionBtn)
    btn.Font = Enum.Font.SourceSansBold
    btn.Text = text
    btn.TextSize = 12 
    btn.BorderSizePixel = 0
    if isActionBtn then
        btn.BackgroundColor3 = Color3.fromRGB(215, 215, 215)
        btn.TextColor3 = Color3.fromRGB(30, 30, 30)
    else
        btn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
end

-- أزرار الصفحة العامة
NoclipBtn.Size = UDim2.new(0.5, -4, 1, 0)
NoclipBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(NoclipBtn, "اختراق الجدران: OFF", false)
NoclipBtn.Parent = Row1

FreecamBtn.Size = UDim2.new(0.5, -4, 1, 0)
FreecamBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(FreecamBtn, "كاميرا حرة: OFF", false)
FreecamBtn.Parent = Row1

FlyBtn.Size = UDim2.new(0.5, -4, 1, 0)
FlyBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(FlyBtn, "طيران: OFF", false)
FlyBtn.Parent = Row2

InfJumpBtn.Size = UDim2.new(0.5, -4, 1, 0)
InfJumpBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(InfJumpBtn, "قفز لانهائي: OFF", false)
InfJumpBtn.Parent = Row2

InvisibleBtn.Size = UDim2.new(0.5, -4, 1, 0)
InvisibleBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(InvisibleBtn, "الاختفاء: OFF", false)
InvisibleBtn.Parent = Row3

TPToolBtn.Size = UDim2.new(0.5, -4, 1, 0)
TPToolBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(TPToolBtn, "أداة الانتقال: OFF", false)
TPToolBtn.Parent = Row3

SavePosBtn.Size = UDim2.new(0.5, -4, 1, 0)
SavePosBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(SavePosBtn, "حفظ الموقع", true)
SavePosBtn.Parent = Row4

TeleportPosBtn.Size = UDim2.new(0.5, -4, 1, 0)
TeleportPosBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(TeleportPosBtn, "انتقال للموقع", true)
TeleportPosBtn.Parent = Row4

SoundMenuBtn.Size = UDim2.new(1, 0, 1, 0)
styleFeatureBtn(SoundMenuBtn, "مشغل الصوتيات 🎵", false)
SoundMenuBtn.BackgroundColor3 = Color3.fromRGB(150, 40, 180) 
SoundMenuBtn.Parent = Row5

TeleportPlayerBtn.Size = UDim2.new(1, 0, 1, 0)
styleFeatureBtn(TeleportPlayerBtn, "انتقال للاعب  ▼", false)
TeleportPlayerBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99) 
TeleportPlayerBtn.Parent = Row6

-- ==========================================
-- تصميم فريم الصوتيات
-- ==========================================
SoundControlFrame.Name = "SoundControlFrame"
SoundControlFrame.Parent = ScreenGui
SoundControlFrame.Size = UDim2.new(0, 260, 0, 150)
SoundControlFrame.Position = UDim2.new(0.5, -130, 0.5, -75)
SoundControlFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SoundControlFrame.BorderSizePixel = 0
SoundControlFrame.Visible = false
SoundControlFrame.Active = true
SoundControlFrame.Draggable = true
SoundControlCorner.CornerRadius = UDim.new(0, 8)
SoundControlCorner.Parent = SoundControlFrame

SoundTitle.Parent = SoundControlFrame
SoundTitle.Size = UDim2.new(1, 0, 0, 30)
SoundTitle.Position = UDim2.new(0, 10, 0, 0)
SoundTitle.BackgroundTransparency = 1
SoundTitle.Text = "🎵 مشغل الصوتيات"
SoundTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundTitle.Font = Enum.Font.SourceSansBold
SoundTitle.TextSize = 16
SoundTitle.TextXAlignment = Enum.TextXAlignment.Left

SoundClose.Parent = SoundControlFrame
SoundClose.Size = UDim2.new(0, 30, 0, 30)
SoundClose.Position = UDim2.new(1, -30, 0, 0)
SoundClose.BackgroundTransparency = 1
SoundClose.Text = "✕"
SoundClose.TextColor3 = Color3.fromRGB(255, 50, 50)
SoundClose.Font = Enum.Font.SourceSansBold
SoundClose.TextSize = 16

SoundIdInput.Parent = SoundControlFrame
SoundIdInput.Size = UDim2.new(0.9, 0, 0, 35)
SoundIdInput.Position = UDim2.new(0.05, 0, 0.25, 0)
SoundIdInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SoundIdInput.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundIdInput.PlaceholderText = "أدخل ID الصوت..."
SoundIdInput.Font = Enum.Font.SourceSans
SoundIdInput.TextSize = 14
local sInputCorner = Instance.new("UICorner")
sInputCorner.CornerRadius = UDim.new(0, 5)
sInputCorner.Parent = SoundIdInput

SoundPlayBtn.Parent = SoundControlFrame
SoundPlayBtn.Size = UDim2.new(0.42, 0, 0, 30)
SoundPlayBtn.Position = UDim2.new(0.05, 0, 0.55, 0)
SoundPlayBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
SoundPlayBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundPlayBtn.Text = "▶ تشغيل"
SoundPlayBtn.Font = Enum.Font.SourceSansBold
SoundPlayBtn.TextSize = 14
local spCorner = Instance.new("UICorner")
spCorner.CornerRadius = UDim.new(0, 5)
spCorner.Parent = SoundPlayBtn

SoundStopBtn.Parent = SoundControlFrame
SoundStopBtn.Size = UDim2.new(0.42, 0, 0, 30)
SoundStopBtn.Position = UDim2.new(0.53, 0, 0.55, 0)
SoundStopBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
SoundStopBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundStopBtn.Text = "⏹ إيقاف"
SoundStopBtn.Font = Enum.Font.SourceSansBold
SoundStopBtn.TextSize = 14
local ssCorner = Instance.new("UICorner")
ssCorner.CornerRadius = UDim.new(0, 5)
ssCorner.Parent = SoundStopBtn

SoundVolDown.Parent = SoundControlFrame
SoundVolDown.Size = UDim2.new(0.2, 0, 0, 25)
SoundVolDown.Position = UDim2.new(0.15, 0, 0.8, 0)
SoundVolDown.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SoundVolDown.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundVolDown.Text = "-"
SoundVolDown.Font = Enum.Font.SourceSansBold
SoundVolDown.TextSize = 18
local svdCorner = Instance.new("UICorner")
svdCorner.CornerRadius = UDim.new(0, 5)
svdCorner.Parent = SoundVolDown

SoundVolDisplay.Parent = SoundControlFrame
SoundVolDisplay.Size = UDim2.new(0.3, 0, 0, 25)
SoundVolDisplay.Position = UDim2.new(0.35, 0, 0.8, 0)
SoundVolDisplay.BackgroundTransparency = 1
SoundVolDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundVolDisplay.Text = "Vol: 100%"
SoundVolDisplay.Font = Enum.Font.SourceSansBold
SoundVolDisplay.TextSize = 14

SoundVolUp.Parent = SoundControlFrame
SoundVolUp.Size = UDim2.new(0.2, 0, 0, 25)
SoundVolUp.Position = UDim2.new(0.65, 0, 0.8, 0)
SoundVolUp.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SoundVolUp.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundVolUp.Text = "+"
SoundVolUp.Font = Enum.Font.SourceSansBold
SoundVolUp.TextSize = 16
local svuCorner = Instance.new("UICorner")
svuCorner.CornerRadius = UDim.new(0, 5)
svuCorner.Parent = SoundVolUp

-- أزرار MM2
KillFeedBtn.Size = UDim2.new(0.5, -4, 1, 0)
KillFeedBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(KillFeedBtn, "كاشف القتلى: OFF", false)
KillFeedBtn.Parent = Mm2Row1

DetectBtn.Size = UDim2.new(0.5, -4, 1, 0)
DetectBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(DetectBtn, "كاشف الأسلحة: OFF", false)
DetectBtn.Parent = Mm2Row1

TargetSheriffBtn.Size = UDim2.new(0.5, -4, 1, 0)
TargetSheriffBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(TargetSheriffBtn, "تتبع وقتل الشريف: OFF", false)
TargetSheriffBtn.Parent = Mm2Row2

TargetMurderBtn.Size = UDim2.new(0.5, -4, 1, 0)
TargetMurderBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(TargetMurderBtn, "تتبع وقتل القاتل: OFF", false)
TargetMurderBtn.Parent = Mm2Row2

GrabGunBtn.Size = UDim2.new(1, 0, 1, 0)
styleFeatureBtn(GrabGunBtn, "سحب السلاح عند الموت: OFF", false)
GrabGunBtn.Parent = Mm2Row3

KillInnocentsMenuBtn.Size = UDim2.new(0.5, -4, 1, 0)
KillInnocentsMenuBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(KillInnocentsMenuBtn, "تصفية البريئين  ▼", false)
KillInnocentsMenuBtn.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
KillInnocentsMenuBtn.Parent = Mm2Row4

StopKillBtn.Size = UDim2.new(0.5, -4, 1, 0)
StopKillBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(StopKillBtn, "إيقاف التصفية", false)
StopKillBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99) 
StopKillBtn.Parent = Mm2Row4

HideBtn.Size = UDim2.new(0.5, -4, 1, 0)
HideBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(HideBtn, "اختباء وكشف: OFF", false)
HideBtn.Parent = Mm2Row5

GodModeBtn.Size = UDim2.new(0.5, -4, 1, 0)
GodModeBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(GodModeBtn, "وضع عدم الموت: OFF", false)
GodModeBtn.Parent = Mm2Row5

-- الإضافات الجديدة
FlingSheriffBtn.Size = UDim2.new(0.5, -4, 1, 0)
FlingSheriffBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(FlingSheriffBtn, "فنلق شريف 💥", true)
FlingSheriffBtn.Parent = Mm2Row6

FlingMurderBtn.Size = UDim2.new(0.5, -4, 1, 0)
FlingMurderBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(FlingMurderBtn, "فنلق قاتل 💥", true)
FlingMurderBtn.Parent = Mm2Row6

ExtractBtn.Size = UDim2.new(1, 0, 1, 0)
styleFeatureBtn(ExtractBtn, "إخراج زر الهجوم 🎯", false)
ExtractBtn.BackgroundColor3 = Color3.fromRGB(180, 90, 20)
ExtractBtn.Parent = Mm2Row7

-- الزر المستخرج الخارجي (الذي يظل معروضاً عند تقليص الفريم)
ExtractedAttackBtn.Name = "ExtractedAttackBtn"
ExtractedAttackBtn.Parent = ScreenGui
ExtractedAttackBtn.Size = UDim2.new(0, 150, 0, 38)
ExtractedAttackBtn.Position = UDim2.new(0.8, 0, 0.4, 0)
ExtractedAttackBtn.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
ExtractedAttackBtn.Text = "هجوم القاتل: OFF (Q)"
ExtractedAttackBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExtractedAttackBtn.Font = Enum.Font.SourceSansBold
ExtractedAttackBtn.TextSize = 14
ExtractedAttackBtn.Visible = false
ExtractedAttackBtn.Active = true
ExtractedAttackBtn.Draggable = true

local extCorner = Instance.new("UICorner")
extCorner.CornerRadius = UDim.new(0, 8)
extCorner.Parent = ExtractedAttackBtn

-- أزرار Flick
FlickEspBtn.Size = UDim2.new(0.5, -4, 1, 0)
FlickEspBtn.Position = UDim2.new(0, 0, 0, 0)
styleFeatureBtn(FlickEspBtn, "كشف اللاعبين: OFF", false)
FlickEspBtn.Parent = FlickRow1

FlickAimbotBtn.Size = UDim2.new(0.5, -4, 1, 0)
FlickAimbotBtn.Position = UDim2.new(0.5, 4, 0, 0)
styleFeatureBtn(FlickAimbotBtn, "Aim Bot: OFF", false)
FlickAimbotBtn.Parent = FlickRow1

FlickWallbangBtn.Size = UDim2.new(1, 0, 1, 0)
styleFeatureBtn(FlickWallbangBtn, "اختراق الجدران (لطلق النار): OFF", false)
FlickWallbangBtn.Parent = FlickRow2

PlayerList.Name = "PlayerList"
PlayerList.Parent = GeneralPage
PlayerList.Size = UDim2.new(1, 0, 0, 0) 
PlayerList.BackgroundTransparency = 1
PlayerList.LayoutOrder = 8
PlayerList.ClipsDescendants = true
PlayerList.Visible = false

PlayerScroll.Size = UDim2.new(1, 0, 1, 0)
PlayerScroll.BackgroundTransparency = 1
PlayerScroll.ScrollBarThickness = 6
PlayerScroll.Parent = PlayerList

PlayerListLayout.Parent = PlayerScroll
PlayerListLayout.Padding = UDim.new(0, 4)
PlayerListLayout.SortOrder = Enum.SortOrder.LayoutOrder

InnocentList.Name = "InnocentList"
InnocentList.Parent = Mm2Page
InnocentList.Size = UDim2.new(1, 0, 0, 0)
InnocentList.BackgroundTransparency = 1
InnocentList.LayoutOrder = 8 
InnocentList.ClipsDescendants = true
InnocentList.Visible = false

InnocentScroll.Size = UDim2.new(1, 0, 1, 0)
InnocentScroll.BackgroundTransparency = 1
InnocentScroll.ScrollBarThickness = 6
InnocentScroll.Parent = InnocentList

InnocentListLayout.Parent = InnocentScroll
InnocentListLayout.Padding = UDim.new(0, 4)
InnocentListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function updateCanvasSize(scroll, layout)
    local buttonCount = 0
    for _, item in pairs(scroll:GetChildren()) do
        if item:IsA("TextButton") then
            buttonCount = buttonCount + 1
        end
    end
    scroll.CanvasSize = UDim2.new(0, 0, 0, buttonCount * 30)
end

PlayerListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    updateCanvasSize(PlayerScroll, PlayerListLayout)
end)

InnocentListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    updateCanvasSize(InnocentScroll, InnocentListLayout)
end)

--- [ النظام البرمجي والتفاعلي ] ---

local Camera = workspace.CurrentCamera
local SavedCFrame = nil
local NoclipActive = false
local FreecamActive = false
local IsMinimized = false
local DetectActive = false
local KillFeedActive = false
local FlyActive = false
local InfJumpActive = false
local InvisibleActive = false
local TPToolActive = false 
local TargetSheriffActive = false 
local TargetMurderActive = false 
local GrabGunActive = false 
local GodModeActive = false 
local HideActive = false
local FlickEspActive = false
local FlickAimbotActive = false
local FlickWallbangActive = false
local AttackMurderActive = false
local PlayerListExpanded = false
local InnocentListExpanded = false
local CurrentLanguage = "AR" 
local camRotX, camRotY = 0, 0
local freecamPos = Vector3.new(0,0,0)

-- متغيرات نظام الصوت
local activePlayerSound = nil
local playerVolume = 1.0

local currentTarget = nil
local savedOriginalPos = nil

StopKillBtn.MouseButton1Click:Connect(function()
    currentTarget = nil
end)

local OriginalSize = UDim2.new(0, 540, 0, 300) 
local OriginalCornerRadius = MainCorner.CornerRadius

local Translations = {
    AR = {
        LoginPlaceholder = "أدخل كود التفعيل...", LoginEnter = "دخــول", LoginWrong = "الكود خاطئ!",
        NewsTab = "الأخبار 📢", GeneralTab = "خصائص عامة", Mm2Tab = "خصائص MM2", FlickTab = "خصائص Flick 🎯", LangTab = "اللغة: العربية 🌐",
        NoclipOn = "اختراق الجدران: ON", NoclipOff = "اختراق الجدران: OFF",
        FreecamOn = "كاميرا حرة: ON", FreecamOff = "كاميرا حرة: OFF",
        FlyOn = "طيران: ON", FlyOff = "طيران: OFF",
        InfJumpOn = "قفز لانهائي: ON", InfJumpOff = "قفز لانهائي: OFF",
        InvisibleOn = "الاختفاء: ON", InvisibleOff = "الاختفاء: OFF",
        TPToolOn = "أداة الانتقال: ON", TPToolOff = "أداة الانتقال: OFF",
        SavePos = "حفظ الموقع", SavePosSuccess = "تم الحفظ!", TeleportPos = "انتقال للموقع", NoSavedPos = "لا يوجد موقع!",
        TeleportPlayerOpen = "انتقال للاعب  ▼", TeleportPlayerClose = "انتقال للاعب  ▲",
        SoundMenu = "مشغل الصوتيات 🎵", SoundTitle = "🎵 مشغل الصوتيات", SoundInput = "أدخل ID الصوت...", SoundPlay = "▶ تشغيل", SoundStop = "⏹ إيقاف",
        KillFeedOn = "كاشف القتلى: ON", KillFeedOff = "كاشف القتلى: OFF",
        DetectOn = "كاشف الأسلحة: ON", DetectOff = "كاشف الأسلحة: OFF",
        TargetSheriffOn = "تتبع وقتل الشريف: ON", TargetSheriffOff = "تتبع وقتل الشريف: OFF",
        TargetMurderOn = "تتبع وقتل القاتل: ON", TargetMurderOff = "تتبع وقتل القاتل: OFF",
        GrabGunOn = "سحب السلاح: ON", GrabGunOff = "سحب السلاح: OFF",
        KillInnocentsOpen = "تصفية البريئين  ▼", KillInnocentsClose = "تصفية البريئين  ▲",
        GodModeOn = "وضع عدم الموت: ON", GodModeOff = "وضع عدم الموت: OFF",
        HideOn = "اختباء وكشف: ON", HideOff = "اختباء وكشف: OFF",
        FlingSheriffText = "فنلق شريف 💥", FlingMurderText = "فنلق قاتل 💥", ExtractBtnText = "إخراج زر الهجوم 🎯",
        FlickEspOn = "كشف اللاعبين: ON", FlickEspOff = "كشف اللاعبين: OFF",
        FlickAimbotOn = "Aim Bot: ON", FlickAimbotOff = "Aim Bot: OFF",
        FlickWallbangOn = "اختراق الجدران (للطلق): ON", FlickWallbangOff = "اختراق الجدران (للطلق): OFF",
        KillDetectorSystem = "[System]: كاشف القتلى مفعّل!"
    },
    EN = {
        LoginPlaceholder = "Enter Activation Code...", LoginEnter = "Login", LoginWrong = "Wrong Code!",
        NewsTab = "News 📢", GeneralTab = "General Hacks", Mm2Tab = "MM2 Hacks", FlickTab = "Flick Hacks 🎯", LangTab = "Lang: English 🌐",
        NoclipOn = "Noclip: ON", NoclipOff = "Noclip: OFF",
        FreecamOn = "Freecam: ON", FreecamOff = "Freecam: OFF",
        FlyOn = "Fly: ON", FlyOff = "Fly: OFF",
        InfJumpOn = "Inf Jump: ON", InfJumpOff = "Inf Jump: OFF",
        InvisibleOn = "Invisibility: ON", InvisibleOff = "Invisibility: OFF",
        TPToolOn = "TP Tool: ON", TPToolOff = "TP Tool: OFF",
        SavePos = "Save Location", SavePosSuccess = "Saved!", TeleportPos = "Teleport to Loc", NoSavedPos = "No Saved Location!",
        TeleportPlayerOpen = "Teleport Player ▼", TeleportPlayerClose = "Teleport Player ▲",
        SoundMenu = "Sound Player 🎵", SoundTitle = "🎵 Sound Player", SoundInput = "Enter Sound ID...", SoundPlay = "▶ Play", SoundStop = "⏹ Stop",
        KillFeedOn = "Kill Feed: ON", KillFeedOff = "Kill Feed: OFF",
        DetectOn = "Weapon ESP: ON", DetectOff = "Weapon ESP: OFF",
        TargetSheriffOn = "Track Sheriff: ON", TargetSheriffOff = "Track Sheriff: OFF",
        TargetMurderOn = "Track Murderer: ON", TargetMurderOff = "Track Murderer: OFF",
        GrabGunOn = "Auto-Grab Gun: ON", GrabGunOff = "Auto-Grab Gun: OFF",
        KillInnocentsOpen = "Kill Innocents ▼", KillInnocentsClose = "Kill Innocents ▲",
        GodModeOn = "God Mode: ON", GodModeOff = "God Mode: OFF",
        HideOn = "Hide & ESP: ON", HideOff = "Hide & ESP: OFF",
        FlingSheriffText = "Fling Sheriff 💥", FlingMurderText = "Fling Murderer 💥", ExtractBtnText = "Extract Attack Button 🎯",
        FlickEspOn = "ESP: ON", FlickEspOff = "ESP: OFF",
        FlickAimbotOn = "Aim Bot: ON", FlickAimbotOff = "Aim Bot: OFF",
        FlickWallbangOn = "Wallbang: ON", FlickWallbangOff = "Wallbang: OFF",
        KillDetectorSystem = "[System]: Kill detector active!"
    }
}

local function updateUI_Language()
    local t = Translations[CurrentLanguage]
    
    LoginTextBox.PlaceholderText = t.LoginPlaceholder
    LoginEnterBtn.Text = t.LoginEnter
    LoginLangBtn.Text = (CurrentLanguage == "AR") and "EN" or "AR"
    
    NewsTabBtn.Text = t.NewsTab
    GeneralTabBtn.Text = t.GeneralTab
    Mm2TabBtn.Text = t.Mm2Tab
    FlickTabBtn.Text = t.FlickTab
    LangTabBtn.Text = t.LangTab
    NoclipBtn.Text = NoclipActive and t.NoclipOn or t.NoclipOff
    FreecamBtn.Text = FreecamActive and t.FreecamOn or t.FreecamOff
    FlyBtn.Text = FlyActive and t.FlyOn or t.FlyOff
    InfJumpBtn.Text = InfJumpActive and t.InfJumpOn or t.InfJumpOff
    InvisibleBtn.Text = InvisibleActive and t.InvisibleOn or t.InvisibleOff
    TPToolBtn.Text = TPToolActive and t.TPToolOn or t.TPToolOff
    SavePosBtn.Text = t.SavePos
    TeleportPosBtn.Text = t.TeleportPos
    
    if PlayerListExpanded then TeleportPlayerBtn.Text = t.TeleportPlayerClose else TeleportPlayerBtn.Text = t.TeleportPlayerOpen end
    if InnocentListExpanded then KillInnocentsMenuBtn.Text = t.KillInnocentsClose else KillInnocentsMenuBtn.Text = t.KillInnocentsOpen end
    
    SoundMenuBtn.Text = t.SoundMenu
    SoundTitle.Text = t.SoundTitle
    SoundIdInput.PlaceholderText = t.SoundInput
    SoundPlayBtn.Text = t.SoundPlay
    SoundStopBtn.Text = t.SoundStop
    
    KillFeedBtn.Text = KillFeedActive and t.KillFeedOn or t.KillFeedOff
    DetectBtn.Text = DetectActive and t.DetectOn or t.DetectOff
    TargetSheriffBtn.Text = TargetSheriffActive and t.TargetSheriffOn or t.TargetSheriffOff
    TargetMurderBtn.Text = TargetMurderActive and t.TargetMurderOn or t.TargetMurderOff
    GrabGunBtn.Text = GrabGunActive and t.GrabGunOn or t.GrabGunOff
    GodModeBtn.Text = GodModeActive and t.GodModeOn or t.GodModeOff
    HideBtn.Text = HideActive and t.HideOn or t.HideOff
    FlingSheriffBtn.Text = t.FlingSheriffText
    FlingMurderBtn.Text = t.FlingMurderText
    ExtractBtn.Text = t.ExtractBtnText
    FlickEspBtn.Text = FlickEspActive and t.FlickEspOn or t.FlickEspOff
    FlickAimbotBtn.Text = FlickAimbotActive and t.FlickAimbotOn or t.FlickAimbotOff
    FlickWallbangBtn.Text = FlickWallbangActive and t.FlickWallbangOn or t.FlickWallbangOff
end

-- ==========================================
-- نظام الصوتيات والتفاعل
-- ==========================================
SoundMenuBtn.MouseButton1Click:Connect(function()
    SoundControlFrame.Visible = not SoundControlFrame.Visible
end)
SoundClose.MouseButton1Click:Connect(function() SoundControlFrame.Visible = false end)

local function playCustomSound()
    if activePlayerSound then
        activePlayerSound:Stop()
        activePlayerSound:Destroy()
        activePlayerSound = nil
    end
    
    local idText = SoundIdInput.Text
    local numId = string.match(idText, "%d+")
    
    if numId and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        activePlayerSound = Instance.new("Sound")
        activePlayerSound.SoundId = "rbxassetid://" .. numId
        activePlayerSound.Volume = playerVolume
        activePlayerSound.Looped = true
        activePlayerSound.RollOffMaxDistance = 150
        activePlayerSound.RollOffMinDistance = 15
        activePlayerSound.Parent = LocalPlayer.Character.HumanoidRootPart
        activePlayerSound:Play()
    end
end

SoundPlayBtn.MouseButton1Click:Connect(playCustomSound)
SoundStopBtn.MouseButton1Click:Connect(function()
    if activePlayerSound then activePlayerSound:Stop(); activePlayerSound:Destroy(); activePlayerSound = nil end
end)

local function updateVolumeDisplay()
    SoundVolDisplay.Text = "Vol: " .. math.floor(playerVolume * 100) .. "%"
    if activePlayerSound then activePlayerSound.Volume = playerVolume end
end
SoundVolUp.MouseButton1Click:Connect(function()
    playerVolume = math.clamp(playerVolume + 0.2, 0, 10) 
    updateVolumeDisplay()
end)
SoundVolDown.MouseButton1Click:Connect(function()
    playerVolume = math.clamp(playerVolume - 0.2, 0, 10)
    updateVolumeDisplay()
end)

LocalPlayer.CharacterAdded:Connect(function(char)
    if activePlayerSound then
        local oldId = activePlayerSound.SoundId
        activePlayerSound:Destroy()
        local hrp = char:WaitForChild("HumanoidRootPart", 5)
        if hrp then
            activePlayerSound = Instance.new("Sound")
            activePlayerSound.SoundId = oldId
            activePlayerSound.Volume = playerVolume
            activePlayerSound.Looped = true
            activePlayerSound.RollOffMaxDistance = 150
            activePlayerSound.RollOffMinDistance = 15
            activePlayerSound.Parent = hrp
            activePlayerSound:Play()
        end
    end
end)

-- ==========================================
-- برمجة الواجهات والتسجيل
-- ==========================================
LoginLangBtn.MouseButton1Click:Connect(function()
    CurrentLanguage = (CurrentLanguage == "AR") and "EN" or "AR"
    updateUI_Language()
end)

LoginCloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

LoginEnterBtn.MouseButton1Click:Connect(function()
    local code = LoginTextBox.Text
    if code == "Q4R" then
        LoginFrame.Visible = false
        MainFrame.Visible = true
        local Sound = Instance.new("Sound", workspace)
        Sound.SoundId = "rbxassetid://2865227271"
        Sound.Volume = 1
        Sound:Play()
        Sound.Ended:Connect(function() Sound:Destroy() end)
    else
        local oldText = LoginEnterBtn.Text
        local oldColor = LoginEnterBtn.BackgroundColor3
        local t = Translations[CurrentLanguage]
        LoginEnterBtn.Text = t.LoginWrong
        LoginEnterBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        task.wait(1.5)
        LoginEnterBtn.Text = oldText
        LoginEnterBtn.BackgroundColor3 = oldColor
        LoginTextBox.Text = ""
    end
end)

LangTabBtn.MouseButton1Click:Connect(function()
    CurrentLanguage = (CurrentLanguage == "AR") and "EN" or "AR"
    updateUI_Language()
end)

local function showPage(pageToShow, activeBtn)
    NewsPage.Visible = false
    GeneralPage.Visible = false
    Mm2Page.Visible = false
    FlickPage.Visible = false
    NewsTabBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    GeneralTabBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    Mm2TabBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    FlickTabBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    pageToShow.Visible = true
    activeBtn.BackgroundColor3 = Color3.fromRGB(24, 119, 242)
end

NewsTabBtn.MouseButton1Click:Connect(function() showPage(NewsPage, NewsTabBtn) end)
GeneralTabBtn.MouseButton1Click:Connect(function() showPage(GeneralPage, GeneralTabBtn) end)
Mm2TabBtn.MouseButton1Click:Connect(function() showPage(Mm2Page, Mm2TabBtn) end)
FlickTabBtn.MouseButton1Click:Connect(function() showPage(FlickPage, FlickTabBtn) end)

AdminAdminBtn.MouseButton1Click:Connect(function() AdminInputFrame.Visible = true end)
AdminCloseBtn.MouseButton1Click:Connect(function() AdminInputFrame.Visible = false; AdminTextBox.Text = "" end)

local lastNewsHash = ""

local function fetchNews()
    pcall(function()
        local rawNews
        if requestFunc then
            local res = requestFunc({Url = DATABASE_URL.."/api/public/news", Method = "GET"})
            rawNews = res.Body
        else
            rawNews = HttpService:GetAsync(DATABASE_URL.."/api/public/news")
        end
        
        if not rawNews or rawNews == "" then return end
        if rawNews == lastNewsHash then return end 
        lastNewsHash = rawNews
        
        local newsData = HttpService:JSONDecode(rawNews)
        
        for _, child in pairs(NewsPage:GetChildren()) do
            if child.Name == "NewsCard" then child:Destroy() end
        end
        
        if newsData then
            local newsList = newsData.news or newsData.messages or newsData.data
            if not newsList and type(newsData) == "table" then
                newsList = newsData
            end
            
            if type(newsList) == "table" then
                for i, item in pairs(newsList) do
                    if type(item) == "table" and item.message then
                        local senderId = item.senderUserId or 1
                        local name = item.name or "مطور"
                        local msg = item.message or ""
                        
                        local Card = Instance.new("Frame")
                        Card.Name = "NewsCard"
                        Card.Parent = NewsPage
                        Card.Size = UDim2.new(1, -10, 0, 50)
                        Card.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                        Card.BorderSizePixel = 0
                        Card.LayoutOrder = i
                        local cardCorner = Instance.new("UICorner")
                        cardCorner.CornerRadius = UDim.new(0, 6)
                        cardCorner.Parent = Card
                        
                        local CardAvatarFrame = Instance.new("Frame")
                        CardAvatarFrame.Size = UDim2.new(0, 36, 0, 36)
                        CardAvatarFrame.Position = UDim2.new(0, 6, 0.5, -18)
                        CardAvatarFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        CardAvatarFrame.Parent = Card
                        local cCorner = Instance.new("UICorner")
                        cCorner.CornerRadius = UDim.new(1, 0)
                        cCorner.Parent = CardAvatarFrame
                        
                        local CardAvatarImg = Instance.new("ImageLabel")
                        CardAvatarImg.Size = UDim2.new(1, 0, 1, 0)
                        CardAvatarImg.BackgroundTransparency = 1
                        pcall(function() CardAvatarImg.Image = game.Players:GetUserThumbnailAsync(tonumber(senderId), Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100) end)
                        CardAvatarImg.Parent = CardAvatarFrame
                        local imgCorner = Instance.new("UICorner")
                        imgCorner.CornerRadius = UDim.new(1, 0)
                        imgCorner.Parent = CardAvatarImg

                        local CardNameLabel = Instance.new("TextLabel")
                        CardNameLabel.Size = UDim2.new(0, 100, 0, 15)
                        CardNameLabel.Position = UDim2.new(0, 48, 0.1, 2)
                        CardNameLabel.BackgroundTransparency = 1
                        CardNameLabel.Font = Enum.Font.SourceSansBold
                        CardNameLabel.Text = name .. " 👑"
                        CardNameLabel.TextColor3 = Color3.fromRGB(0, 220, 100)
                        CardNameLabel.TextSize = 12
                        CardNameLabel.TextXAlignment = Enum.TextXAlignment.Left
                        CardNameLabel.Parent = Card

                        local CardMsgLabel = Instance.new("TextLabel")
                        CardMsgLabel.Size = UDim2.new(1, -55, 0, 24)
                        CardMsgLabel.Position = UDim2.new(0, 48, 0.45, 0)
                        CardMsgLabel.BackgroundTransparency = 1
                        CardMsgLabel.Font = Enum.Font.SourceSans
                        CardMsgLabel.Text = msg
                        CardMsgLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
                        CardMsgLabel.TextSize = 12
                        CardMsgLabel.TextWrapped = true
                        CardMsgLabel.TextXAlignment = Enum.TextXAlignment.Left
                        CardMsgLabel.TextYAlignment = Enum.TextYAlignment.Top
                        CardMsgLabel.Parent = Card
                    end
                end
            end
        end
    end)
end

task.spawn(fetchNews)

AdminSendBtn.MouseButton1Click:Connect(function()
    local text = AdminTextBox.Text
    if text ~= "" then
        AdminInputFrame.Visible = false
        AdminTextBox.Text = ""
        pcall(function()
            local body = HttpService:JSONEncode({
                senderUserId = tostring(LocalPlayer.UserId),
                name = LocalPlayer.Name,
                message = text
            })
            if requestFunc then
                requestFunc({Url = DATABASE_URL.."/api/public/news", Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = body})
            else
                HttpService:PostAsync(DATABASE_URL.."/api/public/news", body, Enum.HttpContentType.ApplicationJson)
            end
            
            lastNewsHash = "" 
            task.wait(1)
            fetchNews() 
        end)
    end
end)

TeleportPlayerBtn.MouseButton1Click:Connect(function()
    PlayerListExpanded = not PlayerListExpanded
    local t = Translations[CurrentLanguage]
    if PlayerListExpanded then
        TeleportPlayerBtn.Text = t.TeleportPlayerClose
        PlayerList.Visible = true
        OriginalSize = UDim2.new(0, 540, 0, 460)
        MainFrame:TweenSize(OriginalSize, "Out", "Quad", 0.25, true)
        ContentFrame:TweenSize(UDim2.new(1, -140, 1, -55), "Out", "Quad", 0.25, true)
        PlayerList:TweenSize(UDim2.new(1, 0, 0, 130), "Out", "Quad", 0.25, true)
    else
        TeleportPlayerBtn.Text = t.TeleportPlayerOpen
        PlayerList:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.2, true, function() PlayerList.Visible = false end)
        OriginalSize = UDim2.new(0, 540, 0, 300)
        MainFrame:TweenSize(OriginalSize, "Out", "Quad", 0.2, true)
        ContentFrame:TweenSize(UDim2.new(1, -140, 1, -55), "Out", "Quad", 0.2, true)
    end
end)

KillInnocentsMenuBtn.MouseButton1Click:Connect(function()
    InnocentListExpanded = not InnocentListExpanded
    local t = Translations[CurrentLanguage]
    if InnocentListExpanded then
        KillInnocentsMenuBtn.Text = t.KillInnocentsClose
        InnocentList.Visible = true
        OriginalSize = UDim2.new(0, 540, 0, 430)
        MainFrame:TweenSize(OriginalSize, "Out", "Quad", 0.25, true)
        ContentFrame:TweenSize(UDim2.new(1, -140, 1, -55), "Out", "Quad", 0.25, true)
        InnocentList:TweenSize(UDim2.new(1, 0, 0, 130), "Out", "Quad", 0.25, true)
    else
        KillInnocentsMenuBtn.Text = t.KillInnocentsOpen
        InnocentList:TweenSize(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.2, true, function() InnocentList.Visible = false end)
        OriginalSize = UDim2.new(0, 540, 0, 300)
        MainFrame:TweenSize(OriginalSize, "Out", "Quad", 0.2, true)
        ContentFrame:TweenSize(UDim2.new(1, -140, 1, -55), "Out", "Quad", 0.2, true)
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    if FreecamActive then FreecamBtn.MouseButton1Click:Fire() end
    ScreenGui:Destroy()
end)

MinimizeBtn.MouseButton1Click:Connect(function()
    IsMinimized = not IsMinimized
    if IsMinimized then
        ContentFrame.Visible = false
        Sidebar.Visible = false
        Title.Visible = false
        CloseBtn.Visible = false
        StudioWatermark.Visible = false
        MainCorner.CornerRadius = UDim.new(1, 0) 
        MainFrame:TweenSize(UDim2.new(0, 50, 0, 50), "Out", "Quad", 0.2, true)
        MinimizeBtn.Text = "Q"
        MinimizeBtn.Font = Enum.Font.SourceSansBold
        MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        MinimizeBtn.TextSize = 24
        MinimizeBtn.Size = UDim2.new(1, 0, 1, 0)
        MinimizeBtn.Position = UDim2.new(0, 0, 0, 0)
    else
        MainCorner.CornerRadius = OriginalCornerRadius
        MainFrame:TweenSize(OriginalSize, "Out", "Quad", 0.2, true, function()
            ContentFrame.Visible = true
            Sidebar.Visible = true
            Title.Visible = true
            CloseBtn.Visible = true
            StudioWatermark.Visible = true
        end)
        MinimizeBtn.Text = "—"
        MinimizeBtn.Font = Enum.Font.SourceSans
        MinimizeBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
        MinimizeBtn.TextSize = 16
        MinimizeBtn.Size = UDim2.new(0, 25, 0, 25)
        MinimizeBtn.Position = UDim2.new(1, -68, 0, 8)
    end
end)

NoclipBtn.MouseButton1Click:Connect(function()
    NoclipActive = not NoclipActive
    local t = Translations[CurrentLanguage]
    if NoclipActive then
        NoclipBtn.Text = t.NoclipOn
        NoclipBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        NoclipBtn.Text = t.NoclipOff
        NoclipBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

game:GetService("RunService").Stepped:Connect(function()
    if NoclipActive and LocalPlayer.Character then
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end)

HideBtn.MouseButton1Click:Connect(function()
    HideActive = not HideActive
    local t = Translations[CurrentLanguage]
    if HideActive then
        HideBtn.Text = t.HideOn
        HideBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        if not DetectActive then DetectBtn.MouseButton1Click:Fire() end
    else
        HideBtn.Text = t.HideOff
        HideBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and savedOriginalPos then
            LocalPlayer.Character.HumanoidRootPart.CFrame = savedOriginalPos
            savedOriginalPos = nil
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if HideActive and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local myRoot = LocalPlayer.Character.HumanoidRootPart
        if not savedOriginalPos then savedOriginalPos = myRoot.CFrame end
        myRoot.CFrame = CFrame.new(0, 800, 0)
        myRoot.Velocity = Vector3.new(0, 0, 0)
    end
end)

GodModeBtn.MouseButton1Click:Connect(function()
    GodModeActive = not GodModeActive
    local t = Translations[CurrentLanguage]
    if GodModeActive then
        GodModeBtn.Text = t.GodModeOn
        GodModeBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        local char = LocalPlayer.Character
        if char and char:FindFirstChildOfClass("Humanoid") then
            local oldHum = char:FindFirstChildOfClass("Humanoid")
            local newHum = oldHum:Clone()
            newHum.Name = "Humanoid"
            newHum.Parent = char
            oldHum:Destroy()
            workspace.CurrentCamera.CameraSubject = char
            local animate = char:FindFirstChild("Animate")
            if animate then
                animate.Disabled = true
                task.wait(0.1)
                animate.Disabled = false
            end
        end
    else
        GodModeBtn.Text = t.GodModeOff
        GodModeBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

FlickEspBtn.MouseButton1Click:Connect(function()
    FlickEspActive = not FlickEspActive
    local t = Translations[CurrentLanguage]
    if FlickEspActive then
        FlickEspBtn.Text = t.FlickEspOn
        FlickEspBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        FlickEspBtn.Text = t.FlickEspOff
        FlickEspBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character then
                local hl = player.Character:FindFirstChild("FlickESPHighlight")
                if hl then hl:Destroy() end
            end
        end
    end
end)

FlickAimbotBtn.MouseButton1Click:Connect(function()
    FlickAimbotActive = not FlickAimbotActive
    local t = Translations[CurrentLanguage]
    if FlickAimbotActive then
        FlickAimbotBtn.Text = t.FlickAimbotOn
        FlickAimbotBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        FlickAimbotBtn.Text = t.FlickAimbotOff
        FlickAimbotBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

FlickWallbangBtn.MouseButton1Click:Connect(function()
    FlickWallbangActive = not FlickWallbangActive
    local t = Translations[CurrentLanguage]
    if FlickWallbangActive then
        FlickWallbangBtn.Text = t.FlickWallbangOn
        FlickWallbangBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        FlickWallbangBtn.Text = t.FlickWallbangOff
        FlickWallbangBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

-- نظام اختراق الجدران للطلق (Wallbang Fix)
local function InitializeWallbang()
    local success, mt = pcall(function() return getrawmetatable(game) end)
    if not success or not mt then return end
    
    local oldNamecall = mt.__namecall
    if setreadonly then setreadonly(mt, false) end

    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}

        if FlickWallbangActive and not checkcaller() then
            if method == "Raycast" then
                local params = args[3]
                if typeof(params) == "RaycastParams" then
                    local newParams = RaycastParams.new()
                    newParams.FilterType = Enum.RaycastFilterType.Include
                    local hitTargets = {}
                    for _, p in ipairs(game:GetService("Players"):GetPlayers()) do
                        if p ~= LocalPlayer and p.Character then
                            table.insert(hitTargets, p.Character)
                        end
                    end
                    newParams.FilterDescendantsInstances = hitTargets
                    args[3] = newParams
                end
            end
        end
        
        return oldNamecall(self, unpack(args))
    end)
    
    if setreadonly then setreadonly(mt, true) end
end
task.spawn(InitializeWallbang)

game:GetService("RunService").RenderStepped:Connect(function()
    if FlickEspActive then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local highlight = player.Character:FindFirstChild("FlickESPHighlight")
                if not highlight then
                    highlight = Instance.new("Highlight")
                    highlight.Name = "FlickESPHighlight"
                    highlight.Parent = player.Character
                    highlight.FillColor = Color3.fromRGB(255, 0, 50)
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.FillTransparency = 0.5
                    highlight.OutlineTransparency = 0.1
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
            end
        end
    end

    if FlickAimbotActive then
        local myChar = LocalPlayer.Character
        if myChar and myChar:FindFirstChild("HumanoidRootPart") then
            local myPos = Camera.CFrame.Position
            local closestDist = 150
            local targetHead = nil

            for _, player in pairs(game.Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                    local targetHum = player.Character:FindFirstChildOfClass("Humanoid")
                    if targetHum and targetHum.Health > 0 then
                        local head = player.Character.Head
                        local dist = (head.Position - myPos).Magnitude
                        if dist < closestDist then
                            local rayDirection = (head.Position - myPos).Unit * dist
                            local raycastParams = RaycastParams.new()
                            raycastParams.FilterDescendantsInstances = {myChar}
                            raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                            
                            local rayResult = workspace:Raycast(myPos, rayDirection, raycastParams)
                            if not rayResult or rayResult.Instance:IsDescendantOf(player.Character) then
                                closestDist = dist
                                targetHead = head
                            end
                        end
                    end
                end
            end

            if targetHead then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetHead.Position)
            end
        end
    end
end)

local UIS = game:GetService("UserInputService")
local mouseConnection

mouseConnection = UIS.InputChanged:Connect(function(input, processed)
    if FreecamActive and input.UserInputType == Enum.UserInputType.MouseMovement then
        local sensitivity = 0.25
        camRotX = camRotX - (input.Delta.X * sensitivity)
        camRotY = camRotY - (input.Delta.Y * sensitivity)
        camRotY = math.clamp(camRotY, -85, 85)
    end
end)

FreecamBtn.MouseButton1Click:Connect(function()
    FreecamActive = not FreecamActive
    local t = Translations[CurrentLanguage]
    if FreecamActive then
        FreecamBtn.Text = t.FreecamOn
        FreecamBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.Anchored = true
            freecamPos = Camera.CFrame.Position
            local x, y, z = Camera.CFrame:ToOrientation()
            camRotX = math.deg(y)
            camRotY = math.deg(x)
            UIS.MouseBehavior = Enum.MouseBehavior.LockWithCenter
            Camera.CameraType = Enum.CameraType.Scriptable
        end
    else
        FreecamBtn.Text = t.FreecamOff
        FreecamBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
        UIS.MouseBehavior = Enum.MouseBehavior.Default
        Camera.CameraType = Enum.CameraType.Custom
    end
end)

game:GetService("RunService").RenderStepped:Connect(function(dt)
    if FreecamActive then
        local speed = 60 * dt
        local moveVector = Vector3.new(0,0,0)
        local camCFrame = CFrame.Angles(0, math.rad(camRotX), 0) * CFrame.Angles(math.rad(camRotY), 0, 0)
        if UIS:IsKeyDown(Enum.KeyCode.W) then moveVector = moveVector + camCFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then moveVector = moveVector - camCFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then moveVector = moveVector - camCFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then moveVector = moveVector + camCFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then moveVector = moveVector + Vector3.new(0, 1, 0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then moveVector = moveVector - Vector3.new(0, 1, 0) end
        freecamPos = freecamPos + (moveVector * speed)
        Camera.CFrame = CFrame.new(freecamPos) * camCFrame
    end
end)

local flySpeed = 50
FlyBtn.MouseButton1Click:Connect(function()
    FlyActive = not FlyActive
    local t = Translations[CurrentLanguage]
    if FlyActive then
        FlyBtn.Text = t.FlyOn
        FlyBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        task.spawn(function()
            local char = LocalPlayer.Character
            if not char then return end
            local root = char:FindFirstChild("HumanoidRootPart")
            if not root then return end
            local bodyVel = Instance.new("BodyVelocity")
            bodyVel.Name = "FlyVelocity"
            bodyVel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVel.Velocity = Vector3.new(0, 0, 0)
            bodyVel.Parent = root
            local bodyGyro = Instance.new("BodyGyro")
            bodyGyro.Name = "FlyGyro"
            bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            bodyGyro.D = 100
            bodyGyro.P = 10000
            bodyGyro.CFrame = root.CFrame
            bodyGyro.Parent = root
            while FlyActive and char.Parent do
                task.wait()
                local moveDirection = Vector3.new(0,0,0)
                if UIS:IsKeyDown(Enum.KeyCode.W) then moveDirection = moveDirection + Camera.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.S) then moveDirection = moveDirection - Camera.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.A) then moveDirection = moveDirection - Camera.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.D) then moveDirection = moveDirection + Camera.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.Space) then moveDirection = moveDirection + Vector3.new(0, 1, 0) end
                if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then moveDirection = moveDirection - Vector3.new(0, 1, 0) end
                bodyGyro.CFrame = Camera.CFrame
                bodyVel.Velocity = moveDirection * flySpeed
            end
            if bodyVel then bodyVel:Destroy() end
            if bodyGyro then bodyGyro:Destroy() end
        end)
    else
        FlyBtn.Text = t.FlyOff
        FlyBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

UIS.JumpRequest:Connect(function()
    if InfJumpActive then
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end
    end
end)

InfJumpBtn.MouseButton1Click:Connect(function()
    InfJumpActive = not InfJumpActive
    local t = Translations[CurrentLanguage]
    if InfJumpActive then
        InfJumpBtn.Text = t.InfJumpOn
        InfJumpBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        InfJumpBtn.Text = t.InfJumpOff
        InfJumpBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

local function applyInvisibility(active)
    local char = LocalPlayer.Character
    if not char then return end
    local rootPart = char:FindFirstChild("HumanoidRootPart")
    local lowerTorso = char:FindFirstChild("LowerTorso") or char:FindFirstChild("Torso")
    if rootPart and lowerTorso then
        local joint = rootPart:FindFirstChild("RootJoint") or lowerTorso:FindFirstChild("RootJoint")
        if joint then
            joint.C0 = active and CFrame.new(0, -99999, 0) or CFrame.new(0, 0, 0)
        end
    end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            if active then
                part.Transparency = (part.Name == "HumanoidRootPart") and 1 or 0.75
                part.CanCollide = false
            else
                part.Transparency = (part.Name == "HumanoidRootPart") and 1 or 0
                part.CanCollide = true
            end
        end
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    if InvisibleActive then applyInvisibility(true) end
end)

InvisibleBtn.MouseButton1Click:Connect(function()
    InvisibleActive = not InvisibleActive
    local t = Translations[CurrentLanguage]
    if InvisibleActive then
        InvisibleBtn.Text = t.InvisibleOn
        InvisibleBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        applyInvisibility(true)
    else
        InvisibleBtn.Text = t.InvisibleOff
        InvisibleBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        applyInvisibility(false)
    end
end)

TPToolBtn.MouseButton1Click:Connect(function()
    TPToolActive = not TPToolActive
    local t = Translations[CurrentLanguage]
    if TPToolActive then
        TPToolBtn.Text = t.TPToolOn
        TPToolBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        local Tool = Instance.new("Tool")
        Tool.Name = "Q4R TP-Tool"
        Tool.RequiresHandle = false
        Tool.Parent = LocalPlayer:WaitForChild("Backpack")
        Tool.Activated:Connect(function()
            local mouse = LocalPlayer:GetMouse()
            if mouse and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0, 3, 0))
            end
        end)
    else
        TPToolBtn.Text = t.TPToolOff
        TPToolBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        local existingTool = LocalPlayer.Backpack:FindFirstChild("Q4R TP-Tool") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Q4R TP-Tool"))
        if existingTool then existingTool:Destroy() end
    end
end)

SavePosBtn.MouseButton1Click:Connect(function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        SavedCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        local t = Translations[CurrentLanguage]
        SavePosBtn.Text = t.SavePosSuccess
        task.wait(1)
        SavePosBtn.Text = t.SavePos
    end
end)

TeleportPosBtn.MouseButton1Click:Connect(function()
    local t = Translations[CurrentLanguage]
    if SavedCFrame then
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = SavedCFrame
        end
    else
        TeleportPosBtn.Text = t.NoSavedPos
        task.wait(1)
        TeleportPosBtn.Text = t.TeleportPos
    end
end)

DetectBtn.MouseButton1Click:Connect(function()
    DetectActive = not DetectActive
    local t = Translations[CurrentLanguage]
    if DetectActive then
        DetectBtn.Text = t.DetectOn
        DetectBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        DetectBtn.Text = t.DetectOff
        DetectBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character then
                local hl = player.Character:FindFirstChild("ESPHighlight")
                if hl then hl:Destroy() end
            end
        end
    end
end)

local function getPlayerWeaponStatus(player)
    local hasGun, hasKnife = false, false
    local gunKeywords = {"gun", "pistol", "revolver", "rifle", "shotgun", "weapon", "sheriff"}
    local knifeKeywords = {"knife", "sword", "blade", "dagger", "katana", "murder"}
    local function checkItem(item)
        if item:IsA("Tool") then
            local itemName = item.Name:lower()
            for _, kw in ipairs(gunKeywords) do if itemName:find(kw) then hasGun = true break end end
            for _, kw in ipairs(knifeKeywords) do if itemName:find(kw) then hasKnife = true break end end
        end
    end
    if player:FindFirstChild("Backpack") then for _, item in pairs(player.Backpack:GetChildren()) do checkItem(item) end end
    if player.Character then for _, item in pairs(player.Character:GetChildren()) do checkItem(item) end end
    return hasGun, hasKnife
end

game:GetService("RunService").Heartbeat:Connect(function()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local highlight = player.Character:FindFirstChild("ESPHighlight")
            if DetectActive then
                if not highlight then
                    highlight = Instance.new("Highlight")
                    highlight.Name = "ESPHighlight"
                    highlight.Parent = player.Character
                    highlight.FillTransparency = 0.5
                    highlight.OutlineTransparency = 0
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
                local hasGun, hasKnife = getPlayerWeaponStatus(player)
                if hasKnife then
                    highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                    highlight.FillColor = Color3.fromRGB(150, 0, 0)
                elseif hasGun then
                    highlight.OutlineColor = Color3.fromRGB(0, 120, 255)
                    highlight.FillColor = Color3.fromRGB(0, 60, 150)
                else
                    highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
                    highlight.FillColor = Color3.fromRGB(0, 120, 0)
                end
            else
                if highlight then highlight:Destroy() end
            end
        end
    end
end)

local function isInnocent(player)
    local roleValue = player:FindFirstChild("Role") or (player.Character and player.Character:FindFirstChild("Role"))
    if roleValue then
        return roleValue.Value == "Innocent" or roleValue.Value == "innocent"
    end
    local hasGun, hasKnife = getPlayerWeaponStatus(player)
    return not hasGun and not hasKnife and player ~= LocalPlayer
end

local function getTargetPlayer(targetType)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hasGun, hasKnife = getPlayerWeaponStatus(player)
            if targetType == "Sheriff" and hasGun then
                return player
            elseif targetType == "Murder" and hasKnife then
                return player
            end
        end
    end
    return nil
end

task.spawn(function()
    while true do
        task.wait(0.1)
        if TargetSheriffActive or TargetMurderActive then
            local targetType = TargetSheriffActive and "Sheriff" or "Murder"
            local targetPlayer = getTargetPlayer(targetType)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetRoot = targetPlayer.Character.HumanoidRootPart
                local localChar = LocalPlayer.Character
                if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                    local localRoot = localChar.HumanoidRootPart
                    localRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 1.5)
                    local activeTool = localChar:FindFirstChildOfClass("Tool")
                    if activeTool then activeTool:Activate() end
                end
            end
        end
    end
end)

local function localHasGun()
    if LocalPlayer.Backpack:FindFirstChild("Gun") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun")) then return true end
    for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
        if item:IsA("Tool") and (item.Name:lower():find("gun") or item.Name:lower():find("revolver")) then return true end
    end
    if LocalPlayer.Character then
        for _, item in pairs(LocalPlayer.Character:GetChildren()) do
            if item:IsA("Tool") and (item.Name:lower():find("gun") or item.Name:lower():find("revolver")) then return true end
        end
    end
    return false
end

-- ==========================================
-- دوال الفنلق وسحب السلاح المعدلة
-- ==========================================

-- دالة إخراج اللاعب خارج الماب (Fling)
local function flingTarget(targetPlayer)
    if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    local myChar = LocalPlayer.Character
    if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return end
    
    local myRoot = myChar.HumanoidRootPart
    local originalCFrame = myRoot.CFrame
    
    local bav = Instance.new("BodyAngularVelocity")
    bav.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    bav.AngularVelocity = Vector3.new(0, 999999, 0)
    bav.Parent = myRoot
    
    local startTime = tick()
    while tick() - startTime < 2 do
        task.wait()
        if targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- نقل اللاعب المستهدف خارج الماب ومتابعة الطيران به
            myRoot.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            myRoot.Velocity = Vector3.new(99999, 99999, 99999)
        else
            break
        end
    end
    
    bav:Destroy()
    myRoot.Velocity = Vector3.new(0, 0, 0)
    myRoot.CFrame = originalCFrame
end

FlingSheriffBtn.MouseButton1Click:Connect(function()
    local sheriff = getTargetPlayer("Sheriff")
    if sheriff then
        flingTarget(sheriff)
    end
end)

FlingMurderBtn.MouseButton1Click:Connect(function()
    local murder = getTargetPlayer("Murder")
    if murder then
        flingTarget(murder)
    end
end)

-- تتبع الشريف وسحب السلاح تلقائياً عند موته
task.spawn(function()
    local sheriffLastPos = nil
    while true do
        task.wait(0.1)
        
        -- التتبع المستمر للشريف أثناء حيلولته حياً
        local sheriff = getTargetPlayer("Sheriff")
        if sheriff and sheriff.Character and sheriff.Character:FindFirstChild("HumanoidRootPart") then
            sheriffLastPos = sheriff.Character.HumanoidRootPart.CFrame
        end

        if GrabGunActive and not localHasGun() then
            local gunDrop = workspace:FindFirstChild("GunDrop") or (workspace:FindFirstChild("Normal") and workspace.Normal:FindFirstChild("GunDrop"))
            
            if not gunDrop then
                for _, item in pairs(workspace:GetChildren()) do
                    if item.Name == "GunDrop" then
                        gunDrop = item
                        break
                    end
                end
            end
            
            if (gunDrop or sheriffLastPos) and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local rootPart = LocalPlayer.Character.HumanoidRootPart
                local localHum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                
                if localHum and localHum.Health > 0 then
                    local startPos = rootPart.CFrame
                    local targetCFrame = nil
                    
                    if gunDrop then
                        if gunDrop:IsA("BasePart") then
                            targetCFrame = gunDrop.CFrame
                        elseif gunDrop:IsA("Model") then
                            local handle = gunDrop:FindFirstChild("Handle") or gunDrop:FindFirstChildOfClass("BasePart")
                            if handle then targetCFrame = handle.CFrame end
                        else
                            targetCFrame = gunDrop:GetModelCFrame() or CFrame.new(gunDrop.Position)
                        end
                    else
                        targetCFrame = sheriffLastPos
                    end
                    
                    if targetCFrame then
                        local grabTimeout = 0
                        while not localHasGun() and grabTimeout < 25 and localHum.Health > 0 do
                            rootPart.CFrame = targetCFrame
                            rootPart.Velocity = Vector3.new(0, 0, 0)
                            
                            pcall(function()
                                local currentGunDrop = workspace:FindFirstChild("GunDrop") or (workspace:FindFirstChild("Normal") and workspace.Normal:FindFirstChild("GunDrop"))
                                if currentGunDrop then
                                    for _, v in pairs(currentGunDrop:GetDescendants()) do
                                        if v:IsA("TouchTransmitter") then
                                            firetouchinterest(rootPart, v.Parent, 0)
                                            task.wait()
                                            firetouchinterest(rootPart, v.Parent, 1)
                                        end
                                    end
                                end
                            end)
                            
                            task.wait(0.1)
                            grabTimeout = grabTimeout + 1
                        end
                        
                        -- العودة للمكان الأصلي بعد السحب
                        rootPart.CFrame = startPos
                        rootPart.Velocity = Vector3.new(0, 0, 0)
                        task.wait(1)
                    end
                end
            end
        end
    end
end)

-- ==========================================
-- برمجة الزر المستخرج والضغط بحرف Q
-- ==========================================
local function toggleExtractedAttack()
    AttackMurderActive = not AttackMurderActive
    if AttackMurderActive then
        ExtractedAttackBtn.Text = "هجوم القاتل: ON (Q)"
        ExtractedAttackBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        ExtractedAttackBtn.Text = "هجوم القاتل: OFF (Q)"
        ExtractedAttackBtn.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
    end
end

ExtractedAttackBtn.MouseButton1Click:Connect(toggleExtractedAttack)

ExtractBtn.MouseButton1Click:Connect(function()
    ExtractedAttackBtn.Visible = not ExtractedAttackBtn.Visible
end)

-- الاستجابة للضغط على حرف Q في الكمبيوتر
UIS.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.Q then
        if ExtractedAttackBtn.Visible then
            toggleExtractedAttack()
        end
    end
end)

-- حلقة التوجيه والهجوم التلقائي على القاتل
game:GetService("RunService").RenderStepped:Connect(function()
    if AttackMurderActive then
        local murderer = getTargetPlayer("Murder")
        if murderer and murderer.Character and murderer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPart = murderer.Character:FindFirstChild("Head") or murderer.Character.HumanoidRootPart
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPart.Position)
            
            local char = LocalPlayer.Character
            if char then
                local tool = char:FindFirstChildOfClass("Tool")
                if tool then
                    tool:Activate()
                end
            end
        end
    end
end)

TargetSheriffBtn.MouseButton1Click:Connect(function()
    TargetSheriffActive = not TargetSheriffActive
    local t = Translations[CurrentLanguage]
    if TargetSheriffActive then
        TargetSheriffActive = true
        TargetMurderActive = false
        TargetSheriffBtn.Text = t.TargetSheriffOn
        TargetSheriffBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        TargetMurderBtn.Text = t.TargetMurderOff
        TargetMurderBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    else
        TargetSheriffBtn.Text = t.TargetSheriffOff
        TargetSheriffBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

TargetMurderBtn.MouseButton1Click:Connect(function()
    TargetMurderActive = not TargetMurderActive
    local t = Translations[CurrentLanguage]
    if TargetMurderActive then
        TargetMurderActive = true
        TargetSheriffActive = false
        TargetMurderBtn.Text = t.TargetMurderOn
        TargetMurderBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
        TargetSheriffBtn.Text = t.TargetSheriffOff
        TargetSheriffBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    else
        TargetMurderBtn.Text = t.TargetMurderOff
        TargetMurderBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

GrabGunBtn.MouseButton1Click:Connect(function()
    GrabGunActive = not GrabGunActive
    local t = Translations[CurrentLanguage]
    if GrabGunActive then
        GrabGunBtn.Text = t.GrabGunOn
        GrabGunBtn.BackgroundColor3 = Color3.fromRGB(46, 175, 99)
    else
        GrabGunBtn.Text = t.GrabGunOff
        GrabGunBtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    end
end)

local function updateGeneralPlayerList()
    for _, child in pairs(PlayerScroll:GetChildren()) do
        if child:IsA("TextButton") then child:Destroy() end
    end
    
    local index = 0
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local Button = Instance.new("TextButton")
            Button.Parent = PlayerScroll
            Button.Size = UDim2.new(1, -12, 0, 26)
            Button.Position = UDim2.new(0, 0, 0, index * 30)
            Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
            Button.TextColor3 = Color3.fromRGB(30, 30, 30) 
            Button.Font = Enum.Font.SourceSansBold
            Button.TextSize = 13
            Button.Text = player.DisplayName
            Button.BorderSizePixel = 0
            
            local btnCorner = Instance.new("UICorner")
            btnCorner.CornerRadius = UDim.new(0, 4)
            btnCorner.Parent = Button
            
            Button.MouseButton1Click:Connect(function()
                local localChar = LocalPlayer.Character
                local targetChar = player.Character
                if localChar and targetChar and targetChar:FindFirstChild("HumanoidRootPart") and localChar:FindFirstChild("HumanoidRootPart") then
                    localChar.HumanoidRootPart.CFrame = targetChar.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)
                end
            end)
            index = index + 1
        end
    end
    updateCanvasSize(PlayerScroll, PlayerListLayout)
end

local function updateInnocentList()
    for _, child in pairs(InnocentScroll:GetChildren()) do
        if child:IsA("TextButton") then child:Destroy() end
    end
    
    local index = 0
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= LocalPlayer and isInnocent(player) then
            local Button = Instance.new("TextButton")
            Button.Parent = InnocentScroll
            Button.Size = UDim2.new(1, -12, 0, 26)
            Button.Position = UDim2.new(0, 0, 0, index * 30)
            Button.BackgroundColor3 = Color3.fromRGB(255, 210, 210)
            Button.TextColor3 = Color3.fromRGB(150, 0, 0) 
            Button.Font = Enum.Font.SourceSansBold
            Button.TextSize = 13
            Button.Text = player.DisplayName .. " 🎯"
            Button.BorderSizePixel = 0
            
            local btnCorner = Instance.new("UICorner")
            btnCorner.CornerRadius = UDim.new(0, 4)
            btnCorner.Parent = Button
            
            Button.MouseButton1Click:Connect(function()
                currentTarget = player
                local localChar = LocalPlayer.Character
                if localChar and localChar:FindFirstChild("HumanoidRootPart") and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    localChar.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.5)
                end
            end)
            index = index + 1
        end
    end
    updateCanvasSize(InnocentScroll, InnocentListLayout)
end

-- تفعيل قائمة الأبرياء بشكل تلقائي
task.spawn(function()
    while true do
        task.wait(0.1)
        if currentTarget and currentTarget.Character and currentTarget.Character:FindFirstChild("HumanoidRootPart") then
            local localChar = LocalPlayer.Character
            if localChar and localChar:FindFirstChild("HumanoidRootPart") then
                localChar.HumanoidRootPart.CFrame = currentTarget.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.5)
                local activeTool = localChar:FindFirstChildOfClass("Tool")
                if activeTool then activeTool:Activate() end
            end
        end
    end
end)

game.Players.PlayerAdded:Connect(function()
    task.wait(1)
    if PlayerList.Visible then updateGeneralPlayerList() end
    if InnocentList.Visible then updateInnocentList() end
end)

game.Players.PlayerRemoving:Connect(function()
    if PlayerList.Visible then updateGeneralPlayerList() end
    if InnocentList.Visible then updateInnocentList() end
end)

-- تهيئة القوائم واللغة عند التشغيل
updateUI_Language()
updateGeneralPlayerList()
updateInnocentList()
