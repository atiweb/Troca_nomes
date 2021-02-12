unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TForm1 = class(TForm)
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Button1: TButton;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
    function exemplo(nome:string; num:integer):string;
    function troca_nomes(nome:string; num:integer; totalfiles:integer):string;
    function cant0(lengtstring:integer):string;
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LabeledEdit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
case MessageDlg('Você tem certeza absoluta de executar a troca de nomes? Esta ação não e reversível, tenha precaução', mtConfirmation, [mbOK, mbCancel], 0) of
  mrOk:
    begin
troca_nomes(LabeledEdit1.Text,strtoint(LabeledEdit2.text),FileListBox1.Count-1);
Memo1.SelStart :=0;
Memo1.SelLength:=1;

FileListBox1.Update;
    end;
  mrCancel:
    begin
    // Write code here for pressing button Cancel
    ShowMessage('Revisa tudo bem antes de confirmar.');
    end;
end;






end;

procedure TForm1.Button2Click(Sender: TObject);
begin
application.Terminate
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
exemplo(LabeledEdit1.Text,strtoint(LabeledEdit2.text));
Memo1.SelStart :=0;
Memo1.SelLength:=1;
end;

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin
exemplo(LabeledEdit1.Text,strtoint(LabeledEdit2.text));
Memo1.SelStart :=0;
Memo1.SelLength:=1;
end;

procedure TForm1.LabeledEdit2Change(Sender: TObject);
begin
 try
if strtoint(LabeledEdit2.text)>0 then
 begin
 exemplo(LabeledEdit1.Text,strtoint(LabeledEdit2.text));
 end;
 except
  ;
 end;
  Memo1.SelStart :=0;
Memo1.SelLength:=1;
end;

function TForm1.exemplo(nome:string; num:integer):string;
var
  I, N, lengtstring :Integer;
  cant00:string;
begin
form1.Memo1.Lines.Clear;
 I := 1;
if form1.CheckBox1.Checked then
begin
 I := 0;
end;
   // aqui vc inicializa de quanto será o passo

  N := 10;
  while I <= N do
  begin
  lengtstring := Length(inttostr(N))- Length(inttostr(I));
  cant00:=cant0(lengtstring);
    form1.Memo1.Lines.Add(nome + cant00 + inttostr(I))  ;


    Inc(I, num);
  end;
end;



 function TForm1.troca_nomes(nome:string; num:integer; totalfiles:integer):string;
var
  I, N, movec,lengtstring :Integer;
  cant00, ext:string;
begin
form1.Memo1.Lines.Clear;
 I := 1;
if form1.CheckBox1.Checked then
begin
 I := 0;
end;
   // aqui vc inicializa de quanto será o passo
  movec:=0;
  N := (num*totalfiles)+I;

  cant00:='';

  while I <= N do
  begin
  lengtstring := Length(inttostr(N))- Length(inttostr(I));
  cant00:=cant0(lengtstring);
  ext:= ExtractFileExt(FileListBox1.Items.Strings[movec]);
 form1.Memo1.Lines.Add(nome + cant00 + inttostr(I) + ext)  ;
  if not RenameFile(FileListBox1.Items.Strings[movec],nome + cant00 + inttostr(I) + ext) then
   showmessage('Error renaming file!');
     movec:=movec+1;
    Inc(I, num);
  end;
end;


   function TForm1.cant0(lengtstring:integer):string;
   var
   x:integer;
   cant0:string;
   begin
   cant0 :='';
   for x := 0 to lengtstring -1 do
   begin
   cant0 := cant0 + '0';
   end;
   Result := cant0;
   end;







end.
