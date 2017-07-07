unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, ShellApi,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Memo1: TMemo;
    Timer1: TTimer;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  total:integer;
  format:string;
  genertated:integer;

implementation

{$R *.dfm}

//█████████████████████████████████████████████████████
//█─███────█─███────█───█───█────█─███─███─██─█───█───█
//█─███─██─█─█████──██─██─███─██─█──█──███──█─█─████─██
//█─███─██─█─████──███─██───█────█─█─█─███─█──█───██─██
//█─███─██─█─███──████─██─███─██─█─███─███─██─█─████─██
//█───█────█───█────██─██───█─██─█─███─█─█─██─█───██─██
//█████████████████████████████████████████████████████

function RandomUser(PLen: Integer): string;
 var
   str: string;
 begin
   Randomize;
  str    := '1234567890';
   Result := '';
   repeat
     Result := Result + str[Random(Length(str)) + 1];
   until (Length(Result) = PLen)
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
try
total:=StrToInt(Edit1.Text);
except
ShowMessage('Только цифры');
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.Position:=poScreenCenter;
format:='.txt';
total:=10;
genertated:=0;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'https://lolzteam.net/members/123871/', nil, nil, SW_SHOWNORMAL);
ShellExecute(handle, 'open', 'https://lolzteam.net/members/138881/', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'https://lolzteam.net', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  F : TfileStream;
begin
if SpeedButton1.Caption='Generate' then
begin
if not FileExists('users'+format) then
begin
F := TFileStream.Create('users'+format,fmCreate);
F.Free;
end;
Timer1.Enabled:=true;
SpeedButton1.Caption:='Stop';
end else
begin
Timer1.Enabled:=False;
SpeedButton1.Caption:='Generate';
end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Memo1.Clear;
genertated:=0;
Panel1.Caption:='Сгенерировано: 0';
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
ShellExecute(handle, 'open', PWChar('users'+format), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
format:='.txt'
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
format:='.xml'
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
f:textFile;
user:string;
begin
user:=RandomUser(3)+'-'+RandomUser(3)+'-'+RandomUser(3);
AssignFile(F,'users'+format);
Append (F);
Memo1.Lines.Add(user);
writeln(F,user);
closefile(f);
genertated:=genertated+1;
Panel1.Caption:='Сгенерировано: '+IntToStr(genertated);
if Memo1.Lines.Count=total then
begin
Timer1.Enabled:=false;
SpeedButton1.Caption:='Generate';
end;
end;

//█████████████████████████████████████████████████████
//█─███────█─███────█───█───█────█─███─███─██─█───█───█
//█─███─██─█─█████──██─██─███─██─█──█──███──█─█─████─██
//█─███─██─█─████──███─██───█────█─█─█─███─█──█───██─██
//█─███─██─█─███──████─██─███─██─█─███─███─██─█─████─██
//█───█────█───█────██─██───█─██─█─███─█─█─██─█───██─██
//█████████████████████████████████████████████████████

end.

