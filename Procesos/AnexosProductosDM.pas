unit AnexosProductosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmAnexosProductos = class(T_dmStandar)
    adodsProductos: TADODataSet;
    adodsMasterIdAnexoProducto: TIntegerField;
    adodsMasterIdAnexo: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterProducto: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
