object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 394
  ClientWidth = 1141
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #65325#65331' '#12468#12471#12483#12463
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 307
    Top = 74
    Width = 820
    Height = 305
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #65325#65331' '#12468#12471#12483#12463
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 8
    Top = 74
    Width = 289
    Height = 305
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 32
      Height = 15
      Caption = #65326#65359
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 48
      Height = 15
      Caption = 'Field1'
    end
    object Label3: TLabel
      Left = 16
      Top = 71
      Width = 48
      Height = 15
      Caption = 'Field2'
    end
    object Label4: TLabel
      Left = 16
      Top = 99
      Width = 48
      Height = 15
      Caption = 'Field3'
    end
    object Label5: TLabel
      Left = 16
      Top = 127
      Width = 48
      Height = 15
      Caption = 'Field4'
    end
    object Label6: TLabel
      Left = 16
      Top = 154
      Width = 48
      Height = 15
      Caption = 'Field5'
    end
    object Label7: TLabel
      Left = 16
      Top = 182
      Width = 48
      Height = 15
      Caption = 'Field6'
    end
    object Label8: TLabel
      Left = 16
      Top = 210
      Width = 48
      Height = 15
      Caption = 'Field7'
    end
    object Label9: TLabel
      Left = 16
      Top = 238
      Width = 48
      Height = 15
      Caption = 'Field8'
    end
    object Label10: TLabel
      Left = 16
      Top = 266
      Width = 48
      Height = 15
      Caption = 'Field9'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 13
      Width = 89
      Height = 23
      DataField = #65326#65359
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 40
      Width = 177
      Height = 23
      DataField = 'Field1'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 68
      Width = 177
      Height = 23
      DataField = 'Field2'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 96
      Width = 177
      Height = 23
      DataField = 'Field3'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 124
      Width = 177
      Height = 23
      DataField = 'Field4'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 151
      Width = 177
      Height = 23
      DataField = 'Field5'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 179
      Width = 177
      Height = 23
      DataField = 'Field6'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 88
      Top = 207
      Width = 177
      Height = 23
      DataField = 'Field7'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 88
      Top = 235
      Width = 177
      Height = 23
      DataField = 'Field8'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 88
      Top = 263
      Width = 177
      Height = 23
      DataField = 'Field9'
      DataSource = DataSource1
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 1119
    Height = 57
    TabOrder = 2
    object Label11: TLabel
      Left = 119
      Top = 21
      Width = 16
      Height = 15
      Caption = #12364
    end
    object Label12: TLabel
      Left = 238
      Top = 21
      Width = 64
      Height = 15
      Caption = #12398#12418#12398#12434
    end
    object Panel3: TPanel
      Left = 424
      Top = 10
      Width = 259
      Height = 37
      TabOrder = 0
      object Button1: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = #36861#21152
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 89
        Top = 8
        Width = 75
        Height = 25
        Caption = #26356#26032
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 170
        Top = 8
        Width = 75
        Height = 25
        Caption = #21066#38500
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 18
      Width = 97
      Height = 23
      ItemIndex = 0
      TabOrder = 1
      Text = #65326#65359
      Items.Strings = (
        #65326#65359
        'Field1'
        'Field2'
        'Field3'
        'Field4'
        'Field5'
        'Field6'
        'Field7'
        'Field8'
        'Field9')
    end
    object Edit1: TEdit
      Left = 143
      Top = 18
      Width = 89
      Height = 23
      TabOrder = 2
    end
    object Button4: TButton
      Left = 313
      Top = 17
      Width = 75
      Height = 25
      Caption = #26908#32034
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 200
    object ClientDataSet1Ｎｏ: TIntegerField
      FieldName = #65326#65359
    end
    object ClientDataSet1Field1: TStringField
      FieldName = 'Field1'
    end
    object ClientDataSet1Field2: TStringField
      FieldName = 'Field2'
    end
    object ClientDataSet1Field3: TStringField
      FieldName = 'Field3'
    end
    object ClientDataSet1Field4: TStringField
      FieldName = 'Field4'
    end
    object ClientDataSet1Field5: TStringField
      FieldName = 'Field5'
    end
    object ClientDataSet1Field6: TStringField
      FieldName = 'Field6'
    end
    object ClientDataSet1Field7: TStringField
      FieldName = 'Field7'
    end
    object ClientDataSet1Field8: TStringField
      FieldName = 'Field8'
    end
    object ClientDataSet1Field9: TStringField
      FieldName = 'Field9'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 168
  end
end
