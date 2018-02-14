unit PaisesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmUbicacion = class(T_dmStandar)
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterBCCodigo: TStringField;
    adodsMasterRegimenFiscalPreferente: TBooleanField;
    adodsMasterListaGAFI: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
