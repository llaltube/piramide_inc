object frmPiramide: TfrmPiramide
  Left = 366
  Top = 40
  BorderStyle = bsSingle
  Caption = 'Piramide'
  ClientHeight = 637
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 87
    Height = 25
    Caption = 'Resultado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 240
    Top = 2
    Width = 73
    Height = 20
    Caption = 'N. Gerado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 2
    Width = 78
    Height = 20
    Caption = 'Disposi'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 48
    Top = 2
    Width = 93
    Height = 20
    Caption = 'Classifica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object rdgDisposicao: TRadioGroup
    Left = 374
    Top = 19
    Width = 118
    Height = 73
    Columns = 2
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Webdings'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '5'
      '6'
      '3'
      '4')
    ParentFont = False
    TabOrder = 4
    OnClick = rdgDisposicaoClick
  end
  object EdtNumero: TEdit
    Left = 236
    Top = 36
    Width = 81
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '5'
  end
  object BtnGerar: TButton
    Left = 224
    Top = 78
    Width = 121
    Height = 33
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnGerarClick
  end
  object UpDown1: TUpDown
    Left = 317
    Top = 36
    Width = 19
    Height = 28
    Associate = EdtNumero
    Min = -100
    Position = 5
    TabOrder = 2
  end
  object Memo: TMemo
    Left = 0
    Top = 120
    Width = 521
    Height = 517
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 21
    Width = 205
    Height = 68
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Left = 26
      Top = 21
      Width = 24
      Height = 20
      Caption = 'Par'
    end
    object Shape1: TShape
      Left = 4
      Top = 20
      Width = 17
      Height = 17
      Brush.Color = clRed
    end
    object Shape2: TShape
      Left = 82
      Top = 20
      Width = 17
      Height = 17
      Brush.Color = clBlue
    end
    object Label4: TLabel
      Left = 104
      Top = 21
      Width = 85
      Height = 20
      Caption = 'Impar/Primo'
    end
    object Shape3: TShape
      Left = 82
      Top = 42
      Width = 17
      Height = 17
      Brush.Color = clFuchsia
    end
    object Label5: TLabel
      Left = 103
      Top = 43
      Width = 68
      Height = 20
      Caption = 'Par/Primo'
    end
    object Shape4: TShape
      Left = 4
      Top = 42
      Width = 17
      Height = 17
      Brush.Color = clLime
    end
    object Label6: TLabel
      Left = 25
      Top = 43
      Width = 41
      Height = 20
      Caption = 'Impar'
    end
  end
end
