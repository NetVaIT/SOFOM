unit XMLtoPDFDmod;

interface

uses
  SysUtils, Classes, xmldom, DB, DBClient, Xmlxform, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, Provider, ppBands, ppCache, ppEndUsr,
  ppMemo, ppStrtch, ppVar, ppCtrls, jpeg, ppPrnabl, ppParameter, ppModule,
  raCodMod, ppSubRpt, ADODB, Dialogs, Forms, ppDesignLayer, MidasLib,
  ppBarCode2D, dxGDIPlusClasses, Graphics;

const
  fePDF = '.PDF';
  fePNG = '.PNG';

type
  TNLCurrency = (nlcPesos, nlcDolares);

  TdmodXMLtoPDF = class(TDataModule)
    XMLTransform: TXMLTransform;
    cdsXML: TClientDataSet;
    XMLTransformProvider: TXMLTransformProvider;
    ppReport: TppReport;
    ppDBPipelineDatosFactura: TppDBPipeline;
    dsXML: TDataSource;
    ppDBPipelineDatosDetalleFactura: TppDBPipeline;
    dsConcepto: TDataSource;
    ppDBPipelineDatosRetencion: TppDBPipeline;
    dsRetencion: TDataSource;
    ppDBPipelineDatosTraslado: TppDBPipeline;
    dsTraslado: TDataSource;
    ppDesigner: TppDesigner;
    cdsXMLImporteConLetra: TStringField;
    cdsXMLCadenaOriginal: TStringField;
    adosp_GetTipoDocumento: TADOStoredProc;
    cdsConcepto: TClientDataSet;
    dsInfoAduanera: TDataSource;
    ppDBPipelineInfoAduanera: TppDBPipeline;
    cdsRetencion: TClientDataSet;
    cdsTraslado: TClientDataSet;
    cdsInfoAduanera: TClientDataSet;
    OpenDialogXML: TOpenDialog;
    cdsRegimenFiscal: TClientDataSet;
    dsRegimenFiscal: TDataSource;
    ppDBPipelineRegimenFiscal: TppDBPipeline;
    cdsXMLversion: TStringField;
    cdsXMLserie: TStringField;
    cdsXMLfolio: TStringField;
    cdsXMLsello: TStringField;
    cdsXMLformaDePago: TStringField;
    cdsXMLnoCertificado: TStringField;
    cdsXMLcertificado: TStringField;
    cdsXMLcondicionesDePago: TStringField;
    cdsXMLsubTotal: TBCDField;
    cdsXMLdescuento: TBCDField;
    cdsXMLmotivoDescuento: TStringField;
    cdsXMLTipoCambio: TStringField;
    cdsXMLMoneda: TStringField;
    cdsXMLtotal: TBCDField;
    cdsXMLtipoDeComprobante: TStringField;
    cdsXMLmetodoDePago: TStringField;
    cdsXMLLugarExpedicion: TStringField;
    cdsXMLNumCtaPago: TStringField;
    cdsXMLFolioFiscalOrig: TStringField;
    cdsXMLSerieFolioFiscalOrig: TStringField;
    cdsXMLFechaFolioFiscalOrig: TStringField;
    cdsXMLMontoFolioFiscalOrig: TBCDField;
    cdsXMLEmisor_rfc: TStringField;
    cdsXMLEmisor_nombre: TStringField;
    cdsXMLDomicilioFiscal_calle: TStringField;
    cdsXMLDomicilioFiscal_noExterior: TStringField;
    cdsXMLDomicilioFiscal_noInterior: TStringField;
    cdsXMLDomicilioFiscal_colonia: TStringField;
    cdsXMLDomicilioFiscal_localidad: TStringField;
    cdsXMLDomicilioFiscal_referencia: TStringField;
    cdsXMLDomicilioFiscal_municipio: TStringField;
    cdsXMLDomicilioFiscal_estado: TStringField;
    cdsXMLDomicilioFiscal_pais: TStringField;
    cdsXMLDomicilioFiscal_codigoPostal: TStringField;
    cdsXMLExpedidoEn_calle: TStringField;
    cdsXMLExpedidoEn_noExterior: TStringField;
    cdsXMLExpedidoEn_noInterior: TStringField;
    cdsXMLExpedidoEn_colonia: TStringField;
    cdsXMLExpedidoEn_localidad: TStringField;
    cdsXMLExpedidoEn_referencia: TStringField;
    cdsXMLExpedidoEn_municipio: TStringField;
    cdsXMLExpedidoEn_estado: TStringField;
    cdsXMLExpedidoEn_pais: TStringField;
    cdsXMLExpedidoEn_codigoPostal: TStringField;
    cdsXMLReceptor_rfc: TStringField;
    cdsXMLReceptor_nombre: TStringField;
    cdsXMLDomicilio_calle: TStringField;
    cdsXMLDomicilio_noExterior: TStringField;
    cdsXMLDomicilio_noInterior: TStringField;
    cdsXMLDomicilio_colonia: TStringField;
    cdsXMLDomicilio_localidad: TStringField;
    cdsXMLDomicilio_referencia: TStringField;
    cdsXMLDomicilio_municipio: TStringField;
    cdsXMLDomicilio_estado: TStringField;
    cdsXMLDomicilio_pais: TStringField;
    cdsXMLDomicilio_codigoPostal: TStringField;
    cdsXMLtotalImpuestosRetenidos: TBCDField;
    cdsXMLtotalImpuestosTrasladados: TBCDField;
    cdsXMLversion2: TStringField;
    cdsXMLUUID: TStringField;
    cdsXMLFechaTimbrado: TStringField;
    cdsXMLselloCFD: TStringField;
    cdsXMLnoCertificadoSAT: TStringField;
    cdsXMLselloSAT: TStringField;
    cdsXMLRegimenFiscal: TDataSetField;
    cdsXMLConcepto: TDataSetField;
    cdsXMLRetencion: TDataSetField;
    cdsXMLTraslado: TDataSetField;
    cdsConceptocantidad: TBCDField;
    cdsConceptounidad: TStringField;
    cdsConceptonoIdentificacion: TStringField;
    cdsConceptodescripcion: TStringField;
    cdsConceptovalorUnitario: TBCDField;
    cdsConceptoimporte: TBCDField;
    cdsConceptonumero: TStringField;
    cdsConceptoInformacionAduanera: TDataSetField;
    cdsConceptoParte: TDataSetField;
    cdsRetencionimpuesto: TStringField;
    cdsRetencionimporte: TBCDField;
    cdsTrasladoimpuesto: TStringField;
    cdsTrasladotasa: TBCDField;
    cdsTrasladoimporte: TBCDField;
    cdsInfoAduaneranumero: TStringField;
    cdsInfoAduanerafecha: TDateField;
    cdsInfoAduaneraaduana: TStringField;
    cdsRegimenFiscalRegimen: TStringField;
    cdsXMLfecha: TStringField;
    cdsXMLCadenaOriginalTimbre: TStringField;
    ADODtStMetodoPago: TADOQuery;
    cdsXMLMetPagoNombre: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLblEtiqueta: TppLabel;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppShpMarco: TppShape;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText36: TppDBText;
    ppLabel29: TppLabel;
    ppLabel18: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel35: TppLabel;
    ppLabel40: TppLabel;
    ppLabel44: TppLabel;
    ppLabel49: TppLabel;
    ppDBText18: TppDBText;
    ppDBText41: TppDBText;
    ppDBText26: TppDBText;
    ppDBText39: TppDBText;
    ppDBText27: TppDBText;
    ppDBText40: TppDBText;
    ppDBText43: TppDBText;
    ppDBText42: TppDBText;
    ppDBText35: TppDBText;
    ppDBText34: TppDBText;
    ppDBText22: TppDBText;
    ppDBText21: TppDBText;
    ppDBText2: TppDBText;
    ppDBText20: TppDBText;
    ppDBText1: TppDBText;
    ppDBText19: TppDBText;
    ppLine9: TppLine;
    ppDBText25: TppDBText;
    ppDBText23: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppShpTitulo: TppShape;
    ppLblTipoDoc: TppLabel;
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
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel22: TppLabel;
    ppLblIdentificador: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText30: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText33: TppDBText;
    ppDBImage1: TppDBImage;
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
    ppLabel23: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel36: TppLabel;
    ppDBText14: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppDBText37: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    ppLblDatosContrato: TppLabel;
    procedure cdsXMLCalcFields(DataSet: TDataSet);
    procedure ppReportFileDeviceCreate(Sender: TObject);
    procedure ppImageCBBPrint(Sender: TObject);
  private
    { Private declarations }
    FFileXTR: string;
    FFileRTM: string;
    FCadenaOriginal: string;
    FFileIMG: string;
    FCadenaOriginalTimbre: string;
//    FDocumentType: Integer;
    procedure SetFileRTM(const Value: string);
    procedure SetFileXTR(const Value: string);
    procedure SetFileIMG(const Value: string);
//    procedure SetDocumentType(const Value: Integer);
  public
    { Public declarations }                          //Mar 31/16
    function GeneratePDFFile(pXMLFileName: TFileName;ATipoDoc:String;Etiqueta:String='';identifica:String=''): TFileName;
    procedure PrintPDFFile(pXMLFileName: TFileName);                                    //Ago 26/16
    procedure ModifyDocument;
    property FileRTM: string read FFileRTM write SetFileRTM;
    property FileXTR: string read FFileXTR write SetFileXTR;
    property FileIMG: string read FFileIMG write SetFileIMG;
//    property DocumentType: Integer read FDocumentType write SetDocumentType;
    property CadenaOriginal: string read FCadenaOriginal write FCadenaOriginal;
    property CadenaOriginalTimbre: string read FCadenaOriginalTimbre write FCadenaOriginalTimbre;
  end;

implementation

uses _Utils;

{$R *.dfm}

//function NumToLetter(Value: Double; pCurrency: TNLCurrency): String;
//begin
//  Result:= '';
//end;
//
//function GetCadenaOriginal22(pXMLFileName: string): string;
//begin
//  Result:= '';
//end;

{ TdmodXMLtoPDF }

procedure TdmodXMLtoPDF.cdsXMLCalcFields(DataSet: TDataSet);
var
  vTotal: Double;
  Centavos : String;
begin
  vTotal:= StrToFloat(FormatFloat('0.00',cdsXMLtotal.Value));
//  cdsXMLImporteConLetra.AsString:= NumToLetter(vTotal, nlcPesos);
  Centavos := FormatFloat('.00',Frac(vTotal));
  Delete(Centavos,1,1);
  cdsXMLImporteConLetra.AsString := xIntToLletras(Trunc(vTotal)) + ' PESOS ' + Centavos + '/100 M. N. ';
  { TODO -oJHC : Se agrega un TRY porque con la factura ZIN332 mando un AV sin razon, habra que cambiar esto. }
  try
  cdsXMLCadenaOriginal.AsString:= CadenaOriginal;
  except on E: Exception do
  end;
  try
  cdsXMLCadenaOriginalTimbre.AsString:= CadenaOriginalTimbre;
  except on E: Exception do
  end;
end;

function TdmodXMLtoPDF.GeneratePDFFile(pXMLFileName: TFileName;ATipoDoc:String;Etiqueta:String='';identifica:String=''): TFileName;
var                                                             //Mar 31/16                       //Ago 26/16
  vPDFFileName: TFileName;
begin
  Result:= EmptyStr;
//  cdsXML.CreateDataSet;
//  cdsXML.Open;
//  ShowMessage(IntToStr(cdsXML.RecordCount));
//  cdsXML.Edit;
//  (cdsXML.FieldByName('CBB' as TGraphicField)).LoadFromFile(FileIMG);
//  cdsXMLCBB.LoadFromFile(FileIMG);
//  cdsXML.Post;
//  cdsXML.Close;
  if FileExists(pXMLFileName) then
  begin
    //Configura el XML
    vPDFFileName:= ChangeFileExt(pXMLFileName, fePDF);
//    FCadenaOriginal:= GetCadenaOriginal22(pXMLFileName);
    XMLTransform.SourceXMLFile:= pXMLFileName;
    cdsXML.XMLData:= XMLTransform.Data;
    // Configura el reporte
    ppReport.ShowPrintDialog := False;
    ppReport.ShowCancelDialog := False;

    ppReport.DeviceType:= 'PDF';
    ppLblTipoDoc.Caption:= ATipoDoc;  //Mar 31/16
    //Para que cambie etiqueta
    ppLblDatosContrato.Caption:=Etiqueta; //Dic 6/16

  {  ppLblEtiqueta.Caption:=Etiqueta;   //ERa de Tractopartes
    if Etiqueta<>'' then
    begin
      case Etiqueta[2] of
      'I':ppShpMarco.Pen.Color:=clYellow;
      'O':ppShpMarco.Pen.Color:=clFuchsia;
      'M':ppShpMarco.Pen.Color:=clBlue;
      'X':ppShpMarco.Pen.Color:=clOlive;
      end;
      ppShpTitulo.pen.Color:=ppShpMarco.Pen.Color;
    end;}

    ppLblIdentificador.Caption:=identifica; //Identificador cliente  //Ago 26/16

    ppReport.PDFSettings.OpenPDFFile := False;
    ppReport.TextFileName:= vPDFFileName;
    ppReport.Print;
    Result:= vPDFFileName;
  end
//  else
//    raise Exception.Create(smNotExistFile);
end;

procedure TdmodXMLtoPDF.ModifyDocument;
var
  vXMLFileName: TFileName;
begin
  if OpenDialogXML.Execute then
  begin
    //Configura el XML
    vXMLFileName:= OpenDialogXML.FileName;
//    FCadenaOriginal:= GetCadenaOriginal22(vXMLFileName);
    XMLTransform.SourceXMLFile:= vXMLFileName;
    cdsXML.XMLData:= XMLTransform.Data;
    // Configura el reporte
//    ppReport.Parameters['RAP'].Value := True;
    ppDesigner.Menu.Items[4].Visible := False;
    ppDesigner.ShowModal;
  end;
end;

procedure TdmodXMLtoPDF.ppImageCBBPrint(Sender: TObject);
begin
  ppImageCBB.Picture.LoadFromFile(FileIMG);
end;

procedure TdmodXMLtoPDF.ppReportFileDeviceCreate(Sender: TObject);
begin
//  If ppReport.FindComponent('') then
    ppImageCBB.OnPrint:= ppImageCBBPrint
end;

procedure TdmodXMLtoPDF.PrintPDFFile(pXMLFileName: TFileName);
var                       // Modificado
  vPDFFileName: TFileName;
begin
  if FileExists(pXMLFileName) then
  begin
    //Configura el XML
// DES ABAN eNE7/16    vPDFFileName:= ChangeFileExt(pXMLFileName, fePDF);
//    FCadenaOriginal:= GetCadenaOriginal22(pXMLFileName);
// DES ABAN eNE7/16       XMLTransform.SourceXMLFile:= pXMLFileName;
// DES ABAN eNE7/16       cdsXML.XMLData:= XMLTransform.Data;
    // Configura el reporte
    ppReport.ShowPrintDialog:= False;
    ppReport.ShowCancelDialog:= False;
    ppReport.AllowPrintToArchive:= False;
    ppReport.DeviceType:= 'Printer';
//    ppReport.PrinterSetup.Copies:= 1;
// DES ABAN eNE7/16      ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
    ppReport.Print;
  end
//  else
//    raise Exception.Create(smNotExistFile);
end;

//procedure TdmodXMLtoPDF.SetDocumentType(const Value: Integer);
//begin
//  FDocumentType := Value;
//  adosp_GetTipoDocumento.Parameters.ParamByName('@TIPO_DOCUMENTO').Value  := Value;
//  adosp_GetTipoDocumento.ExecProc;
//  FileRTM:= adosp_GetTipoDocumento.Parameters.ParamByName('@ARCHIVO_RTM').Value;
//end;

procedure TdmodXMLtoPDF.SetFileIMG(const Value: string);
begin
  FFileIMG := Value;
end;

procedure TdmodXMLtoPDF.SetFileRTM(const Value: string);
begin
  FFileRTM := Value;
  ppReport.Template.FileName := Value;
  ppReport.Template.LoadFromFile;
end;

procedure TdmodXMLtoPDF.SetFileXTR(const Value: string);
begin
  FFileXTR := Value;
  XMLTransform.TransformationFile := Value;
end;

end.
