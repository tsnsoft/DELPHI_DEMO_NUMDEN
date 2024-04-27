object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1063#1048#1057'/'#1047#1053#1040#1052' , v4 (2024)'
  ClientHeight = 309
  ClientWidth = 319
  Color = 13624551
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 184
    Top = 275
    Width = 121
    Height = 26
    GroupIndex = 1
    Down = True
    Caption = '<<< '#1053#1072#1089#1090#1088#1086#1081#1082#1072
    Visible = False
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 305
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = #1063#1058#1054' '#1057#1045#1049#1063#1040#1057' ????'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1912866
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 16
    Top = 33
    Width = 289
    Height = 225
  end
  object SpeedButton1: TSpeedButton
    Left = 184
    Top = 275
    Width = 121
    Height = 26
    GroupIndex = 1
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' >>>>'
    OnClick = SpeedButton1Click
  end
  object Button1: TButton
    Left = 63
    Top = 395
    Width = 138
    Height = 26
    Caption = #1054#1041#1053#1054#1042#1048#1058#1068
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 45
    Top = 225
    Width = 232
    Height = 22
    Caption = #1053#1040' '#1057#1045#1043#1054#1044#1053#1071
    TabOrder = 1
    OnClick = Button2Click
  end
  object MonthCalendar1: TMonthCalendar
    Left = 25
    Top = 40
    Width = 273
    Height = 176
    CalColors.BackColor = 12500670
    CalColors.TextColor = 9574436
    CalColors.TitleBackColor = 11632980
    CalColors.TitleTextColor = 13948116
    CalColors.MonthBackColor = 12319680
    CalColors.TrailingTextColor = 5592130
    Date = 41240.000000000000000000
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 16
    Top = 275
    Width = 138
    Height = 26
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 3
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 33
    Width = 289
    Height = 225
    BevelKind = bkSoft
    BevelWidth = 2
    Color = 12964303
    TabOrder = 4
    Visible = False
    object Label4: TLabel
      Left = 15
      Top = 176
      Width = 250
      Height = 28
      Cursor = crHandPoint
      Alignment = taCenter
      Caption = 'talipovsn@gmail.com '#1058#1072#1083#1080#1087#1086#1074' '#1057'.'#1053'., '#1075'. '#1055#1072#1074#1083#1086#1076#1072#1088', '#1050#1072#1079#1072#1093#1089#1090#1072#1085
      WordWrap = True
      OnClick = Label4Click
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 14
      Width = 250
      Height = 52
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      TabOrder = 0
      object CheckBox1: TCheckBox
        Left = 16
        Top = 21
        Width = 122
        Height = 17
        Caption = #1057#1084#1077#1097#1077#1085#1080#1077
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1250067
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
        OnClick = Button1Click
      end
      object BitBtn1: TBitBtn
        Left = 211
        Top = 16
        Width = 26
        Height = 25
        Caption = ' '
        Kind = bkHelp
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
    object Memo1: TMemo
      Left = 15
      Top = 72
      Width = 250
      Height = 89
      Alignment = taCenter
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 72
    Top = 120
  end
  object XPManifest1: TXPManifest
    Left = 160
    Top = 128
  end
end
