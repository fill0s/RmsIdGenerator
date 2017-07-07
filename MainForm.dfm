object Form1: TForm1
  Left = 640
  Top = 266
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'RMS Worker'
  ClientHeight = 334
  ClientWidth = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 22
    Width = 66
    Height = 13
    Caption = 'Amount users'
  end
  object SpeedButton1: TSpeedButton
    Left = 12
    Top = 48
    Width = 77
    Height = 22
    Caption = 'Generate'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 95
    Top = 48
    Width = 77
    Height = 22
    Caption = 'Clear'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 12
    Top = 76
    Width = 77
    Height = 22
    Caption = 'Open'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 95
    Top = 76
    Width = 36
    Height = 22
    Caption = '.txt'
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 136
    Top = 76
    Width = 36
    Height = 22
    Caption = '.xml'
    OnClick = SpeedButton5Click
  end
  object Label2: TLabel
    Left = 8
    Top = 295
    Width = 163
    Height = 13
    Caption = 'Coded by FILL0S and YOUR LORD'
    OnClick = Label2Click
  end
  object Label3: TLabel
    Left = 56
    Top = 314
    Width = 59
    Height = 13
    Caption = 'lolzteam.net'
    OnClick = Label3Click
  end
  object Edit1: TEdit
    Left = 95
    Top = 19
    Width = 77
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Text = '10'
    OnChange = Edit1Change
  end
  object Memo1: TMemo
    Left = 12
    Top = 104
    Width = 157
    Height = 185
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 12
    Top = 272
    Width = 140
    Height = 17
    Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1085#1086': 0'
    TabOrder = 2
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 136
    Top = 112
  end
end
