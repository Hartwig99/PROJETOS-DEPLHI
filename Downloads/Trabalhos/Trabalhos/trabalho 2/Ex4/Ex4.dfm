object Form1: TForm1
  Left = 168
  Top = 124
  Width = 537
  Height = 426
  Caption = 'Form1'
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 0
    Width = 94
    Height = 19
    Caption = 'Valor da Divida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 184
    Top = 0
    Width = 84
    Height = 19
    Caption = 'Taxa de Juros'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 352
    Top = 0
    Width = 140
    Height = 19
    Caption = 'Quantidadede Parcelas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 24
    Top = 152
    Width = 80
    Height = 19
    Caption = 'Total a Pagar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 160
    Top = 152
    Width = 121
    Height = 19
    Caption = 'Valor Total de Juros'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 64
    Top = 224
    Width = 191
    Height = 21
    Caption = 'Detalhamento de Parcelas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 352
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 8
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 16
    Top = 104
    Width = 89
    Height = 33
    Caption = 'Calcular'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 104
    Width = 97
    Height = 33
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btn2Click
  end
  object mmo1: TMemo
    Left = 32
    Top = 248
    Width = 249
    Height = 113
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 7
  end
end
