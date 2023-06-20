object Form1: TForm1
  Left = 75
  Top = 128
  Width = 928
  Height = 477
  Caption = 'Form1'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 104
    Width = 101
    Height = 18
    Caption = 'Informe o valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 224
    Top = 208
    Width = 161
    Height = 22
    Caption = 'Contagem de Notas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 168
    Width = 97
    Height = 18
    Caption = 'Distribuir nota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 224
    Top = 48
    Width = 183
    Height = 28
    Caption = 'Gerador de Celula'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 208
    Top = 104
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 184
    Top = 240
    Width = 257
    Height = 129
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 208
    Top = 168
    Width = 201
    Height = 25
    Caption = 'Distribuir'
    TabOrder = 2
    OnClick = Button1Click
  end
end
