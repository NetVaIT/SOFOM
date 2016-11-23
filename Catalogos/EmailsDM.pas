unit EmailsDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmEmails = class(T_dmStandar)
    adodsMasterIdEmail: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdEmailTipo: TIntegerField;
    adodsMasterEmail: TStringField;
    adodsEmailTipo: TADODataSet;
    adodsMasterEmailTipo: TStringField;
    adodsMasterPredeterminado: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EmailsForm;

{$R *.dfm}

procedure TdmEmails.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmEmails.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

end.
