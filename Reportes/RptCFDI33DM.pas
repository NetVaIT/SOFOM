unit RptCFDI33DM;

interface

uses
  System.SysUtils, System.Classes, ppDB, ppDesignLayer, ppBands, ppCtrls,
  ppStrtch, ppMemo, dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppParameter,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Data.DB, Data.Win.ADODB;

const
  _CFDIRTM = 'CFDIManarina33.rtm';

type
  TdmRptCFDI33 = class(TDataModule)
    adoqCFDI: TADOQuery;
    dsCFDI: TDataSource;
    adoqCFDIConceptos: TADOQuery;
    adoqCFDIConceptosIdCFDIConcepto: TLargeintField;
    adoqCFDIConceptosIdUnidadMedida: TIntegerField;
    adoqCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField;
    adoqCFDIConceptosSATClaveProdServ: TStringField;
    adoqCFDIConceptosNoIdentifica: TStringField;
    adoqCFDIConceptosCantidad: TFloatField;
    adoqCFDIConceptosSATClaveUnidad: TStringField;
    adoqCFDIConceptosUnidad: TStringField;
    adoqCFDIConceptosDescripcion: TStringField;
    adoqCFDIConceptosValorUnitario: TFMTBCDField;
    adoqCFDIConceptosImporte: TFMTBCDField;
    adoqCFDIConceptosDescuento: TFMTBCDField;
    adoqCFDIConceptosImpuestos: TADOQuery;
    adoqCFDIConceptosImpuestosIdCFDIConceptoImpuesto: TAutoIncField;
    adoqCFDIConceptosImpuestosIdCFDITipoImpuesto: TIntegerField;
    adoqCFDIConceptosImpuestosTipoImp: TStringField;
    adoqCFDIConceptosImpuestosBase: TFMTBCDField;
    adoqCFDIConceptosImpuestosClaveImpuesto: TStringField;
    adoqCFDIConceptosImpuestosImpuesto: TStringField;
    adoqCFDIConceptosImpuestosTipoFactor: TStringField;
    adoqCFDIConceptosImpuestosTasaOCuota: TFMTBCDField;
    adoqCFDIConceptosImpuestosImporte: TFMTBCDField;
    adoqCFDIImpuestos: TADOQuery;
    adoqCFDIImpuestosIdCFDIImpuesto: TAutoIncField;
    adoqCFDIImpuestosIdCFDITipoImpuesto: TIntegerField;
    adoqCFDIImpuestosTipoImp: TStringField;
    adoqCFDIImpuestosClaveImpuesto: TStringField;
    adoqCFDIImpuestosImpuesto: TStringField;
    adoqCFDIImpuestosTipoFactor: TStringField;
    adoqCFDIImpuestosTasa: TFloatField;
    adoqCFDIImpuestosImporte: TFloatField;
    dsCFDIConceptos: TDataSource;
    dbpCFDI: TppDBPipeline;
    dbpCFDIConceptos: TppDBPipeline;
    ppRptCFDI: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppShpMarco: TppShape;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText36: TppDBText;
    ppLabel29: TppLabel;
    ppLabel1: TppLabel;
    ppLabel35: TppLabel;
    ppLabel44: TppLabel;
    ppLabel49: TppLabel;
    ppDBText18: TppDBText;
    ppDBText41: TppDBText;
    ppDBText26: TppDBText;
    ppDBText39: TppDBText;
    ppDBText43: TppDBText;
    ppDBText42: TppDBText;
    ppDBText35: TppDBText;
    ppDBText34: TppDBText;
    ppDBText1: TppDBText;
    ppDBText19: TppDBText;
    ppLine9: TppLine;
    ppShpTitulo: TppShape;
    ppLabel25: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppImage1: TppImage;
    ppDBText15: TppDBText;
    ppLabel37: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel34: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText17: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText30: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText33: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel2: TppLabel;
    ppLine14: TppLine;
    ppDBMemo1: TppDBMemo;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppImageCBB: TppImage;
    ppLabel51: TppLabel;
    ppDBText16: TppDBText;
    ppLine1: TppLine;
    ppPageStyle1: TppPageStyle;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine3: TppLine;
    ppLabel30: TppLabel;
    ppDBText24: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText9: TppDBText;
    ppDBText46: TppDBText;
    ppDBText38: TppDBText;
    ppDBText47: TppDBText;
    ppDBText20: TppDBText;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel18: TppLabel;
    ppLabel24: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine2: TppLine;
    ppLabel26: TppLabel;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppDBText21: TppDBText;
    ppLabel23: TppLabel;
    ppDBText13: TppDBText;
    ppLabel36: TppLabel;
    ppDBText14: TppDBText;
    ppDBText37: TppDBText;
    ppLabel31: TppLabel;
    adoqCFDIIdCFDI: TLargeintField;
    adoqCFDIIdCuentaXCobrar: TIntegerField;
    adoqCFDIIdCFDITipoDocumento: TIntegerField;
    adoqCFDIIdCFDIFormaPago: TIntegerField;
    adoqCFDIIdMetodoPago: TIntegerField;
    adoqCFDIIdMoneda: TIntegerField;
    adoqCFDIIdCFDIFormaPago33: TIntegerField;
    adoqCFDIIdCFDIMetodoPago33: TIntegerField;
    adoqCFDIIDCFDITipoRelacion: TIntegerField;
    adoqCFDIIDCFDIUsoCFDI: TIntegerField;
    adoqCFDIIdPersonaEmisor: TIntegerField;
    adoqCFDIIdPersonaReceptor: TIntegerField;
    adoqCFDIIdDocumentoCBB: TIntegerField;
    adoqCFDIIdDocumentoXML: TIntegerField;
    adoqCFDIIdDocumentoPDF: TIntegerField;
    adoqCFDIIdCFDIEstatus: TIntegerField;
    adoqCFDIIdCFDIFacturaGral: TLargeintField;
    adoqCFDIIdClienteDomicilio: TIntegerField;
    adoqCFDIVersion: TStringField;
    adoqCFDIVersionPago: TStringField;
    adoqCFDISerie: TStringField;
    adoqCFDIFolio: TLargeintField;
    adoqCFDIFecha: TDateTimeField;
    adoqCFDICondPago: TStringField;
    adoqCFDIFormaPago33: TStringField;
    adoqCFDIMetodoPago33: TStringField;
    adoqCFDICuentaCte: TStringField;
    adoqCFDITipoCambio: TStringField;
    adoqCFDIMoneda: TStringField;
    adoqCFDITipoComp: TStringField;
    adoqCFDITipoDocumento: TStringField;
    adoqCFDILugarExpedicion: TStringField;
    adoqCFDIEmisorRFC: TStringField;
    adoqCFDIEmisorNombre: TStringField;
    adoqCFDIEmisorDireccion: TStringField;
    adoqCFDIEmisorColonia: TStringField;
    adoqCFDIEmisorCodigoPostal: TStringField;
    adoqCFDIEmisorMunicipio: TStringField;
    adoqCFDIEmisorEstado: TStringField;
    adoqCFDIEmisorPais: TStringField;
    adoqCFDIEmisorRegimenFiscal: TStringField;
    adoqCFDIReceptorRFC: TStringField;
    adoqCFDIReceptorNombre: TStringField;
    adoqCFDIUsoCFDI: TStringField;
    adoqCFDISubTotal: TFloatField;
    adoqCFDIDescto: TFloatField;
    adoqCFDIMotivoDescto: TStringField;
    adoqCFDITotal: TFMTBCDField;
    adoqCFDINumCtaPago: TStringField;
    adoqCFDITotalImpuestoRetenido: TFloatField;
    adoqCFDITotalImpuestoTrasladado: TFloatField;
    adoqCFDISaldoDocumento: TFMTBCDField;
    adoqCFDISello: TStringField;
    adoqCFDINoCertificado: TStringField;
    adoqCFDICertificado: TStringField;
    adoqCFDICadenaOriginal: TStringField;
    adoqCFDIFechaCancelacion: TDateTimeField;
    adoqCFDIObservaciones: TStringField;
    adoqCFDIPorcentajeIVA: TFloatField;
    adoqCFDIEmailCliente: TStringField;
    adoqCFDIUUID_TB: TStringField;
    adoqCFDISelloCFD_TB: TStringField;
    adoqCFDISelloSAT_TB: TStringField;
    adoqCFDICertificadoSAT_TB: TStringField;
    adoqCFDIFechaTimbrado_TB: TDateTimeField;
    adoqCFDICadenaTimbre: TStringField;
    adoqCFDIRFCProvCertifica_TB: TStringField;
    adoqCFDILeyendaSAT_TB: TStringField;
    adoqCFDIConfirmacion: TStringField;
    adoqCFDICFDITipoRelacion: TStringField;
    adoqCFDIEmisorRegimenFiscalTxt: TStringField;
    adoqCFDITipoComprobanteTxt: TStringField;
    adoqCFDIFormaPago33Txt: TStringField;
    adoqCFDIMetodoPago33Txt: TStringField;
    adoqCFDIUsoCFDITxt: TStringField;
    adoqCFDITipoRelacionTxt: TStringField;
    adoqCFDIContrato: TStringField;
    ppDBText8: TppDBText;
    adoqCFDIRelacionados: TADOQuery;
    adoqCFDIRelacionadosIdCFDIRelacionado: TLargeintField;
    adoqCFDIRelacionadosIDCFDI: TLargeintField;
    adoqCFDIRelacionadosIDCFDIAsociado: TLargeintField;
    adoqCFDIRelacionadosUUID: TStringField;
    adoqCFDITotalEnLetra: TStringField;
    adoqCFDIRelacionadosTxt: TStringField;
    adoqCFDIConceptosImpuestoTxt: TStringField;
    adoqCFDIConceptosImpuesto: TCurrencyField;
    ppDBMemo5: TppDBMemo;
    procedure adoqCFDICalcFields(DataSet: TDataSet);
    procedure adoqCFDIConceptosCalcFields(DataSet: TDataSet);
    procedure ppRptCFDIFileDeviceCreate(Sender: TObject);
    procedure ppImageCBBPrint(Sender: TObject);
  private
    { Private declarations }
    FFileIMG: string;
    procedure SetFileIMG(const Value: string);
    function GetRelacionados(IdCFDI: Integer): string;
    function GetImpuesto(IdCFDIConcepto:Integer; var Descripcion: string): Double;
  public
    { Public declarations }
     property FileIMG: string read FFileIMG write SetFileIMG;
     procedure GenerarArchivoPDF(IdCFDI:Integer; ArchivoPDF, ArchivoImagen: TFileName);
     procedure Imprimir(IdCFDI: Integer; ArchivoImagen: TFileName);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod, _Utils;

{$R *.dfm}

{ TdmRptCFDI33 }

procedure TdmRptCFDI33.adoqCFDICalcFields(DataSet: TDataSet);
var
  vTotal: Double;
  Centavos: string;
begin
  vTotal:= StrToFloat(FormatFloat('0.00', adoqCFDITotal.AsFloat));
  Centavos := FormatFloat('.00', Frac(vTotal));
  Delete(Centavos,1,1);
  adoqCFDITotalEnLetra.AsString:= xIntToLletras(Trunc(vTotal)) + ' PESOS ' + Centavos + '/100 M. N. ';
  adoqCFDIRelacionadosTxt.AsString:= GetRelacionados(adoqCFDIIdCFDI.Value);
end;

procedure TdmRptCFDI33.adoqCFDIConceptosCalcFields(DataSet: TDataSet);
var
   Descripcion: string;
begin
  adoqCFDIConceptosImpuesto.Value := GetImpuesto(adoqCFDIConceptosIdCFDIConcepto.Value, Descripcion);
  adoqCFDIConceptosImpuestoTxt.AsString := Descripcion;
end;

procedure TdmRptCFDI33.GenerarArchivoPDF(IdCFDI: Integer; ArchivoPDF,
  ArchivoImagen: TFileName);
begin
  FileIMG:= ArchivoImagen;
  adoqCFDI.Close;
  adoqCFDI.Parameters.Parambyname('IdCFDI').value:= IdCFDI;
  adoqCFDI.Open;
  if not adoqCFDI.Eof then
  begin
    ppRptCFDI.Template.FileName:= _dmConection.ExePath + _CFDIRTM;
    ppRptCFDI.Template.LoadFromFile;
    ppRptCFDI.ShowPrintDialog := False;
    ppRptCFDI.ShowCancelDialog := False;
    ppRptCFDI.DeviceType:= 'PDF';
    ppRptCFDI.PDFSettings.OpenPDFFile := False;
    ppRptCFDI.TextFileName:= ArchivoPDF;
    ppRptCFDI.Print;
  end
end;

function TdmRptCFDI33.GetImpuesto(IdCFDIConcepto: Integer;
  var Descripcion: string): Double;
begin
  Result := 0;
  adoqCFDIConceptosImpuestos.Close;
  adoqCFDIConceptosImpuestos.Parameters.ParamByName('IdCFDIConcepto').Value:= IdCFDIConcepto;
  adoqCFDIConceptosImpuestos.Open;
  Descripcion:= adoqCFDIConceptosImpuestosClaveImpuesto.AsString + '-' + adoqCFDIConceptosImpuestosImpuesto.AsString;
  result:= adoqCFDIConceptosImpuestosImporte.AsCurrency;
  adoqCFDIConceptosImpuestos.Close;
end;

function TdmRptCFDI33.GetRelacionados(IdCFDI: Integer): string;
begin
  Result := EmptyStr;
  adoqCFDIRelacionados.Close;
  adoqCFDIRelacionados.Parameters.ParamByName('IdCFDI').Value:= IdCFDI;
  adoqCFDIRelacionados.Open;
  while not adoqCFDIRelacionados.Eof do
  begin
    if result = EmptyStr then
       Result:= adoqCFDIRelacionadosUUID.AsString
    else
      Result:= Result + ', ' + adoqCFDIRelacionadosUUID.AsString;
    adoqCFDIRelacionados.Next;
  end;
  adoqCFDIRelacionados.Close;
end;

procedure TdmRptCFDI33.Imprimir(IdCFDI: Integer; ArchivoImagen: TFileName);
begin
  FileIMG:= ArchivoImagen;
  adoqCFDI.Close;
  adoqCFDI.Parameters.Parambyname('IdCFDI').value:= IdCFDI;
  adoqCFDI.Open;
  if not adoqCFDI.Eof then
  begin
    ppRptCFDI.Template.FileName:= _dmConection.ExePath + _CFDIRTM;
    ppRptCFDI.Template.LoadFromFile;
    ppRptCFDI.ShowPrintDialog := False;
    ppRptCFDI.ShowCancelDialog := False;
    ppRptCFDI.AllowPrintToArchive:= False;
    ppRptCFDI.DeviceType:= 'Screen';
//    ppRptCFDI.DeviceType:= 'Printer';
    ppRptCFDI.Print;
  end
end;

procedure TdmRptCFDI33.ppImageCBBPrint(Sender: TObject);
begin
  ppImageCBB.Picture.LoadFromFile(FileIMG);
end;

procedure TdmRptCFDI33.ppRptCFDIFileDeviceCreate(Sender: TObject);
begin
  ppImageCBB.OnPrint:= ppImageCBBPrint
end;

procedure TdmRptCFDI33.SetFileIMG(const Value: string);
begin
  FFileIMG := Value;
end;

end.
