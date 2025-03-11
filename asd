local MainUI = Instance.new("Frame")
local Tab = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TabButtons = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local TabTemplate = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TabContent = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Page1 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local List = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local ButtonTemplate = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local SubLabel = Instance.new("TextLabel")
local UIPadding_4 = Instance.new("UIPadding")
local ToggleTemplate = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local TitleLabel_2 = Instance.new("TextLabel")
local UIPadding_5 = Instance.new("UIPadding")
local SubLabel_2 = Instance.new("TextLabel")
local UIPadding_6 = Instance.new("UIPadding")
local Switch = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Circle = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local SliderTemplate = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local TitleLabel_3 = Instance.new("TextLabel")
local UIPadding_7 = Instance.new("UIPadding")
local SubLabel_3 = Instance.new("TextLabel")
local UIPadding_8 = Instance.new("UIPadding")
local ValueLabel = Instance.new("TextLabel")
local UICorner_13 = Instance.new("UICorner")
local SliderBar = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local SliderButton = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local DropdownTemplate = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local TitleLabel_4 = Instance.new("TextLabel")
local UIPadding_9 = Instance.new("UIPadding")
local SubLabel_4 = Instance.new("TextLabel")
local UIPadding_10 = Instance.new("UIPadding")
local DropdownButton = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local DropdownList = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_11 = Instance.new("UIPadding")
local UICorner_18 = Instance.new("UICorner")
local OptionTemplate = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local SelectedLabel = Instance.new("TextLabel")
local UICorner_20 = Instance.new("UICorner")
local TextboxTemplate = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local TitleLabel_5 = Instance.new("TextLabel")
local UIPadding_12 = Instance.new("UIPadding")
local SubLabel_5 = Instance.new("TextLabel")
local UIPadding_13 = Instance.new("UIPadding")
local InputBox = Instance.new("TextBox")
local UICorner_22 = Instance.new("UICorner")
local HeaderTemplate = Instance.new("Frame")
local UICorner_23 = Instance.new("UICorner")
local TitleLabel_6 = Instance.new("TextLabel")
local UIPadding_14 = Instance.new("UIPadding")
local ParagraphTemplate = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local TitleLabel_7 = Instance.new("TextLabel")
local UIPadding_15 = Instance.new("UIPadding")
local SubLabel_6 = Instance.new("TextLabel")
local UIPadding_16 = Instance.new("UIPadding")
local Page2 = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local Page3 = Instance.new("Frame")
local UICorner_26 = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local DraggingFrame = Instance.new("Frame")
local UICorner_28 = Instance.new("UICorner")
local TitleFrame = Instance.new("Frame")
local UICorner_29 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_30 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")


--Properties:

MainUI.Name = "MainUI"
MainUI.Parent = game.CoreGui
MainUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainUI.BackgroundTransparency = 1.000
MainUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUI.BorderSizePixel = 0
MainUI.Position = UDim2.new(0.191121146, 0, 0.228855714, 0)
MainUI.Size = UDim2.new(0, 821, 0, 485)


Tab.Name = "Tab"
Tab.Parent = MainUI
Tab.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
Tab.BackgroundTransparency = 0.150
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.BorderSizePixel = 0
Tab.Position = UDim2.new(0.36744085, 0, 0.070103094, 0)
Tab.Size = UDim2.new(0, 369, 0, 442)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Tab

TabButtons.Name = "TabButtons"
TabButtons.Parent = Tab
TabButtons.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
TabButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButtons.BorderSizePixel = 0
TabButtons.Position = UDim2.new(-0.391248256, 0, -3.27269954e-05, 0)
TabButtons.Size = UDim2.new(0, 137, 0, 442)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TabButtons

ScrollingFrame.Parent = TabButtons
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.0384615399, 0)
ScrollingFrame.Size = UDim2.new(0, 137, 0, 410)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 10, 0)
ScrollingFrame.ScrollBarThickness = 2

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingTop = UDim.new(0, 10)

TabTemplate.Name = "TabTemplate"
TabTemplate.Parent = ScrollingFrame
TabTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
TabTemplate.BackgroundTransparency = 0.650
TabTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabTemplate.BorderSizePixel = 0
TabTemplate.Position = UDim2.new(-0.109489053, 0, 1.52587887e-07, 0)
TabTemplate.Size = UDim2.new(0, 135, 0, 30)
TabTemplate.Font = Enum.Font.SourceSansBold
TabTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
TabTemplate.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 20)
UICorner_3.Parent = TabTemplate

TabContent.Name = "TabContent"
TabContent.Parent = Tab
TabContent.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
TabContent.BackgroundTransparency = 0.150
TabContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabContent.BorderSizePixel = 0
TabContent.Position = UDim2.new(0, 0, -3.45221487e-08, 0)
TabContent.Size = UDim2.new(0, 369, 0, 441)

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = TabContent

Page1.Name = "Page1"
Page1.Parent = TabContent
Page1.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
Page1.BackgroundTransparency = 0.150
Page1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page1.BorderSizePixel = 0
Page1.Position = UDim2.new(0, 0, -3.45221487e-08, 0)
Page1.Size = UDim2.new(0, 369, 0, 441)

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = Page1

List.Name = "List"
List.Parent = Page1
List.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
List.BackgroundTransparency = 1.000
List.BorderColor3 = Color3.fromRGB(0, 0, 0)
List.BorderSizePixel = 0
List.Position = UDim2.new(-0.0101047093, 0, 0.0266124345, 0)
List.Size = UDim2.new(0, 375, 0, 416)

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = List

ScrollingFrame_2.Parent = List
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0.00265957438, 0, 0.014423077, 0)
ScrollingFrame_2.Size = UDim2.new(0, 369, 0, 402)
ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 10, 0)
ScrollingFrame_2.ScrollBarThickness = 2

UIListLayout_2.Parent = ScrollingFrame_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

UIPadding_2.Parent = ScrollingFrame_2
UIPadding_2.PaddingLeft = UDim.new(0, 5)

ButtonTemplate.Name = "ButtonTemplate"
ButtonTemplate.Parent = ScrollingFrame_2
ButtonTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
ButtonTemplate.BackgroundTransparency = 0.750
ButtonTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTemplate.BorderSizePixel = 0
ButtonTemplate.Position = UDim2.new(-0.00193623581, 0, 0, 0)
ButtonTemplate.Size = UDim2.new(0, 362, 0, 48)

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = ButtonTemplate

Button.Name = "Button"
Button.Parent = ButtonTemplate
Button.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.772440195, 0, 0.229166672, 0)
Button.Size = UDim2.new(0, 70, 0, 25)
Button.Font = Enum.Font.SourceSansBold
Button.Text = "Click !!"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000

UICorner_8.CornerRadius = UDim.new(0, 10)
UICorner_8.Parent = Button

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = ButtonTemplate
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(-0.00175450789, 0, 0, 0)
TitleLabel.Size = UDim2.new(0, 148, 0, 21)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "Button"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 14.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = TitleLabel
UIPadding_3.PaddingLeft = UDim.new(0, 5)
UIPadding_3.PaddingTop = UDim.new(0, 5)

SubLabel.Name = "SubLabel"
SubLabel.Parent = TitleLabel
SubLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubLabel.BackgroundTransparency = 1.000
SubLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubLabel.BorderSizePixel = 0
SubLabel.Position = UDim2.new(-0.0349086933, 0, 0.6875, 0)
SubLabel.Size = UDim2.new(0, 148, 0, 21)
SubLabel.Font = Enum.Font.SourceSansBold
SubLabel.TextColor3 = Color3.fromRGB(126, 126, 126)
SubLabel.TextSize = 14.000
SubLabel.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_4.Parent = SubLabel
UIPadding_4.PaddingLeft = UDim.new(0, 5)
UIPadding_4.PaddingTop = UDim.new(0, 5)

ToggleTemplate.Name = "ToggleTemplate"
ToggleTemplate.Parent = ScrollingFrame_2
ToggleTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
ToggleTemplate.BackgroundTransparency = 0.750
ToggleTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleTemplate.BorderSizePixel = 0
ToggleTemplate.Position = UDim2.new(-0.00193623581, 0, 0.124378107, 0)
ToggleTemplate.Size = UDim2.new(0, 362, 0, 48)

UICorner_9.CornerRadius = UDim.new(0, 10)
UICorner_9.Parent = ToggleTemplate

TitleLabel_2.Name = "TitleLabel"
TitleLabel_2.Parent = ToggleTemplate
TitleLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_2.BackgroundTransparency = 1.000
TitleLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_2.BorderSizePixel = 0
TitleLabel_2.Size = UDim2.new(0, 148, 0, 21)
TitleLabel_2.Font = Enum.Font.SourceSansBold
TitleLabel_2.Text = "Toggle"
TitleLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_2.TextSize = 14.000
TitleLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_5.Parent = TitleLabel_2
UIPadding_5.PaddingLeft = UDim.new(0, 5)
UIPadding_5.PaddingTop = UDim.new(0, 5)

SubLabel_2.Name = "SubLabel"
SubLabel_2.Parent = TitleLabel_2
SubLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubLabel_2.BackgroundTransparency = 1.000
SubLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubLabel_2.BorderSizePixel = 0
SubLabel_2.Position = UDim2.new(-0.0349650346, 0, 0.6875, 0)
SubLabel_2.Size = UDim2.new(0, 148, 0, 21)
SubLabel_2.Font = Enum.Font.SourceSansBold
SubLabel_2.TextColor3 = Color3.fromRGB(126, 126, 126)
SubLabel_2.TextSize = 14.000
SubLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_6.Parent = SubLabel_2
UIPadding_6.PaddingLeft = UDim.new(0, 5)
UIPadding_6.PaddingTop = UDim.new(0, 5)

Switch.Name = "Switch"
Switch.Parent = ToggleTemplate
Switch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
Switch.BorderSizePixel = 0
Switch.Position = UDim2.new(0.844263256, 0, 0.291666657, 0)
Switch.Size = UDim2.new(0, 43, 0, 19)
Switch.Font = Enum.Font.SourceSans
Switch.Text = ""
Switch.TextColor3 = Color3.fromRGB(0, 0, 0)
Switch.TextSize = 14.000

UICorner_10.CornerRadius = UDim.new(0, 10)
UICorner_10.Parent = Switch

Circle.Name = "Circle"
Circle.Parent = Switch
Circle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Circle.BorderSizePixel = 0
Circle.Position = UDim2.new(0.125700518, 0, 0.274025351, 0)
Circle.Size = UDim2.new(0, 8, 0, 9)

UICorner_11.CornerRadius = UDim.new(0, 50)
UICorner_11.Parent = Circle

SliderTemplate.Name = "SliderTemplate"
SliderTemplate.Parent = ScrollingFrame_2
SliderTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
SliderTemplate.BackgroundTransparency = 0.750
SliderTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
SliderTemplate.BorderSizePixel = 0
SliderTemplate.Position = UDim2.new(0.0192307699, 0, 0.24378109, 0)
SliderTemplate.Size = UDim2.new(0, 362, 0, 48)

UICorner_12.CornerRadius = UDim.new(0, 10)
UICorner_12.Parent = SliderTemplate

TitleLabel_3.Name = "TitleLabel"
TitleLabel_3.Parent = SliderTemplate
TitleLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_3.BackgroundTransparency = 1.000
TitleLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_3.BorderSizePixel = 0
TitleLabel_3.Size = UDim2.new(0, 148, 0, 21)
TitleLabel_3.Font = Enum.Font.SourceSansBold
TitleLabel_3.Text = "Slider"
TitleLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_3.TextSize = 14.000
TitleLabel_3.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_7.Parent = TitleLabel_3
UIPadding_7.PaddingLeft = UDim.new(0, 5)
UIPadding_7.PaddingTop = UDim.new(0, 5)

SubLabel_3.Name = "SubLabel"
SubLabel_3.Parent = TitleLabel_3
SubLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubLabel_3.BackgroundTransparency = 1.000
SubLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubLabel_3.BorderSizePixel = 0
SubLabel_3.Position = UDim2.new(-0.0349650346, 0, 0.6875, 0)
SubLabel_3.Size = UDim2.new(0, 148, 0, 21)
SubLabel_3.Font = Enum.Font.SourceSansBold
SubLabel_3.TextColor3 = Color3.fromRGB(126, 126, 126)
SubLabel_3.TextSize = 14.000
SubLabel_3.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = SubLabel_3
UIPadding_8.PaddingLeft = UDim.new(0, 5)
UIPadding_8.PaddingTop = UDim.new(0, 5)

ValueLabel.Name = "ValueLabel"
ValueLabel.Parent = SliderTemplate
ValueLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ValueLabel.BackgroundTransparency = 0.200
ValueLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValueLabel.BorderSizePixel = 0
ValueLabel.Position = UDim2.new(0.410038888, 0, 0.333333343, 0)
ValueLabel.Size = UDim2.new(0, 31, 0, 17)
ValueLabel.Font = Enum.Font.SourceSansBold
ValueLabel.Text = "Value"
ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ValueLabel.TextSize = 14.000

UICorner_13.CornerRadius = UDim.new(0, 10)
UICorner_13.Parent = ValueLabel

SliderBar.Name = "SliderBar"
SliderBar.Parent = SliderTemplate
SliderBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
SliderBar.BorderSizePixel = 0
SliderBar.Position = UDim2.new(0.513535976, 0, 0.479166657, 0)
SliderBar.Size = UDim2.new(0, 163, 0, 2)

UICorner_14.CornerRadius = UDim.new(0, 10)
UICorner_14.Parent = SliderBar

SliderButton.Name = "SliderButton"
SliderButton.Parent = SliderBar
SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(0, 0, -2.5, 0)
SliderButton.Size = UDim2.new(0, 11, 0, 11)

UICorner_15.CornerRadius = UDim.new(0, 50)
UICorner_15.Parent = SliderButton

DropdownTemplate.Name = "DropdownTemplate"
DropdownTemplate.Parent = ScrollingFrame_2
DropdownTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
DropdownTemplate.BackgroundTransparency = 0.750
DropdownTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
DropdownTemplate.BorderSizePixel = 0
DropdownTemplate.Position = UDim2.new(-0.00193623581, 0, 0.373134315, 0)
DropdownTemplate.Size = UDim2.new(0, 362, 0, 48)
DropdownTemplate.ZIndex = 2

UICorner_16.CornerRadius = UDim.new(0, 10)
UICorner_16.Parent = DropdownTemplate

TitleLabel_4.Name = "TitleLabel"
TitleLabel_4.Parent = DropdownTemplate
TitleLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_4.BackgroundTransparency = 1.000
TitleLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_4.BorderSizePixel = 0
TitleLabel_4.Size = UDim2.new(0, 148, 0, 21)
TitleLabel_4.Font = Enum.Font.SourceSansBold
TitleLabel_4.Text = "Dropdown"
TitleLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_4.TextSize = 14.000
TitleLabel_4.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_9.Parent = TitleLabel_4
UIPadding_9.PaddingLeft = UDim.new(0, 5)
UIPadding_9.PaddingTop = UDim.new(0, 5)

SubLabel_4.Name = "SubLabel"
SubLabel_4.Parent = TitleLabel_4
SubLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubLabel_4.BackgroundTransparency = 1.000
SubLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubLabel_4.BorderSizePixel = 0
SubLabel_4.Position = UDim2.new(-0.0349650346, 0, 0.6875, 0)
SubLabel_4.Size = UDim2.new(0, 148, 0, 21)
SubLabel_4.Font = Enum.Font.SourceSansBold
SubLabel_4.TextColor3 = Color3.fromRGB(126, 126, 126)
SubLabel_4.TextSize = 14.000
SubLabel_4.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_10.Parent = SubLabel_4
UIPadding_10.PaddingLeft = UDim.new(0, 5)
UIPadding_10.PaddingTop = UDim.new(0, 5)

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = DropdownTemplate
DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownButton.BackgroundTransparency = 1.000
DropdownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DropdownButton.BorderSizePixel = 0
DropdownButton.Position = UDim2.new(0.693317235, 0, 0.333333343, 0)
DropdownButton.Size = UDim2.new(0, 90, 0, 15)
DropdownButton.Font = Enum.Font.SourceSansBold
DropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DropdownButton.TextSize = 14.000

UICorner_17.CornerRadius = UDim.new(0, 10)
UICorner_17.Parent = DropdownButton

DropdownList.Name = "DropdownList"
DropdownList.Parent = DropdownTemplate
DropdownList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownList.BackgroundTransparency = 1.000
DropdownList.BorderColor3 = Color3.fromRGB(0, 0, 0)
DropdownList.BorderSizePixel = 0
DropdownList.Position = UDim2.new(0.683000028, 0, 0.770833313, 0)
DropdownList.Size = UDim2.new(0, 90, 0, 109)
DropdownList.Visible = false

UIListLayout_3.Parent = DropdownList
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_11.Parent = DropdownList

UICorner_18.Parent = DropdownList

OptionTemplate.Name = "OptionTemplate"
OptionTemplate.Parent = DropdownList
OptionTemplate.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
OptionTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
OptionTemplate.BorderSizePixel = 0
OptionTemplate.Position = UDim2.new(0.0380952395, 0, 0, 0)
OptionTemplate.Size = UDim2.new(0, 103, 0, 20)
OptionTemplate.Font = Enum.Font.SourceSansBold
OptionTemplate.Text = "Option 1"
OptionTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
OptionTemplate.TextSize = 14.000

UICorner_19.Parent = OptionTemplate

SelectedLabel.Name = "SelectedLabel"
SelectedLabel.Parent = DropdownTemplate
SelectedLabel.BackgroundColor3 = Color3.fromRGB(10, 3, 11)
SelectedLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectedLabel.BorderSizePixel = 0
SelectedLabel.Position = UDim2.new(0.687580228, 0, 0.291666657, 0)
SelectedLabel.Size = UDim2.new(0, 99, 0, 17)
SelectedLabel.Font = Enum.Font.SourceSansBold
SelectedLabel.Text = ""
SelectedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedLabel.TextSize = 14.000

UICorner_20.Parent = SelectedLabel

TextboxTemplate.Name = "TextboxTemplate"
TextboxTemplate.Parent = ScrollingFrame_2
TextboxTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
TextboxTemplate.BackgroundTransparency = 0.750
TextboxTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextboxTemplate.BorderSizePixel = 0
TextboxTemplate.Position = UDim2.new(-0.00193623581, 0, 0.49751243, 0)
TextboxTemplate.Size = UDim2.new(0, 362, 0, 48)

UICorner_21.CornerRadius = UDim.new(0, 10)
UICorner_21.Parent = TextboxTemplate

TitleLabel_5.Name = "TitleLabel"
TitleLabel_5.Parent = TextboxTemplate
TitleLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_5.BackgroundTransparency = 1.000
TitleLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_5.BorderSizePixel = 0
TitleLabel_5.Size = UDim2.new(0, 148, 0, 21)
TitleLabel_5.Font = Enum.Font.SourceSansBold
TitleLabel_5.Text = "Textbox"
TitleLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_5.TextSize = 14.000
TitleLabel_5.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_12.Parent = TitleLabel_5
UIPadding_12.PaddingLeft = UDim.new(0, 5)
UIPadding_12.PaddingTop = UDim.new(0, 5)

SubLabel_5.Name = "SubLabel"
SubLabel_5.Parent = TitleLabel_5
SubLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubLabel_5.BackgroundTransparency = 1.000
SubLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubLabel_5.BorderSizePixel = 0
SubLabel_5.Position = UDim2.new(-0.0349650346, 0, 0.6875, 0)
SubLabel_5.Size = UDim2.new(0, 148, 0, 21)
SubLabel_5.Font = Enum.Font.SourceSansBold
SubLabel_5.TextColor3 = Color3.fromRGB(126, 126, 126)
SubLabel_5.TextSize = 14.000
SubLabel_5.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_13.Parent = SubLabel_5
UIPadding_13.PaddingLeft = UDim.new(0, 5)
UIPadding_13.PaddingTop = UDim.new(0, 5)

InputBox.Name = "InputBox"
InputBox.Parent = TextboxTemplate
InputBox.BackgroundColor3 = Color3.fromRGB(11, 3, 12)
InputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.810614288, 0, 0.291666657, 0)
InputBox.Size = UDim2.new(0, 56, 0, 19)
InputBox.Font = Enum.Font.SourceSansBold
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextSize = 14.000

UICorner_22.CornerRadius = UDim.new(0, 10)
UICorner_22.Parent = InputBox

HeaderTemplate.Name = "HeaderTemplate"
HeaderTemplate.Parent = ScrollingFrame_2
HeaderTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
HeaderTemplate.BackgroundTransparency = 0.750
HeaderTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
HeaderTemplate.BorderSizePixel = 0
HeaderTemplate.Position = UDim2.new(0, 0, 0.621890545, 0)
HeaderTemplate.Size = UDim2.new(0, 362, 0, 44)

UICorner_23.CornerRadius = UDim.new(0, 10)
UICorner_23.Parent = HeaderTemplate

TitleLabel_6.Name = "TitleLabel"
TitleLabel_6.Parent = HeaderTemplate
TitleLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_6.BackgroundTransparency = 1.000
TitleLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_6.BorderSizePixel = 0
TitleLabel_6.Position = UDim2.new(0.301104963, 0, 0.25, 0)
TitleLabel_6.Size = UDim2.new(0, 148, 0, 21)
TitleLabel_6.Font = Enum.Font.SourceSansBold
TitleLabel_6.Text = "Header"
TitleLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_6.TextSize = 25.000

UIPadding_14.Parent = TitleLabel_6
UIPadding_14.PaddingLeft = UDim.new(0, 5)
UIPadding_14.PaddingTop = UDim.new(0, 5)

ParagraphTemplate.Name = "ParagraphTemplate"
ParagraphTemplate.Parent = ScrollingFrame_2
ParagraphTemplate.BackgroundColor3 = Color3.fromRGB(106, 31, 113)
ParagraphTemplate.BackgroundTransparency = 0.750
ParagraphTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
ParagraphTemplate.BorderSizePixel = 0
ParagraphTemplate.Position = UDim2.new(0, 0, 0.736318409, 0)
ParagraphTemplate.Size = UDim2.new(0, 362, 0, 68)

UICorner_24.CornerRadius = UDim.new(0, 10)
UICorner_24.Parent = ParagraphTemplate

TitleLabel_7.Name = "TitleLabel"
TitleLabel_7.Parent = ParagraphTemplate
TitleLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_7.BackgroundTransparency = 1.000
TitleLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_7.BorderSizePixel = 0
TitleLabel_7.Position = UDim2.new(0.293825597, 0, 0.102941178, 0)
TitleLabel_7.Size = UDim2.new(0, 148, 0, 21)
TitleLabel_7.Font = Enum.Font.SourceSansBold
TitleLabel_7.Text = "Paragraph"
TitleLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_7.TextSize = 16.000

UIPadding_15.Parent = TitleLabel_7
UIPadding_15.PaddingLeft = UDim.new(0, 5)
UIPadding_15.PaddingTop = UDim.new(0, 5)

SubLabel_6.Name = "SubLabel"
SubLabel_6.Parent = TitleLabel_7
SubLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubLabel_6.BackgroundTransparency = 1.000
SubLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubLabel_6.BorderSizePixel = 0
SubLabel_6.Position = UDim2.new(-0.0139296735, 0, 1.25, 0)
SubLabel_6.Size = UDim2.new(0, 148, 0, 21)
SubLabel_6.Font = Enum.Font.SourceSansBold
SubLabel_6.TextColor3 = Color3.fromRGB(185, 185, 185)
SubLabel_6.TextSize = 14.000
SubLabel_6.TextWrapped = true
SubLabel_6.TextXAlignment = Enum.TextXAlignment.Left
SubLabel_6.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_16.Parent = SubLabel_6
UIPadding_16.PaddingLeft = UDim.new(0, 5)
UIPadding_16.PaddingTop = UDim.new(0, 5)

Page2.Name = "Page2"
Page2.Parent = TabContent
Page2.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
Page2.BackgroundTransparency = 0.150
Page2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page2.BorderSizePixel = 0
Page2.Position = UDim2.new(0, 0, -3.45221487e-08, 0)
Page2.Size = UDim2.new(0, 369, 0, 441)
Page2.Visible = false

UICorner_25.CornerRadius = UDim.new(0, 10)
UICorner_25.Parent = Page2

Page3.Name = "Page3"
Page3.Parent = TabContent
Page3.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
Page3.BackgroundTransparency = 0.150
Page3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Page3.BorderSizePixel = 0
Page3.Position = UDim2.new(0, 0, -3.45221487e-08, 0)
Page3.Size = UDim2.new(0, 369, 0, 441)
Page3.Visible = false

UICorner_26.CornerRadius = UDim.new(0, 10)
UICorner_26.Parent = Page3

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainUI
CloseButton.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.769451857, 0, 0.0221023131, 0)
CloseButton.Size = UDim2.new(0, 38, 0, 18)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14.000

UICorner_27.CornerRadius = UDim.new(0, 20)
UICorner_27.Parent = CloseButton

DraggingFrame.Name = "DraggingFrame"
DraggingFrame.Parent = MainUI
DraggingFrame.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
DraggingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
DraggingFrame.BorderSizePixel = 0
DraggingFrame.Position = UDim2.new(0.36866051, 0, 0.0214697719, 0)
DraggingFrame.Size = UDim2.new(0, 320, 0, 18)

UICorner_28.Parent = DraggingFrame

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = MainUI
TitleFrame.BackgroundColor3 = Color3.fromRGB(23, 6, 24)
TitleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleFrame.BorderSizePixel = 0
TitleFrame.Position = UDim2.new(0.191059515, 0, 0.0214697719, 0)
TitleFrame.Size = UDim2.new(0, 137, 0, 18)

UICorner_29.Parent = TitleFrame

TextLabel.Parent = TitleFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.00121892104, 0, -0.0345552228, 0)
TextLabel.Size = UDim2.new(0, 137, 0, 18)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Moji Liberty"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

UICorner_30.Parent = TextLabel

ImageLabel.Parent = MainUI
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.135200977, 0, -0.0485981293, 0)
ImageLabel.Size = UDim2.new(0, 608, 0, 553)
ImageLabel.ZIndex = -1
ImageLabel.Image = "rbxassetid://1316045217"
ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.ImageTransparency = 0.500

-- Scripts:

local function VROE_fake_script() -- ScrollingFrame.TabScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local TweenService = game:GetService("TweenService")
	
	local tabContainer = script.Parent -- ScrollingFrame ที่เก็บปุ่ม Tab
	local tabTemplate = tabContainer:FindFirstChild("TabTemplate") -- ปุ่มต้นแบบ
	local tabContent = script.Parent.Parent.Parent:FindFirstChild("TabContent") -- ที่เก็บหน้า Tab
	
	if not tabTemplate or not tabContent then
		warn("❌ ไม่พบ TabTemplate หรือ TabContent")
		return
	end
	
	-- ดึงรายชื่อ Tab อัตโนมัติจาก TabContent
	local tabs = {}
	for _, page in ipairs(tabContent:GetChildren()) do
		if page:IsA("Frame") then
			table.insert(tabs, page.Name)
			page.BackgroundTransparency = 1 -- ตั้งค่าเริ่มต้นให้โปร่งแสง
			page.Visible = false -- ซ่อนทั้งหมดก่อน
			page.Position = UDim2.new(-0.1, 0, 0, 0) -- เริ่มจากทางซ้ายเพื่อทำ Fade-in
		end
	end
	
	-- ตั้งค่าให้ Page1 เป็นค่าเริ่มต้น
	local firstPage = tabContent:FindFirstChild("Page1")
	if firstPage then
		firstPage.Visible = true
		firstPage.Position = UDim2.new(0, 0, 0, 0)
		TweenService:Create(firstPage, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
	end
	
	-- สร้างปุ่ม Tab ตามรายชื่อ
	for _, tabName in ipairs(tabs) do
		local newTab = tabTemplate:Clone()
		newTab.Name = tabName
		newTab.Text = tabName
		newTab.Parent = tabContainer
		newTab.Visible = true
	
		-- เพิ่ม Highlight ด้านล่าง
		local highlight = Instance.new("Frame", newTab)
		highlight.Size = UDim2.new(0, 0, 0, 3) -- เส้นสีที่ด้านล่างของ Tab
		highlight.Position = UDim2.new(0.5, 0, 1, -3)
		highlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- สีขาว
		highlight.AnchorPoint = Vector2.new(0.5, 0)
		highlight.Visible = false -- ซ่อนไว้ก่อน
	
		-- ฟังก์ชันเปลี่ยนหน้า Tab
		newTab.MouseButton1Click:Connect(function()
			for _, page in ipairs(tabContent:GetChildren()) do
				if page:IsA("Frame") then
					if page.Name == tabName then
						-- เปิดหน้า Tab ที่เลือก พร้อม Fade-in Effect
						page.Visible = true
						page.Position = UDim2.new(-0.1, 0, 0, 0) -- เริ่มจากซ้าย
						page.BackgroundTransparency = 1 -- เริ่มจากโปร่งใส
	
						local tweenFade = TweenService:Create(page, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundTransparency = 0,
							Position = UDim2.new(0, 0, 0, 0)
						})
						tweenFade:Play()
					else
						-- ปิดหน้าอื่นแบบนุ่มนวล (Fade-out)
						local tweenHide = TweenService:Create(page, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundTransparency = 1,
							Position = UDim2.new(0.1, 0, 0, 0) -- Fade ไปทางขวา
						})
						tweenHide:Play()
						task.wait(0.3)
						page.Visible = false
					end
				end
			end
	
			-- ทำให้ปุ่ม Tab มี Animation ตอนกด
			local normalSize = UDim2.new(1, 0, 0, 40)
			local pressedSize = UDim2.new(1, 0, 0, 36)
			local tweenPress = TweenService:Create(newTab, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = pressedSize})
			local tweenRelease = TweenService:Create(newTab, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = normalSize})
			tweenPress:Play()
			task.wait(0.1)
			tweenRelease:Play()
	
			-- แสดง Highlight ด้านล่างเฉพาะ Tab ที่เลือก
			for _, btn in ipairs(tabContainer:GetChildren()) do
				if btn:IsA("TextButton") then
					local btnHighlight = btn:FindFirstChildOfClass("Frame")
					if btnHighlight then
						btnHighlight.Visible = (btn == newTab)
						TweenService:Create(btnHighlight, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, 3)}):Play()
					end
				end
			end
		end)
	end
	
	-- ซ่อน TabTemplate ต้นฉบับ
	tabTemplate.Visible = false
	
end
coroutine.wrap(VROE_fake_script)()
local function GBSD_fake_script() -- Button.LocalScript 
	local script = Instance.new('LocalScript', Button)

	local TweenService = game:GetService("TweenService")
	
	local button = script.Parent
	
	-- ขนาดเริ่มต้นของปุ่ม (ใช้ Offset เท่านั้น)
	local originalSize = button.Size
	local shrinkSize = UDim2.new(originalSize.X.Scale, originalSize.X.Offset - 4, originalSize.Y.Scale, originalSize.Y.Offset - 4)
	
	local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
	button.MouseButton1Down:Connect(function()
		local shrink = TweenService:Create(button, tweenInfo, {Size = shrinkSize})
		shrink:Play()
	end)
	
	button.MouseButton1Up:Connect(function()
		local expand = TweenService:Create(button, tweenInfo, {Size = originalSize})
		expand:Play()
	end)
	
	button.MouseButton1Click:Connect(function()
		print("✅ ปุ่มถูกกด!") -- ทดสอบใน Output
	end)
	
end
coroutine.wrap(GBSD_fake_script)()
local function MSPK_fake_script() -- Switch.ToggleScript 
	local script = Instance.new('LocalScript', Switch)

	local switch = script.Parent -- อ้างอิง Switch (TextButton)
	local circle = switch:FindFirstChild("Circle") -- วงกลม Toggle
	local isOn = false -- ค่าตั้งต้นของ Toggle
	
	local TweenService = game:GetService("TweenService")
	
	local toggleOn = TweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Position = UDim2.new(1.1, -18, 0.22, 0), -- เลื่อนไปขวา
		BackgroundColor3 = Color3.fromRGB(0, 255, 100) -- สีเขียว (เปิด)
	})
	
	local toggleOff = TweenService:Create(circle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.1, 2, 0.22, 0), -- เลื่อนไปซ้าย
		BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- สีขาว (ปิด)
	})
	
	switch.MouseButton1Click:Connect(function()
		isOn = not isOn -- เปลี่ยนสถานะ Toggle
		if isOn then
			toggleOn:Play()
			print("✅ Toggle เปิด!")
		else
			toggleOff:Play()
			print("❌ Toggle ปิด!")
		end
	end)
	
end
coroutine.wrap(MSPK_fake_script)()
local function CVZACMU_fake_script() -- SliderButton.SliderScript 
	local script = Instance.new('LocalScript', SliderButton)

	local sliderButton = script.Parent -- ปุ่มที่ลาก
	local sliderBar = sliderButton.Parent -- แถบสไลด์หลัก
	local sliderTemplate = sliderBar.Parent -- เฟรมหลักของ Slider
	local valueLabel = sliderTemplate:FindFirstChild("ValueLabel") -- ป้ายแสดงค่า
	
	local UIS = game:GetService("UserInputService")
	
	local minValue = 0  -- ค่าต่ำสุดของ Slider
	local maxValue = 100 -- ค่าสูงสุดของ Slider
	local isDragging = false -- เช็คว่ากำลังลากอยู่หรือไม่
	
	-- ฟังก์ชันแปลงตำแหน่งเมาส์เป็นค่าของ Slider
	local function updateSlider(inputX)
		local barSize = sliderBar.AbsoluteSize.X -- ขนาดความกว้างของ SliderBar
		local barPosition = sliderBar.AbsolutePosition.X -- ตำแหน่ง X ของ SliderBar
		local newX = math.clamp(inputX - barPosition, 0, barSize) -- จำกัดค่าให้อยู่ในขอบเขต
	
		-- อัปเดตตำแหน่งของ SliderButton
		sliderButton.Position = UDim2.new(0, newX, -2, 0)
	
		-- คำนวณค่าใหม่ตามตำแหน่ง
		local percentage = newX / barSize
		local currentValue = math.floor(minValue + (maxValue - minValue) * percentage)
	
		-- อัปเดตข้อความใน ValueLabel
		if valueLabel then
			valueLabel.Text = tostring(currentValue)
		end
	end
	
	-- อัปเดตค่าเริ่มต้นเมื่อเกมโหลด (เพื่อให้ไม่ต้องลากก่อน)
	local function setInitialValue()
		local defaultValue = (minValue + maxValue) / 2 -- ค่าเริ่มต้นอยู่ตรงกลาง
		local barSize = sliderBar.AbsoluteSize.X
		local startX = (defaultValue - minValue) / (maxValue - minValue) * barSize
	
		updateSlider(sliderBar.AbsolutePosition.X + startX)
	end
	
	-- เมื่อกดปุ่ม (เริ่มลาก)
	sliderButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			isDragging = true
		end
	end)
	
	-- เมื่อปล่อยปุ่ม (หยุดลาก)
	sliderButton.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			isDragging = false
		end
	end)
	
	-- ตรวจจับการลากเมาส์
	UIS.InputChanged:Connect(function(input)
		if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			updateSlider(input.Position.X)
		end
	end)
	
	-- อัปเดตค่าเริ่มต้นเมื่อเกมโหลด
	task.wait(0.1) -- รอให้ UI โหลดเสร็จก่อน
	setInitialValue()
	
end
coroutine.wrap(CVZACMU_fake_script)()
local function HNIJUP_fake_script() -- DropdownButton.DropdownScript 
	local script = Instance.new('LocalScript', DropdownButton)

	local dropdownButton = script.Parent -- ปุ่มกด Dropdown
	local dropdownTemplate = dropdownButton.Parent -- เฟรมหลักของ Dropdown
	local dropdownList = dropdownTemplate:FindFirstChild("DropdownList") -- รายการตัวเลือก
	local selectedLabel = dropdownTemplate:FindFirstChild("SelectedLabel") -- ข้อความที่เลือก
	local optionTemplate = dropdownList:FindFirstChild("OptionTemplate") -- ตัวเลือกต้นแบบ
	
	if not dropdownList or not selectedLabel or not optionTemplate then
		warn("❌ ไม่พบ DropdownList, SelectedLabel หรือ OptionTemplate")
		return
	end
	
	local isOpen = false -- เช็คว่าเมนูเปิดอยู่หรือไม่
	
	-- ฟังก์ชันเปิด/ปิด Dropdown
	local function toggleDropdown()
		isOpen = not isOpen
		dropdownList.Visible = isOpen
	end
	
	dropdownButton.MouseButton1Click:Connect(toggleDropdown)
	
	-- ฟังก์ชันสร้างตัวเลือกใน Dropdown
	local options = {"Option 1", "Option 2", "Option 3", "Option 4"} -- รายการตัวเลือก
	
	for _, optionText in ipairs(options) do
		local newOption = optionTemplate:Clone()
		newOption.Text = optionText
		newOption.Parent = dropdownList
		newOption.Visible = true
	
		-- เมื่อกดตัวเลือก
		newOption.MouseButton1Click:Connect(function()
			selectedLabel.Text = newOption.Text -- อัปเดตค่าที่เลือก
			toggleDropdown() -- ปิด Dropdown หลังเลือก
		end)
	end
	
	-- ซ่อน OptionTemplate ต้นฉบับ
	optionTemplate.Visible = false
	
end
coroutine.wrap(HNIJUP_fake_script)()
local function MMHEN_fake_script() -- InputBox.TextboxScript 
	local script = Instance.new('LocalScript', InputBox)

	local textBox = script.Parent -- อ้างอิง InputBox
	
	-- เมื่อผู้ใช้กด Enter หรือเสร็จสิ้นการพิมพ์
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			print("📌 ข้อความที่พิมพ์: " .. textBox.Text) -- แสดงข้อความใน Output
		end
	end)
	
	-- เมื่อผู้ใช้เริ่มพิมพ์
	textBox:GetPropertyChangedSignal("Text"):Connect(function()
		print("⌨️ กำลังพิมพ์: " .. textBox.Text)
	end)
	
end
coroutine.wrap(MMHEN_fake_script)()
local function IPTTSTW_fake_script() -- CloseButton.CloseScript 
	local script = Instance.new('LocalScript', CloseButton)

	local button = script.Parent
	local mainUI = button.Parent
	
	button.MouseButton1Click:Connect(function()
		mainUI.Visible = false
	end)
	
end
coroutine.wrap(IPTTSTW_fake_script)()
local function LEBRVSG_fake_script() -- DraggingFrame.LocalScript 
	local script = Instance.new('LocalScript', DraggingFrame)

	local UIS = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	
	local frame = script.Parent.Parent -- MainUI
	local draggingFrame = script.Parent -- DraggingFrame
	local dragging = false
	local dragStart, startPos
	local smoothFactor = 0.2 -- ค่าความลื่นไหล (ปรับให้ Smooth มากขึ้น)
	local lastPosition = frame.Position
	
	local function lerp(a, b, t)
		return a + (b - a) * t
	end
	
	RunService.RenderStepped:Connect(function()
		if dragging then
			local mouseLocation = UIS:GetMouseLocation()
			local delta = mouseLocation - dragStart
			local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	
			-- ใช้ Lerp เพื่อให้เคลื่อนที่สมูท
			lastPosition = UDim2.new(
				lerp(lastPosition.X.Scale, newPos.X.Scale, smoothFactor),
				lerp(lastPosition.X.Offset, newPos.X.Offset, smoothFactor),
				lerp(lastPosition.Y.Scale, newPos.Y.Scale, smoothFactor),
				lerp(lastPosition.Y.Offset, newPos.Y.Offset, smoothFactor)
			)
	
			frame.Position = lastPosition
		end
	end)
	
	draggingFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = UIS:GetMouseLocation()
			startPos = frame.Position
		end
	end)
	
	draggingFrame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
	
			-- ใช้ Tween เพื่อให้ UI หยุดนุ่มนวล
			local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			local tween = TweenService:Create(frame, tweenInfo, {Position = lastPosition})
			tween:Play()
		end
	end)
	
end
coroutine.wrap(LEBRVSG_fake_script)()
local function ATXS_fake_script() -- MainUI.LocalScript 
	local script = Instance.new('LocalScript', MainUI)

	local mainUI = script.Parent
	local newFont = Enum.Font.FredokaOne
	
	for _, obj in ipairs(mainUI:GetDescendants()) do
		if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
			obj.Font = newFont
		end
	end
	
end
coroutine.wrap(ATXS_fake_script)()
