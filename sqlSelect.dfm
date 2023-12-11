object SQLSelectorFrm: TSQLSelectorFrm
  Left = 423
  Top = 264
  Width = 903
  Height = 578
  Caption = 'Select SQL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MmSqlSelect: TMemo
    Left = 12
    Top = 12
    Width = 281
    Height = 501
    TabOrder = 1
  end
  object ResultGR: TDBGrid
    Left = 440
    Top = 12
    Width = 392
    Height = 505
    DataSource = qrySelect
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Shell Dlg 2'
    TitleFont.Style = []
  end
  object SqlBtt: TButton
    Left = 312
    Top = 44
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 0
    OnClick = SqlBttClick
  end
  object qrySelect: TDataSource
    Left = 336
    Top = 344
  end
  object qrySelector: TQuery
    DatabaseName = 'dbParadox'
    DataSource = qrySelect
    Left = 340
    Top = 252
  end
end
