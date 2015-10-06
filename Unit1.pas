unit Unit1;

//�e�[�u����`�̓f�U�C����ClientDataSet1���_�u���N���b�N���ĎQ��

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Button4: TButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1�m��: TIntegerField;
    ClientDataSet1Field1: TStringField;
    ClientDataSet1Field2: TStringField;
    ClientDataSet1Field3: TStringField;
    ClientDataSet1Field4: TStringField;
    ClientDataSet1Field5: TStringField;
    ClientDataSet1Field6: TStringField;
    ClientDataSet1Field7: TStringField;
    ClientDataSet1Field8: TStringField;
    ClientDataSet1Field9: TStringField;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
     //�s�ǉ�
     ClientDataSet1.Append;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     //�X�V
     ClientDataSet1.Post;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     //�폜
     ClientDataSet1.Delete;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     //�w��t�B�[���h�I�����Ȃ���΃G���[
     if (ComboBox1.Text = '') then begin
        ShowMessage('����������ݒ肵�Ă��������B');
        Exit;
     end;

     //�t�B���^�[������
     ClientDataSet1.Filtered := false;

     //�l�����͂���Ă��Ȃ��ꍇ�A�t�B���^�[�͉����̂܂�
     if Edit1.Text <> '' then begin
        //�t�B���^�[�����ݒ�
        //���u�`.Filter�v���t�B���^�[�����ł��邱�Ƃɒ��ӁI
        ClientDataSet1.Filter := ComboBox1.Text + '=' + QuotedStr(Edit1.Text);
        //�t�B���^�[��K�p
        ClientDataSet1.Filtered := true;
     end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     //�f�[�^�x�[�X���t�@�C���ɕۑ�
     ClientDataSet1.SaveToFile('TestTable',dfXMLUTF8);
     //ClientDataSet���N���[�Y
     ClientDataSet1.Close;
end;

procedure TForm1.FormShow(Sender: TObject);
var
   i : integer;
begin
     //ClientDataSet1�̃f�[�^�̈���m��
     //(DBMS�ɂȂ��ۂɂ͕s�v)
     ClientDataSet1.CreateDataSet;
     //TestTable�Ƃ����t�@�C����exe�Ɠ����K�w�ɂ���Γǂݍ���
     if FileExists('TestTable') = true then begin
        ClientDataSet1.LoadFromFile('TestTable');
     end;
     //ClientDataSet���I�[�v��
     ClientDataSet1.Open;

     //���̂܂܂ł̓O���b�h�񕝂��s�׍H�Ȃ̂�
     //�O���b�h�������B
     //�������Ă��n�j
     DBGrid1.Columns.Items[0].Width := 40;
     for i := 1 to ClientDataSet1.Fields.Count - 1 do begin
         DBGrid1.Columns.Items[i].Width := 80;
     end;

end;

end.
