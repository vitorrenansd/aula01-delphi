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
    function funcShowText : string;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  description := funcShowText;
  if description = '' then
  begin
    ShowMessage('Please write something first');
    Exit;
  end;
  ShowMessage('Result: ' + description);
end;

function TForm1.funcShowText: string;
begin
  Result := EditDescription.Text;
end;

end.
