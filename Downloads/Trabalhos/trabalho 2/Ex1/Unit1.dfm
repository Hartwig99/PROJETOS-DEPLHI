object Form1: TForm1
  Left = 18
  Top = 90
  Width = 595
  Height = 455
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tbc1: TTabControl
    Left = 24
    Top = 24
    Width = 513
    Height = 185
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 72
      Height = 13
      Caption = 'od'#244'metro Incial'
    end
    object Label2: TLabel
      Left = 32
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Od'#244'metro Final'
    end
    object lb3: TLabel
      Left = 32
      Top = 96
      Width = 112
      Height = 13
      Caption = 'Capacidade do Tanque'
    end
    object lbl1: TLabel
      Left = 264
      Top = 8
      Width = 57
      Height = 13
      Caption = 'litros Gastos'
    end
    object Label3: TLabel
      Left = 256
      Top = 56
      Width = 136
      Height = 13
      Caption = 'Pre'#231'o do litro do combustivel'
    end
    object lbl2: TLabel
      Left = 256
      Top = 96
      Width = 110
      Height = 13
      Caption = 'limite Normal em Km/H '
    end
    object edt1: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 32
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 32
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt4: TEdit
      Left = 256
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edt5: TEdit
      Left = 256
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edt6: TEdit
      Left = 256
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btn1: TButton
      Left = 440
      Top = 16
      Width = 59
      Height = 33
      Caption = 'Calcular'
      TabOrder = 6
      OnClick = btn1Click
    end
  end
  object tbc2: TTabControl
    Left = 24
    Top = 208
    Width = 513
    Height = 169
    TabOrder = 1
    object lbl3: TLabel
      Left = 16
      Top = 40
      Width = 111
      Height = 13
      Caption = 'Quilometragem Rodada'
    end
    object lbl4: TLabel
      Left = 24
      Top = 80
      Width = 56
      Height = 13
      Caption = 'Km por Litro'
    end
    object lbl5: TLabel
      Left = 224
      Top = 80
      Width = 80
      Height = 13
      Caption = 'Custo da Viagem'
    end
    object lbl6: TLabel
      Left = 224
      Top = 40
      Width = 104
      Height = 13
      Caption = 'Autonomia Do veiculo'
    end
    object edt7: TEdit
      Left = 16
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt8: TEdit
      Left = 16
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt9: TEdit
      Left = 224
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt10: TEdit
      Left = 224
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
end
