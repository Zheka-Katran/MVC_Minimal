unit Controller;

interface

uses Unit1, Model;

type
  TController = class
    private
      FView: TForm1;
      FModel: TModel;
    public
      procedure btnSetOnClick(Sender: TObject);
      constructor Create(aView: TForm1; aModel: TModel);
  end;

implementation

procedure TController.btnSetOnClick(Sender: TObject);
begin
  FModel.Info := string(FView.edtInfo.Text);
end;

constructor TController.Create(aView: TForm1; aModel: TModel);
begin
  FView := aView;
  FModel := aModel;
  FView.btnSet.OnClick := btnSetOnClick;
end;

end.
