object MainForm: TMainForm
  Left = 352
  Top = 158
  Width = 1454
  Height = 752
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TableName: TLabel
    Left = 247
    Top = 36
    Width = 3
    Height = 13
  end
  object MmSqlSelector: TMemo
    Left = 20
    Top = 128
    Width = 349
    Height = 497
    TabOrder = 3
  end
  object OpenFileBtt: TButton
    Left = 76
    Top = 16
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = OpenFileBttClick
  end
  object CommandSqlBtt: TButton
    Left = 372
    Top = 128
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 1
    OnClick = CommandSqlBttClick
  end
  object grdTableView: TDBGrid
    Left = 492
    Top = 36
    Width = 917
    Height = 585
    DataSource = dsTableView
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Shell Dlg 2'
    TitleFont.Style = []
  end
  object OpenTableFile: TOpenDialog
    Filter = 'DB File|*.DB|All(*)|*'
    Left = 52
    Top = 68
  end
  object dbParadox: TDatabase
    Connected = True
    DatabaseName = 'dbParadox'
    DriverName = 'STANDARD'
    SessionName = 'Default'
    Left = 404
    Top = 552
  end
  object dsTableView: TDataSource
    DataSet = tblTableView
    Left = 404
    Top = 420
  end
  object tblTableView: TTable
    DatabaseName = 'dbParadox'
    Left = 408
    Top = 492
  end
  object MainMenu1: TMainMenu
    Left = 12
    Top = 12
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N6Click
      end
    end
    object N2: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089' '#1082' '#1058#1072#1073#1083#1080#1094#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
