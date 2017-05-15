unit BuroCreditoDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

const
  _BCEncabezado = 'hd-institucion,hd-institucion-anterior,hd-tipo-institucion,hd-formato,hd-fecha,hd-periodo,hd-version, hd-nombre-usuario,';
  _BCEmpresa = 'em-rfc,em-curp,em-numero-dun,em-compania,em-nombre-1,em-nombre-2,em-apellido-paterno,em-apellido-materno,'+
  'em-nacionalidad,em-calificacion-cartera,em-banxico-1,em-banxico-2,em-banxico-3,em-direccion-1,em-direccion-2,em-colonia-poblacion,'+
  'em-delegacion-municipio,em-ciudad,em-estado,em-codigo-postal,em-telefono,em-extension,em-fax,em-tipo-cliente,em-estado-extranjero,em-pais-domicilio,em-clave-consolidacion,';

type
  TdmBuroCredito = class(T_dmStandar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
