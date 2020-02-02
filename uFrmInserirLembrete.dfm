object FrmInserirLembrete: TFrmInserirLembrete
  Left = 0
  Top = 0
  Caption = 'Inserir Lembrete'
  ClientHeight = 286
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 26
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object Label2: TLabel
    Left = 12
    Top = 59
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 12
    Top = 189
    Width = 49
    Height = 13
    Caption = 'Data Hora'
  end
  object edtTitulo: TEdit
    Left = 80
    Top = 21
    Width = 295
    Height = 21
    TabOrder = 0
    Text = 'edtTitulo'
  end
  object MmDescricao: TMemo
    Left = 80
    Top = 56
    Width = 295
    Height = 120
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object DtpDataHora: TDateTimePicker
    Left = 80
    Top = 186
    Width = 186
    Height = 21
    Date = 43863.000000000000000000
    Time = 0.618478703705477500
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = -1
    Top = 245
    Width = 416
    Height = 42
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 0
      Width = 100
      Height = 40
      Caption = 'SALVAR'
    end
  end
end
