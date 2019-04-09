unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,md5,about;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  filepath:String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
     filepath:=OpenDialog1.FileName;
     Edit1.text:=MD5Print(MD5File(filepath));
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  about.Form2.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (Edit1.text=Edit2.text) then
     Application.MessageBox('It''s the same','message')
  else
      Application.MessageBox('It''s not the same','message');
end;

end.

