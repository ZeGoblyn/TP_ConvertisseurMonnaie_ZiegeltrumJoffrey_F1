unit unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Spin,
  StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  Label1.caption:='Euro';
  Label2.caption:='CAD';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if RadioButton1.checked= true then
     begin
     FloatSpinEdit2.Value:=FloatSpinEdit1.Value*1.52;
     end;
  if RadioButton2.checked= true then
     begin
     FloatSpinEdit2.Value:=FloatSpinEdit1.Value*0.66;
     end;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
     Label1.caption:='CAD';
     Label2.caption:='Euro';
end;

end.

