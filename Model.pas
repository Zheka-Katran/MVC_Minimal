unit Model;

interface

uses Unit1, Dialogs;

type
  TModel = class
    private
      FInfo : String;
      FView : TForm1;
      procedure SetInfo(Value: string);
      function GetInfo : string;
    public
      property Info: string read GetInfo write SetInfo;
      constructor Create(aView: TForm1);
  end;

implementation

constructor TModel.Create(aView: TForm1);
begin
  FView := aView;
end;

procedure TModel.SetInfo(Value: string);
begin
  FInfo := Value;
  FView.lblInfo.Caption := FInfo;
end;

function TModel.GetInfo;
begin
  Result := FInfo;
end;
end.
