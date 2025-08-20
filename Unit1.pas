unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EditDescription: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    description : string;
    procedure PrintValue(value : string);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  description := EditDescription.Text;
  PrintValue(description);
end;

procedure TForm1.PrintValue(value : string);
begin
  ShowMessage(value);
end;

end.
