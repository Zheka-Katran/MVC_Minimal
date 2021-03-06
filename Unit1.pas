unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnSet: TButton;
    lblInfo: TLabel;
    edtInfo: TEdit;
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Controller, Model;

var
    Controller : TController;
    Model : TModel;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Model := TModel.Create(Form1);
Controller := TController.Create(Form1, Model);
end;


end.
