object Form1: TForm1
  Left = 144
  Top = 162
  Width = 411
  Height = 376
  AutoSize = True
  Caption = 'Form1'
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 0
    Top = 0
    Width = 153
    Height = 16
    Caption = 'IInforme o primeiro numero'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 0
    Top = 72
    Width = 153
    Height = 16
    Caption = 'Informe o segundo numero'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 184
    Width = 58
    Height = 16
    Caption = 'Resultado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 168
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 168
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 64
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btn3Click
  end
  object mmo1: TMemo
    Left = 144
    Top = 160
    Width = 185
    Height = 121
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 5
  end
end
