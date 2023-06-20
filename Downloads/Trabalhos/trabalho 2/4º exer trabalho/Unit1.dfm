object Form1: TForm1
  Left = 241
  Top = 140
  Width = 540
  Height = 478
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object LabeledEdit1: TLabeledEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 28
    EditLabel.Width = 103
    EditLabel.Height = 20
    EditLabel.Caption = 'Valor da d'#237'vida'
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 200
    Top = 32
    Width = 121
    Height = 28
    EditLabel.Width = 54
    EditLabel.Height = 20
    EditLabel.Caption = 'Tx juros'
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 368
    Top = 32
    Width = 121
    Height = 28
    EditLabel.Width = 90
    EditLabel.Height = 20
    EditLabel.Caption = 'Qtd parcelas'
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 81
    Width = 107
    Height = 32
    Caption = 'Mete o loko'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 81
    Width = 121
    Height = 32
    Caption = 'Limpa a cagada'
    TabOrder = 4
  end
  object LabeledEdit4: TLabeledEdit
    Left = 16
    Top = 136
    Width = 121
    Height = 28
    EditLabel.Width = 68
    EditLabel.Height = 20
    EditLabel.Caption = 'Tot pagar'
    TabOrder = 5
  end
  object LabeledEdit5: TLabeledEdit
    Left = 216
    Top = 136
    Width = 121
    Height = 28
    EditLabel.Width = 59
    EditLabel.Height = 20
    EditLabel.Caption = 'Vlr tot Jr'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 24
    Top = 184
    Width = 457
    Height = 257
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
