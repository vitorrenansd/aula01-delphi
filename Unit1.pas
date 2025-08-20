unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    id : integer;
    description : string;
    price : currency;
    active : boolean;
    procedure PrintValue(value : string);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  id := 1;
  description := 'Generic mouse';
  price := 3.99;
  active := true;
  PrintValue(description);
end;

procedure TForm1.PrintValue(value : string);
begin
  ShowMessage('Hello World! ' + value);
end;


end.
