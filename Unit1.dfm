object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Troca nomes'
  ClientHeight = 607
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 180
    Width = 281
    Height = 364
    Align = alLeft
    FileList = FileListBox1
    TabOrder = 0
  end
  object FileListBox1: TFileListBox
    Left = 299
    Top = 180
    Width = 287
    Height = 364
    Align = alRight
    ItemHeight = 13
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 161
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 2
    object Label1: TLabel
      Left = 280
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Saida vai ser:'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 14
      Top = 35
      Width = 251
      Height = 21
      EditLabel.Width = 143
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome de arquivos para trocar'
      TabOrder = 0
      Text = 'Arquivo_numero_'
      OnChange = LabeledEdit1Change
    end
    object LabeledEdit2: TLabeledEdit
      Left = 14
      Top = 79
      Width = 251
      Height = 21
      EditLabel.Width = 153
      EditLabel.Height = 13
      EditLabel.Caption = 'Colocar numero a intervalos de:'
      NumbersOnly = True
      TabOrder = 1
      Text = '5'
      OnChange = LabeledEdit2Change
    end
    object CheckBox1: TCheckBox
      Left = 14
      Top = 129
      Width = 155
      Height = 17
      Caption = 'Come'#231'ar numera'#231#227'o em 0'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object Memo1: TMemo
      Left = 271
      Top = 35
      Width = 281
      Height = 111
      Color = clBtnFace
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 586
    Height = 63
    Align = alBottom
    TabOrder = 3
    object Button1: TButton
      Left = 46
      Top = 22
      Width = 219
      Height = 25
      Caption = 'Trocar nomes na pasta seleccionada'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 376
      Top = 22
      Width = 113
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DriveComboBox1: TDriveComboBox
    Left = 0
    Top = 161
    Width = 586
    Height = 19
    Align = alTop
    DirList = DirectoryListBox1
    TabOrder = 4
  end
end
