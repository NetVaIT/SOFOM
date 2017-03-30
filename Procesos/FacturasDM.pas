unit FacturasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,dateutils,dialogs,forms, shellAPI,winapi.windows, VirtualXML;
                                                                            //movido aca
type
  TdmFacturas = class(T_dmStandar)
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdCFDITipoDocumento: TIntegerField;
    adodsMasterIdCFDIFormaPago: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdPersonaEmisor: TIntegerField;
    adodsMasterIdPersonaReceptor: TIntegerField;
    adodsMasterIdDocumentoCBB: TIntegerField;
    adodsMasterIdDocumentoXML: TIntegerField;
    adodsMasterIdDocumentoPDF: TIntegerField;
    adodsMasterIdCFDIEstatus: TIntegerField;
    adodsMasterIdCFDIFacturaGral: TLargeintField;
    adodsMasterIdClienteDomicilio: TIntegerField;
    adodsMasterCuentaCte: TStringField;
    adodsMasterTipoCambio: TStringField;
    adodsMasterTipoComp: TStringField;
    adodsMasterSerie: TStringField;
    adodsMasterFolio: TLargeintField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterLugarExpedicion: TStringField;
    adodsMasterSello: TStringField;
    adodsMasterCondPago: TStringField;
    adodsMasterNoCertificado: TStringField;
    adodsMasterCertificado: TStringField;
    adodsMasterSubTotal: TFloatField;
    adodsMasterDescto: TFloatField;
    adodsMasterMotivoDescto: TStringField;
    adodsMasterTotal: TFloatField;
    adodsMasterNumCtaPago: TStringField;
    adodsMasterCadenaOriginal: TStringField;
    adodsMasterTotalImpuestoRetenido: TFloatField;
    adodsMasterTotalImpuestoTrasladado: TFloatField;
    adodsMasterSaldoDocumento: TFloatField;
    adodsMasterFechaCancelacion: TDateTimeField;
    adodsMasterObservaciones: TStringField;
    adodsMasterPorcentajeIVA: TFloatField;
    adodsMasterEmailCliente: TStringField;
    adodsMasterUUID_TB: TStringField;
    adodsMasterSelloCFD_TB: TStringField;
    adodsMasterSelloSAT_TB: TStringField;
    adodsMasterCertificadoSAT_TB: TStringField;
    adodsMasterFechaTimbrado_TB: TDateTimeField;
    ADODtStCFDIConceptos: TADODataSet;
    ADODtStCFDIConceptosIdCFDI: TLargeintField;
    ADODtStCFDIConceptosIdUnidadMedida: TIntegerField;
    ADODtStCFDIConceptosCantidad: TFloatField;
    ADODtStCFDIConceptosUnidad: TStringField;
    ADODtStCFDIConceptosDescripcion: TStringField;
    ADODtStCFDIConceptosNoIdentifica: TStringField;
    ADODtStCFDIConceptosValorUnitario: TFMTBCDField;
    ADODtStCFDIConceptosImporte: TFMTBCDField;
    ADODtStCFDIConceptosIdCFDIConcepto: TLargeintField;
    DSMaster: TDataSource;
    ADODtStCFDIImpuestos: TADODataSet;
    ADODtStCFDIImpuestosIdCFDI: TLargeintField;
    ADODtStCFDIImpuestosTipoImp: TStringField;
    ADODtStCFDIImpuestosImpuesto: TStringField;
    ADODtStCFDIImpuestosTasa: TFloatField;
    ADODtStCFDIImpuestosImporte: TFloatField;
    ADODtStPersonaEmisor: TADODataSet;
    ADODtStPersonaEmisoridpersona: TAutoIncField;
    ADODtStPersonaEmisorRazonSocial: TStringField;
    ADODtStPersonaEmisorRFC: TStringField;
    ADODtStPersonaEmisorNumCtaPagoCliente: TStringField;
    ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField;
    ADODtStPersonaEmisorIdDomicilio: TIntegerField;
    ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField;
    ADODtStPersonaEmisorPredeterminado: TBooleanField;
    ADODtStPersonaEmisorCalle: TStringField;
    ADODtStPersonaEmisorNoExterior: TStringField;
    ADODtStPersonaEmisorNoInterior: TStringField;
    ADODtStPersonaEmisorColonia: TStringField;
    ADODtStPersonaEmisorCodigoPostal: TStringField;
    ADODtStPersonaEmisorMunicipio: TStringField;
    ADODtStPersonaEmisorPoblacion: TStringField;
    ADODtStPersonaEmisorEstado: TStringField;
    ADODtStPersonaEmisorPais: TStringField;
    ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField;
    ADODtStPersonaReceptor: TADODataSet;
    ADODtStPersonaReceptoridpersona: TAutoIncField;
    ADODtStPersonaReceptorRazonSocial: TStringField;
    ADODtStPersonaReceptorRFC: TStringField;
    ADODtStPersonaReceptorNumCtaPagoCliente: TStringField;
    ADODtStPersonaReceptorIdPersonaDomicilio: TAutoIncField;
    ADODtStPersonaReceptorIdDomicilio: TIntegerField;
    ADODtStPersonaReceptorIdDomicilioTipo: TIntegerField;
    ADODtStPersonaReceptorPredeterminado: TBooleanField;
    ADODtStPersonaReceptorCalle: TStringField;
    ADODtStPersonaReceptorNoExterior: TStringField;
    ADODtStPersonaReceptorNoInterior: TStringField;
    ADODtStPersonaReceptorColonia: TStringField;
    ADODtStPersonaReceptorCodigoPostal: TStringField;
    ADODtStPersonaReceptorMunicipio: TStringField;
    ADODtStPersonaReceptorPoblacion: TStringField;
    ADODtStPersonaReceptorEstado: TStringField;
    ADODtStPersonaReceptorPais: TStringField;
    ADODtStPersonaEmisorIdMetodoPago: TIntegerField;
    ADODtStPersonaReceptorIdMetodoPago: TIntegerField;
    ADODtStBuscaFolioSerie: TADODataSet;
    ADODtStBuscaFolioSerieIdCFDITipoDocumento: TAutoIncField;
    ADODtStBuscaFolioSerieDescripcion: TStringField;
    ADODtStBuscaFolioSerieSerieDoc: TStringField;
    ADODtStBuscaFolioSerieFolioDoc: TLargeintField;
    ADODtStBuscaFolioSerieTipoComprobante: TStringField;
    ADODtStCFDIEstatus: TADODataSet;
    ADODtStFormasPago: TADODataSet;
    ADODtStFormasPagoIDCFDIFormaPago: TAutoIncField;
    ADODtStFormasPagoIdentificador: TStringField;
    ADODtStFormasPagoDescripcion: TStringField;
    ADODtStMetodoPago: TADODataSet;
    ADODtStMetodoPagoIdMetodoPago: TAutoIncField;
    ADODtStMetodoPagoIdentificador: TStringField;
    ADODtStMetodoPagoDescripcion: TStringField;
    ADODtStMetodoPagoExigeCuenta: TIntegerField;
    ADODtStMetodoPagoClaveSAT2016: TStringField;
    ADODtStMonedas: TADODataSet;
    ADODtStTiposDocumentos: TADODataSet;
    ADODtStTiposDocumentosIdCFDITipoDocumento: TAutoIncField;
    ADODtStTiposDocumentosDescripcion: TStringField;
    ADODtStTiposDocumentosSerieDoc: TStringField;
    ADODtStTiposDocumentosFolioDoc: TLargeintField;
    ADODtStTiposDocumentosTipoComprobante: TStringField;
    adodsMasterCliente: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterMetodoPago: TStringField;
    actProcesaFactura: TAction;
    adodsArchivosCerKey: TADODataSet;
    adodsArchivosCerKeyIdPersona: TIntegerField;
    adodsArchivosCerKeyIdDocumentoCER: TIntegerField;
    adodsArchivosCerKeyIdDocumentoKEY: TIntegerField;
    adodsArchivosCerKeyClave: TStringField;
    adodsArchivosCerKeyVencimiento: TDateTimeField;
    adodsArchivosCerKeyNomCert: TStringField;
    adodsArchivosCerKeyIdCert: TGuidField;
    adodsArchivosCerKeyArchiCer: TBlobField;
    adodsArchivosCerKeyNomKey: TStringField;
    adodsArchivosCerKeyIdKey: TGuidField;
    adodsArchivosCerKeyArchiKey: TBlobField;
    adodsMasterMetPagoClaveSAT: TStringField;
    adodsMasterClaveMoneda: TStringField;
    adodsDocumento: TADODataSet;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoIdDocumentoTipo: TIntegerField;
    adodsDocumentoIdDocumentoClase: TIntegerField;
    adodsDocumentoDescripcion: TStringField;
    adodsDocumentoNombreArchivo: TStringField;
    adodsDocumentoIdArchivo: TGuidField;
    adodsDocumentoArchivo: TBlobField;
    ADOQryAuxiliar: TADOQuery;
    ADODSAuxiliar: TADODataSet;
    adodsMasterTipoDocumento: TStringField;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccionesClienteIdPersona: TIntegerField;
    ADODtStDireccionesClienteIdDomicilio: TIntegerField;
    ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField;
    ADODtStDireccionesClientePredeterminado: TBooleanField;
    ADODtStDireccionesClienteCalle: TStringField;
    ADODtStDireccionesClienteNoExterior: TStringField;
    ADODtStDireccionesClienteNoInterior: TStringField;
    ADODtStDireccionesClienteColonia: TStringField;
    ADODtStDireccionesClienteCodigoPostal: TStringField;
    ADODtStDireccionesClienteMunicipio: TStringField;
    ADODtStDireccionesClientePoblacion: TStringField;
    ADODtStDireccionesClienteEstado: TStringField;
    ADODtStDireccionesClientePais: TStringField;
    ADODtStDireccionesClienteDirCompleta: TStringField;
    ADODtStDireccAuxiliar: TADODataSet;
    AutoIncField2: TAutoIncField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    BooleanField1: TBooleanField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    adodsMasterDirCompleta: TStringField;
    ActImprimeFactura: TAction;
    adodsMasterDireccionC: TStringField;
    ADODtStCFDIConceptosIdCuentaXCobrarDetalle: TIntegerField;
    adodsMasterIdCuentaXCobrar: TIntegerField;
    adodsMasterSaldoFactoraje: TFMTBCDField;
    ActCancelarCFDI: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actProcesaFacturaExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosBeforeInsert(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosAfterPost(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosNewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosValorUnitarioChange(Sender: TField);
    procedure ADODtStCFDIConceptosAfterDelete(DataSet: TDataSet);
    procedure adodsMasterIdPersonaReceptorChange(Sender: TField);
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
    procedure ActImprimeFacturaExecute(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActCancelarCFDIExecute(Sender: TObject);

  private
    FTipoDoc: Integer;
    FMuestra: Boolean;
    FIDCFDIGen: Integer;
    { Private declarations }
    procedure ReadFileCERKEY(FileNameCER,FileNameKEY: TFileName);
    function ConvierteFechaT_DT(Texto: String): TDateTime;
    function CargaXMLPDFaFS(Archivo, Describe: string): integer;
    procedure SubirXMLPDFaFS(FileName: TFileName);
    Function ActualizaSaldoCliente(IdCFDI, IDCliente, IDDomicilioCliente:Integer;Importe :Double; operacion:String):Boolean;
    function VerificaArchivo(var IDArchivo: Integer; Archivo: String;
      var Respuesta: String): Boolean;
    procedure SetMuestra(const Value: Boolean);
    function SacaTipoComp(tipoD: Integer): String;
    function InformacionContrato(IdCXC: Integer): String;
    procedure ReadFile(FileName: TFileName);
    function CrearArchivos_TimbrePrueba(var Ruta: String;
      var TimbradoCFDI: TTimbreCFDI; Adicional: String): Boolean; //Regresado
  public
    { Public declarations }
     EsProduccion:Boolean;
     constructor CreateWMostrar(AOwner: TComponent; Muestra: Boolean;TipoDoc:Integer); virtual;
     property Muestra:Boolean read FMuestra write SetMuestra;
     property TipoDocumento:Integer read FTipoDoc write FTipoDoc;
     Property PIDCFDIGen:Integer read  FIDCFDIGen write FIDCFDIGen; //FEb 8/17
  end;

var
  dmFacturas: TdmFacturas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacturasForm, ConceptosFacturaForm, DocComprobanteFiscal, FacturaTipos,
  XMLtoPDFDmod, _Utils;

{$R *.dfm}

procedure TdmFacturas.ActCancelarCFDIExecute(Sender: TObject);
var
  f:String;
begin
  inherited;
//Cancelar CFDI

  f:='Serie: '+adodsMasterserie.asstring+' Folio:'+adodsMasterFolio.AsString;
  if (Application.MessageBox(pChar('Esta seguro de cancelar el CFDI con '+f +' ?'),'Confirmación',MB_YESNO)=IDYES) then
  begin
    //REgistrar en Bitacora... VErificar que tipo de Factura es.. y que impplica cancelar...


  end;

end;

procedure TdmFacturas.ActImprimeFacturaExecute(Sender: TObject);
var      //Dic 22/15
  IdDoc, Avance:Integer;
  nombreArchi, nomImagen,nomAux:TfileName;
  XMLpdf: TdmodXMLtoPDF;
  Contrato,TipoDoc:String; //Mar 31/16

begin
  inherited;

    Avance:=0; //Ene8/16
    ShowProgress(5,100.1,'Buscando Archivos...' + IntToStr(5) + '%');
  try
   // ConvierteBinADec(DMImpresion,ArrBinario);
      //Sacar ID del Archivo XML del Master
    idDoc:=adodsMasteridDocumentoXML.asInteger;
    adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
    adoDSDocumento.filtered:=True;
    adoDSDocumento.open;
    nombreArchi:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

    readFile( nombreArchi); //sacaxml

    //Sacar PNG Ene6/16
    idDoc:=adodsMasterIdDocumentoCBB.asInteger;
    if idDoc>0 then
    begin
      adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
      adoDSDocumento.filtered:=True;
      adoDSDocumento.open;
      nomImagen:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

      readFile(nomImagen); //sacaPng
    end;
    //Hasta aca ene6/16

    TipoDoc:= adodsMaster.FieldByName('TipoDocumento').AsString ; //Mar 31/16
    //nombreArchi:= ChangeFileExt(nombreArchi, fePDF);
    //nombreArchi:=ExtractfilePath(Application.exename)+nombreArchi;
    //Se manda el nombre del XML
    XMLpdf := TdmodXMLtoPDF.Create(Self);
    XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIManarina.rtm'; //dic28/15  HAy  que actualizarlos
    XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';   //dic28/15
    XMLpdf.CadenaOriginalTimbre:= adodsMasterCadenaOriginal.AsString; //dic 28/15 verificar
    try
       XMLpdf.FileIMG := nomImagen;//nombreArchi + fePNG; //Ajustado ene6/16
       if fileExists(XMLpdf.FileIMG) then//dic 28/15
       begin
         ShowProgress(20,100.1,'Generando para imprimir...' + IntToStr(20) + '%');
         if not adodsMasterIdCuentaXCobrar.isnull then
            Contrato:='Contrato: '+Informacioncontrato(adodsMasterIDCuentaXCobrar.Value) //Dic 7/16 //verificar  que pasa si la FActura no tiene CXC??
        else
           Contrato:='';
        nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,Contrato,'');
        XMLpdf.PrintPDFFile(nomAux);
       end
       else
       begin
         nombreArchi:='';

       end;
    finally
      XMLpdf.Free;
    end;
    adoDSDocumento.filter:='';
    adoDSDocumento.filtered:=false;
    if nombreArchi<>'' then                        //Ultimo
         ShellExecute(application.Handle, 'open', PChar(nomAux), nil, nil, SW_SHOWNORMAL)
      else
        Showmessage ('No fue posible regenerar el PDF, puede que no se haya encontrado el archivo PNG');
  except
      Showmessage ('No fue posible regenerar el PDF, verifique que no se encuentre abierto en si visor de PDFs');
  end;
  ShowProgress(100,100);
  //Filtrar con ID enDocumento
  //Sacar Documento
  //Aun no guarda de nuevo.. (Verificar)
end;
procedure TDMFacturas.ReadFile(FileName: TFileName); //Dic 15/16
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob := adodsDocumento.CreateBlobStream(adodsDocumentoArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;


procedure TdmFacturas.actProcesaFacturaExecute(Sender: TObject);
const  //Copiado de sistema RH Dic 7/15
  _SEGUNDOS_A_RESTAR = -30;
var
  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado;
  Emisor, Receptor: TFEContribuyente;
  ImpuestoRet: TFEImpuestoRetenido;
  ImpuestoTras : TFEImpuestoTrasladado;
//  ImpuestoLocal: TFEImpuestoLocal;
  ConceptoActual : TFEConcepto;    // Dic 7/15 Se cambio  para que en el se coloque cada concepto y luiego se mande agregaer en un ciclo

  TimbreCFDI: TTimbreCFDI;
  FileCertificado, FileKey : TFileName;
  Clave : String;
  Anio, Mes, Dia : Word;                         //Ene 27/17
  RutaBase, SubCarpeta, RutaFactura, RutaPDF, RutaIMG : String;
  XMLpdf : TdmodXMLtoPDF;
  Max, Avance, i ,
  IDPDF, IDXML, IDCBB: integer; //Sep 27/16 Para hacer proceso en dos partes
  Respuesta:String; //Sep 27/16

  FechaAux:TDAteTime;//Porque si se intento generar le mande la misma fecha original
  TipoDoc:String; //Mar 31/16 para enviar como parametro
  IdCFDIAuxiliar:integer; //Oct 27/16 para verificar que este en el mismo , idOrdenSalAux se quito nov 28/16
  Contrato:String; //Para mañarina dic 7/16

  Continuar:Boolean; //Ene27/17 para proceso alterno facturacion
  AuxTxt:String;
begin
  inherited;
  AuxTxt:='';
  //Habilitado Dic 21/15
  ShowProgress(10,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(10) + '%');  //Jun 2/16
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIManarina.rtm'; //Cambiado Nov 29/16
  XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';
   //Habilitado Dic 21/15 hasta aca
  //verificar si no se intento generar antes
  FechaAux:=IncSecond(Now, _SEGUNDOS_A_RESTAR);
                                      //Prefactura
  if adodsMasterIdCFDIEstatus.AsInteger =1 then
  begin
    //Poner Folio Serie
    if adodsMasterFolio.AsInteger=0 then
    begin
      ADODtStBuscaFolioSerie.Close;
      ADODtStBuscaFolioSerie.Parameters.ParamByName('IdCFDITipoDocumento').Value:= adodsMasterIdCFDITipoDocumento.AsInteger; //Asegurarse que tenga valor
      ADODtStBuscaFolioSerie.Open;
                                                                                  //Mantiene el valor del siguiente a generar Nov 29/16
      if (not ADODtStBuscaFolioSerie.eof) and (ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger >0)then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMasterFolio.AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger;
        adodsMasterSerie.AsString:= ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString;
        adodsMaster.Post;

        ADODtStBuscaFolioSerie.Edit;
        ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger+1;
        ADODtStBuscaFolioSerie.Post;
      end
      else //Verificar si se debe hacer algun ajuste antes de generar!!
      begin //dic 29/15
        Showmessage('Se generara sin serie ,ni folio ');
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post;

      end;
    end
    else //Dic 29/15 ya se intento pero no se genero
    begin
      if FechaAux-adodsMasterFecha.AsDateTime >3 then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post
      end
      else
        FechaAux:=adodsMasterFecha.AsDateTime; //Para que use esa con los datos que tiene
    end;
   // ScreenCursorProc(-11);  //Deshabilitado Dic 29/15
    DecodeDate(Now, Anio, Mes, Dia);
//    RutaBase :=SacaRutaBase;
    ShowProgress(20,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(20) + '%');  //Jun 2/16
    adodsArchivosCerKey.Close;

    ADODtStPersonaEmisor.Close;
    ADODtStPersonaReceptor.Close;
    // Verificar si se require esto... o borrar  adodsEmisor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
    // adodsReceptor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaRelacionada').Value;
     adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaEmisor').asInteger;
    // adodsKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
    adodsArchivosCerKey.Open;
    ADODtStPersonaEmisor.Open;
    ADODtStPersonaReceptor.Open;

    RutaBase:=ExtractFilePath(application.ExeName);
    SubCarpeta := '\' + UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) + IntToStr(Anio) + '\';
    Esproduccion:=FileExists(RutaBase+'EnProduccion.txt'); //Temporal Dic 8/15
    DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;

    TipoDoc:=adodsMaster.FieldByName('TipoDocumento').asString; //Mar 31/16
    ShowProgress(30,100.1,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');  //Jun 2/16
    try
        Emisor.RFC                    := TFERFC(ADODtStPersonaEmisorRFC.AsString);
        Emisor.Nombre                 := ADODtStPersonaEmisorRazonSocial.AsString;
        Emisor.Direccion.Calle        := ADODtStPersonaEmisorCalle.AsString;
        Emisor.Direccion.NoExterior   := ADODtStPersonaEmisorNoExterior.AsString;
        Emisor.Direccion.NoInterior   := ADODtStPersonaEmisorNoInterior.AsString;
        Emisor.Direccion.CodigoPostal := ADODtStPersonaEmisorCodigoPostal.AsString;
        Emisor.Direccion.Colonia      := ADODtStPersonaEmisorColonia.AsString;
        Emisor.Direccion.Municipio    := ADODtStPersonaEmisorMunicipio.AsString;
        Emisor.Direccion.Estado       := ADODtStPersonaEmisorEstado.AsString;
        Emisor.Direccion.Pais         := ADODtStPersonaEmisorPais.AsString;
        Emisor.Direccion.Localidad    := ADODtStPersonaEmisorPoblacion.AsString;
         // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
        SetLength(Emisor.Regimenes, 1);
        Emisor.Regimenes[0] := ADODtStPersonaEmisorRegimenFiscalEmisor.AsString;
        // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
        // Se debe verificar antes de colocar el expedido. ya que sólo debe hacerse para cuando son diferentes
   (*     Emisor.ExpedidoEn.Calle        := Emisor.Direccion.Calle;
        Emisor.ExpedidoEn.NoExterior   := Emisor.Direccion.NoExterior;
        Emisor.ExpedidoEn.NoInterior   := Emisor.Direccion.NoInterior;
        Emisor.ExpedidoEn.CodigoPostal := Emisor.Direccion.CodigoPostal;
        Emisor.ExpedidoEn.Colonia      := Emisor.Direccion.Colonia;
        Emisor.ExpedidoEn.Municipio    := Emisor.Direccion.Municipio;
        Emisor.ExpedidoEn.Estado       := Emisor.Direccion.Estado;
        Emisor.ExpedidoEn.Pais         := Emisor.Direccion.Pais;
        Emisor.ExpedidoEn.Localidad    := Emisor.Direccion.Localidad;
        Emisor.ExpedidoEn.Referencia   := Emisor.Direccion.Referencia;    *)

        ShowProgress(40,100.1,'Extrayendo datos de Receptor ' + IntToStr(40) + '%');  //Jun 2/16
        Receptor.RFC := TFERFC(ADODtStPersonaReceptorRFC.AsString);
        Receptor.Nombre := ADODtStPersonaReceptorRazonSocial.AsString;
            //Por si no tiene registro de direccion Ene 29/17
        if (not ADODtStPersonaReceptor.Eof)and(ADODtStPersonaReceptorCalle.AsString<>'')and (ADODtStPersonaReceptorPais.AsString<>'')then
        begin
          Receptor.Direccion.Calle:=ADODtStPersonaReceptorCalle.AsString;
          Receptor.Direccion.NoExterior:=ADODtStPersonaReceptorNoExterior.AsString;
          Receptor.Direccion.NoInterior:=ADODtStPersonaReceptorNoInterior.AsString;
          Receptor.Direccion.CodigoPostal:=ADODtStPersonaReceptorCodigoPostal.AsString;
          Receptor.Direccion.Colonia:=ADODtStPersonaReceptorColonia.AsString;
          Receptor.Direccion.Municipio:=ADODtStPersonaReceptorMunicipio.AsString;
          Receptor.Direccion.Estado:=ADODtStPersonaReceptorEstado.AsString;
          Receptor.Direccion.Pais :=ADODtStPersonaReceptorPais.AsString;
          Receptor.Direccion.Localidad:=ADODtStPersonaReceptorPoblacion.AsString;
        end;


        FileCertificado := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
        FileKey := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;  //  TPath.GetTempPath +
        ReadFileCERKEY(FileCertificado,FileKey);

        Clave := adodsArchivosCerKeyClave.AsString;

        Certificado.Ruta := FileCertificado;
        Certificado.LlavePrivada.Ruta := FileKey;
        Certificado.LlavePrivada.Clave := Clave;

        DocumentoComprobanteFiscal.Folio:= adodsMasterFolio.AsInteger; //Dic 9/15
        DocumentoComprobanteFiscal.Serie:= adodsMasterSerie.AsString;  //Dic 9/15

        DocumentoComprobanteFiscal.Emisor := Emisor;
        DocumentoComprobanteFiscal.Receptor := Receptor;
                                                          //Se cambio mar 31/16
        DocumentoComprobanteFiscal.TipoCompTexto := adodsMasterTipoComp.AsString; //verificar que venga

        DocumentoComprobanteFiscal.FechaGeneracion := FechaAux; //Para evitar  dobles generaciones

        DocumentoComprobanteFiscal.MetodoDePago := adodsMasterMetPagoClaveSAT.AsString; //Jun 27/16  adodsMasterMetodoPago.AsString;
        if adodsMasterNumCtaPago.AsString <>''then
          DocumentoComprobanteFiscal.NumeroDeCuenta:= adodsMasterNumCtaPago.AsString;
        // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
        DocumentoComprobanteFiscal.LugarDeExpedicion := ADODtStPersonaEmisorMunicipio.AsString+ ', ' + ADODtStPersonaEmisorEstado.AsString;
        //adodsEmisorPoblacion.AsString ;

    //Llevaba ceros..
        DocumentoComprobanteFiscal.Moneda:= adodsMasterClaveMoneda.AsString;//Jun 27/16
        DocumentoComprobanteFiscal.TipoCambio:= (adodsMasterTipoCambio.AsFloat);//Jun 27/16

        // Definimos todos los conceptos que incluyo la factura
        ShowProgress(50,100.1,'Extrayendo datos de conceptos ' + IntToStr(50) + '%');  //Jun 2/16

        ADODtStCFDIConceptos.First;
        while not ADODtStCFDIConceptos.Eof do
        begin
          ConceptoActual.Cantidad := ADODtStCFDIConceptosCantidad.AsFloat;
          ConceptoActual.Unidad := ADODtStCFDIConceptosUnidad.AsString;  //Verificar contenido
          ConceptoActual.Descripcion := ADODtStCFDIConceptosDescripcion.AsString;
          ConceptoActual.ValorUnitario := ADODtStCFDIConceptosValorUnitario.AsFloat;
          ConceptoActual.NoIdentificacion := ADODtStCFDIConceptosNoIdentifica.asstring;
//        ConceptoActual.CuentaPredial := ADOdsConceptocdsCuentaPredial.Value;
          DocumentoComprobanteFiscal.AgregarConcepto(ConceptoActual);
          ADODtStCFDIConceptos.Next;
        end;
        ADODtStCFDIImpuestos.Close;
        ADODtStCFDIImpuestos.Open;  //Verificar que este ubicado

       // ADODtStCFDIImpuestos.First;
        while not ADODtStCFDIImpuestos.Eof do
        begin
          if ADODtStCFDIImpuestosTipoImp.AsString='Trasladado' then //Verificar que se coloque
          begin
            Impuestotras.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
            Impuestotras.Tasa := ADODtStCFDIImpuestosTasa.AsFloat;
            Impuestotras.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
            DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuestotras);
          end
          else
          begin
            ImpuestoRet.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
            ImpuestoRet.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
            DocumentoComprobanteFiscal.AgregarImpuestoRetenido(ImpuestoRet);
          end;
          ADODtStCFDIImpuestos.Next;
        end;
        RutaFactura := RutaBase + ADODtStPersonaEmisorRFC.AsString + SubCarpeta;
        if not DirectoryExists (RutaFactura) then
           ForceDirectories(RutaFactura);
        if  DirectoryExists (RutaFactura) then
        begin
          ShowProgress(60,100.1,'Timbrando  CFDI .... ' + IntToStr(60) + '%');  //Jun 2/16
          if not esProduccion then
          begin
            Continuar:=CrearArchivos_TimbrePrueba(RutaFactura,TimbreCFDI,adodsMasterSerie.asstring + adodsMasterFolio.asString + feXML);
            RutaPDF:=ChangeFileExt(RutaFactura, fePDF);
            RutaIMG:= ChangeFileExt(RutaFactura, fePNG);
            AuxTxt:='Proceso Alterno ';
          end
          else
            Continuar:=GenerarCFDI(RutaFactura, DocumentoComprobanteFiscal, Certificado, TimbreCFDI,EsProduccion);
          if Continuar then
          begin
            if not esproduccion  then
               XMLpdf.FileIMG :=RutaIMG//Ene 27/17
            else
              XMLpdf.FileIMG := RutaFactura + fePNG; //Dic 21/15
            XMLpdf.CadenaOriginalTimbre:= TimbreCFDI.CadenaTimbre; //Dic 28/15                  tenia nov 28/16  adodsMasterIdentificadorCte.AsString
            //SAcar infocontrato                     //Ene 12/17
            Contrato:=Informacioncontrato(adodsMasterIdCuentaXCobrar.Value); //Dic 7/16 //verificar  que pasa si la FActura no tiene CXC??

            RutaPDF := XMLpdf.GeneratePDFFile(RutaFactura,TipoDoc,Contrato,''); //Dic 21/15  //verificar si sirve ese Formato
            //Actualizar datos de Timbre en CFDI         //Mar 31/16              //Ago 26/16
            adodsMaster.Edit;
            adodsMasterUUID_TB.AsString:=  TimbreCFDI.UUID;
            adodsMasterSelloCFD_TB.AsString:=TimbreCFDI.SelloEmisor;// 26 ago se regreso como estaba Cadenatimbre; XImpresion // ajustado ago 24/16 era SelloEmisor;
            adodsMasterSelloSAT_TB.AsString:=TimbreCFDI.SelloSAT;
            adodsMasterSello.AsString:=TimbreCFDI.SelloEmisor; //Verificar
            adodsMasterCertificadoSAT_TB.AsString:=   TimbreCFDI.NoCertificadoSAT;
            if not esproduccion  then
              adodsMasterFechaTimbrado_TB.AsDateTime:=StrToDateTime(TimbreCFDI.FechaTimbre)
            else
             adodsMasterFechaTimbrado_TB.AsDateTime:=ConvierteFechaT_DT(TimbreCFDI.FechaTimbre);
            adodsMasterCadenaOriginal.AsString:= TimbreCFDI.CadenaTimbre;// 26 ago se regreso como estaba//Cadenaoriginal;//CadenaTimbre ;Ago 24/16  // Dic 23/15
           // adodsMaster
            adodsMasterIdCFDIEstatus.AsInteger:=2; //Dic 29/15
              //Sep 27/16  Ajuste desde
            IdCFDIAuxiliar:= adodsMasterIdCFDI.AsInteger;// Oct 27/16
          //  idOrdenSalAux:= adodsMasterIdOrdenSalida.AsInteger; // Oct 27/16

            adodsMaster.Post; //Se puso esto primero  y luego se asocia el resto

            adodsMaster.Edit;
            IDXML := CargaXMLPDFaFS(RutaFactura,TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));

            IDPDF:=  CargaXMLPDFaFS(RutaPDF, TipoDoc+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
            IDCBB:=  CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG '+TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
            Respuesta:='';
            if VerificaArchivo(IDXML,ExtractFileName(RutaFactura), Respuesta) then     //REspuesta debe concatenar las respuestas si no va vacia //Sep 27/16
              adodsMasterIdDocumentoXML.Value :=IDXML ;
            if VerificaArchivo(IDPDF,ExtractFileName(RutaPDF), Respuesta) then
              adodsMasterIdDocumentoPDF.Value :=IDPDF;
            if  VerificaArchivo(IDCBB, ExtractFileName(XMLpdf.FileIMG), Respuesta) then
               adodsMasterIdDocumentoCBB.Value := IDCBB;

            // sep 27/16

           (* Original                                                      //   'Factura ' //Cambio Mar 31/16
            adodsMasterIdDocumentoXML.Value := CargaXMLPDFaFS(RutaFactura,TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
            adodsMasterIdDocumentoPDF.Value := CargaXMLPDFaFS(RutaPDF, TipoDoc+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));

            adodsMasterIdDocumentoCBB.Value := CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG '+TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
            *)
            adodsMaster.Post;

            ShowProgress(80,100.1,'Actualizando Datos Cliente ' +AuxTxt+ IntToStr(80) + '%');  //Jun 2/16

            if IdCFDIAuxiliar <> adodsMasterIdCFDI.value then    //oct 26/16
               Respuesta:=Respuesta+AuxTxt+'R'+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value)
            //Actualiza Saldos  Mar 1/16
            else  //TEmporel mientras se identifica  el problema                                                                                      //Mar 7/16
              ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'+ ');

            //Actualiza inventario   //No existe  nov 28/16


          //  Showmessage('CFDI Generado');//Dic 29/15

           ShowProgress(100,100.1,'Procesando PDF '+ AuxTxt + IntToStr(100) + '%');  //Jun 2/16
           ShowProgress(100,100);

            if Respuesta <>'' then //Por los archivos Sep 27/16
               showMessage('Advertencias de asociacion archivos...'+ Respuesta);
            if not EsProduccion then
              showMessage('Proceso Alterno de Facturación Terminado '+adodsMasterSerie.asstring+'-'+ adodsMasterFolio.asstring)
            else
              if FileExists(RutaPDF) then
                ShellExecute(application.Handle, 'open', PChar(RutaPDF), nil, nil, SW_SHOWNORMAL);     //VErificar el FRM Edit
       //     ActEnvioCorreoFact.Execute; //verificar  Abr5/16

            //ShowMessage('Envio a Cliente por Correo Electronico en proceso');
          end
          else
          begin
            Showmessage('Error Generando CFDI '+AuxTxt+TimbreCFDI.MensajeError);//Dic 29/15
            ShowProgress(100,100.1,'Proceso Terminado con errores ' +AuxTxt + IntToStr(100) + '%');  //Jun 16/16
            ShowProgress(100,100); //Jun 16/16
          end
        end
        else
          application.MessageBox('No se pudo Crear el directorio. Verifique permisos', 'Error', MB_Ok);
        // Verificar si
        //DEshabilitado May 23/16 LlenaDatosEnvio; //Ene 27/16  Se hace aun y cuando no se haya alcanzado a Timbrar la Factura.



      finally

    end ;
  end
  else
    Showmessage('CFDI generado con anterioridad');

end;


//Ene 27/17 Copiado

function TDMFacturas.CrearArchivos_TimbrePrueba( var Ruta : String; var TimbradoCFDI: TTimbreCFDI; Adicional :String):Boolean;
const
    XMLF='XMLPruebaST.xml';
    PDFF='PDFPruebaST.pdf';
    PNGF='PNGPruebaST.png';
var
  rutaAux, BAse:String;
  XRuta:String;
begin

  Base:=ExtractFilePath(application.exename);
  Result:=True;
  Ruta := Ruta + adicional;
  XRuta:=Base+XMLF;
//  if FileExists(XRuta) then
 //    ShowMessage('XML existe');

   XRuta:=Base+PDFF;
 // if FileExists(XRuta) then
 //    ShowMessage('pdf existe');

  XRuta:=Base+PNGF;
 // if FileExists(XRuta) then
   //  ShowMessage('png existe');


  if FileExists(Base+XMLF) and FileExists(Base+PDFF) and FileExists(Base+PNGF) then
  begin
    CopyFile(pwidechar(Base+XMLF),pwidechar(Ruta),false);
    RutaAux:= Ruta ;

    RutaAux:= ChangeFileExt(Ruta, fePDF);
    CopyFile(pwidechar(Base+PDFF),pwidechar(RutaAux), False);

    RutaAux:= ChangeFileExt(Ruta, fePNG);
    CopyFile(pwidechar(Base+PNGF),pwidechar(RutaAux),false);

    TimbradoCFDI.Resultado := 'PRUEBA';      // constante de descripcion del error
    TimbradoCFDI.MensajeError:= '';      // descripcion del error
    TimbradoCFDI.CertificadoEmisor:= '111111111';      // No certificado del emisor
    TimbradoCFDI.SelloEmisor:='fffffffffffffffffff';      // Sello del emisor
    TimbradoCFDI.CadenaOriginal:= '||prueba|||';      // Cadena Original del documento
    TimbradoCFDI.NoCertificadoSAT:='aaaaaaaaaaaaaaaaaaaaaa';      // No. certificado del SAT
    TimbradoCFDI.SelloSAT:= '==aaaaaaaaaa=';      // Sello del SAT
    TimbradoCFDI.CadenaTimbre:= 'cadenatimbre';      // Cadena del timbre
    TimbradoCFDI.UUID:= '74305F11-FFFF-FFFF-FFFF-BD200698C5EA';      // UUID
    TimbradoCFDI.FechaTimbre:= dateTimeToStr(now);     // fecha del timbrado
    TimbradoCFDI.InicioVigenciaCertificado:= dateTimeToStr(date-10);     // inicio de vigencia del certificado
    TimbradoCFDI.FinVigenciaCertificado:= dateTimeToStr(date+10);     // fin de vigencia del certificado
    TimbradoCFDI.VirtualPACID:= 'Prueba';     // VPID
    TimbradoCFDI.TimbresRestantes:= '1';     // timbres restantes
    TimbradoCFDI.VersionLibreria:= '00';     // version de la libreria
    TimbradoCFDI.NombreArchivo:= Ruta;
  end
  else
    REsult:=FAlse;

end;



function TdmFacturas.InformacionContrato(IdCXC:Integer):String;
begin        //Dic 7/16
  result:='';
  ADODSAuxiliar.Close;
  ADODSAuxiliar.CommandText:='select C.Identificador from Contratos C'    //   C.Fecha, C.IdContratoTipo, C.MontoAutorizado
                             +' inner join Anexos A on A.IdContrato =C.IdContrato '
                             +' inner join CuentasXCobrar CXC on CXC.idAnexo= A.idAnexo and IdCuentaXCobrar='+intToStr(idCXC);
  ADODSAuxiliar.open;
  if not ADODSAuxiliar.eof then
  begin
    result:=   ADODSAuxiliar.fieldbyname('Identificador').asString;
  end;
end;

function TdmFacturas.ActualizaSaldoCliente(IdCFDI, IDCliente,
  IDDomicilioCliente: Integer; Importe: Double; operacion: String): Boolean;
begin

  if IDCliente<>-1 then
  begin
    try
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.Sql.Clear;
      ADOQryAuxiliar.Sql.add('Update PersonasDomicilios set Saldo =Saldo '+operacion+floatToStr(Importe)+' where IDPersonaDomicilio='+intToStr(IdDomiciliocliente));
      ADOQryAuxiliar.ExecSQL;

 (* quitado Ene 28/17
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.Sql.Clear;
      ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
      ADOQryAuxiliar.ExecSQL;    *)
      result:=true;
    except
       result:=False;
    end;
  end
  else //No hay agrupadas de publico en general
    result:=False;
end;

procedure TdmFacturas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStDireccionesCliente.Open;
end;

procedure TdmFacturas.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStPersonaEmisor.Open;
  ADODtStPersonaReceptor.open;

end;



procedure TdmFacturas.adodsMasterIdPersonaReceptorChange(Sender: TField);
begin
  inherited;
    if adodsMaster.State in [dsInsert,dsEdit] then //Por si cambia de cliente
  begin
    ADODtStDireccAuxiliar.close;
    ADODtStDireccAuxiliar.Parameters.ParamByName('IdPersona').value:= adodsMasterIdPersonaReceptor.value; //DEberia Funcionar
    ADODtStDireccAuxiliar.Open;
    if ADODtStDireccAuxiliar.RecordCount >=1 then
    begin                                      //FActura cambia
     adodsMaster.FieldByName('IdClienteDomicilio').AsInteger:= ADODtStDireccAuxiliar.Fieldbyname('IDPersonaDomicilio').AsInteger;
     if not ADODtStDireccAuxiliar.Fieldbyname('IdMetododePago').Isnull then
     begin
       adodsMaster.FieldByName('IdMetodoPago').AsInteger:= ADODtStDireccAuxiliar.Fieldbyname('IdMetododePago').AsInteger;
       adodsMaster.FieldByName('NumCtaPago').AsString:= ADODtStDireccAuxiliar.Fieldbyname('NumCtaPagoCliente').AsString;
     end;

    end;
  end;
end;

procedure TdmFacturas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
  DataSet.FieldByName('IDCFDIEstatus').AsInteger:=1; //Prefactura
                                                       //Modificado Mar 29/16
  DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:=TipoDocumento; //Factura    //ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger;//Mod. Mar 28/16
                                            //Verificar que se tenga Mar 31/16
  DataSet.FieldByName('TipoComp').AsString:=SacaTipoComp(TipoDocumento); //DataSet.FieldByName('TipoComprobante').AsString;//'ingreso'; //columna TipoComprobante de Tabla CFDItipoDocumento
  //Verificar si serie yFolio se colocan aca o se colocan justo antes de generar el CFDI
  DataSet.FieldByName('Folio').AsInteger:=0; //Sin asignar aun
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?

// DataSet.FieldByName('Serie').AsString:=
  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
  DataSet.FieldByName('IDMoneda').AsInteger:=106;
  adodsMaster.fieldbyname('TipoCambio').AsInteger:=1; //Jun 27/16
  DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros Jun 27/16  4; //No identificado // abril 1/16      se supone que al seleccionar el cliente debe cambiar, si tiene

  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
  Except
    Raise;
  end;
end;

procedure TdmFacturas.ADODtStCFDIConceptosAfterDelete(DataSet: TDataSet);
 var
   idDocCFDI, IDDocItem, idImp:Integer;
  Subtotal,IVACal,TotalCal:Double;
  Existe:Boolean;
begin
  inherited;
  idDocCFDI:=DSMaster.DataSet.FieldByName('IDCFDI').AsInteger;

  //Siempre actualizar

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  IVACal:= subtotal*0.16;
  TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16

  //Ver si va a ir decto?? Nov 29/16

  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
                          +', SaldoFactoraje='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
                          //Feb 9/17
  ADOQryAuxiliar.ExecSQL;

  //Acualizar impuestos si no tiene Impuestos //Mar 30/16
  //Si existe actualizar si no existe crear en tabla de impuestos          //Ago 31/16

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(idDocCFDI)
                         +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
  ADOQryAuxiliar.Open;

  if not ADOQryAuxiliar.eof then//No existe
    idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
    // Mar 31/16
  if idImp=-1 then //No existe
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
                          +IntToStr(idDocCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
    ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
  end
  else
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
                            +' where IDCFDIImpuesto ='+IntToStr(idImp));
    ADOQryAuxiliar.ExecSQL;
  end;  //Hasta aca
  AdoDSMaster.Refresh;

end;

procedure TdmFacturas.ADODtStCFDIConceptosAfterPost(DataSet: TDataSet);
var        //Este sólo debe usarse si sehace factura manual.. No para la que viene del proceso dela CXC
  idDocCFDI, IDDocItem, idImp:Integer;
  Subtotal,IVACal,TotalCal:Double; //Agregado ago 25/16
  Existe:Boolean;
begin
  inherited;  //Mar 29/16     //Verificar que no intertfiera con el  proceso normal de facturacion
  Showmessage('Proceso manual. Calculará IVA de subtotal'); //feb 7/17
  idImp:=-1;
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDCFDIConcepto').AsInteger;
  idDocCFDI:=DataSet.FieldByName('IDCFDI').AsInteger;

  //Siempre actualizar

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  IVACal:= subtotal*0.16;
  TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16

  //Ver si va a ir decto?? Nov 29/16

  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
                          +', SaldoFactoraje='+FloatToSTR(TotalCal)+' where IDCFDI ='+IntToStr(idDocCFDI));
                          //feb 9/17 Manual
  ADOQryAuxiliar.ExecSQL;

  //Acualizar impuestos si no tiene Impuestos //Mar 30/16
  //Si existe actualizar si no existe crear en tabla de impuestos          //Ago 31/16

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(idDocCFDI)
                         +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
  ADOQryAuxiliar.Open;

  if not ADOQryAuxiliar.eof then//No existe
    idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
    // Mar 31/16
  if idImp=-1 then //No existe
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
                          +IntToStr(idDocCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
    ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
  end
  else
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
                            +' where IDCFDIImpuesto ='+IntToStr(idImp));
    ADOQryAuxiliar.ExecSQL;
  end;  //Hasta aca
  AdoDSMaster.Refresh;
end;

procedure TdmFacturas.ADODtStCFDIConceptosBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if adodsMaster.State in [dsInsert,dsEdit] then
     adodsMaster.Post;
end;

procedure TdmFacturas.ADODtStCFDIConceptosNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IDUnidadMedida').AsInteger:=2; //NA
  dataset.FieldByName('Unidad').AsString:='NA';
  dataset.FieldByName('Cantidad').AsFloat:=1;
end;

procedure TdmFacturas.ADODtStCFDIConceptosValorUnitarioChange(Sender: TField);
begin
  inherited;
  if (ADODtStCFDIConceptos.State in [dsEdit,dsInsert]) and (ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat <>0) and (ADODtStCFDIConceptos.FieldByName('Cantidad').AsFloat<>0) then
  begin                                      //Value Feb 19/17
    ADODtStCFDIConceptos.FieldByName('Importe').Value:=ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat* ADODtStCFDIConceptos.FieldByName('CAntidad').AsFloat;
  end;

end;

procedure TdmFacturas.ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString+
                                                '. '+dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString;

end;

function TdmFacturas.SacaTipoComp(tipoD:Integer):String;   //Nov 29/16
begin
  Result:='';
  ADODSAuxiliar.Close;
  ADODSAuxiliar.CommandText:='Select * from CFDITipoDocumento where idCFDITipoDocumento='+intToStr(tipoD);
  ADODSAuxiliar.open;
  if not ADODSAuxiliar.eof then
    result:=ADODSAuxiliar.fieldbyname('TipoComprobante').AsString;
end;

function TdmFacturas.CargaXMLPDFaFS(Archivo, Describe: string): integer;
var
  FacturaXML : TFileName;
begin
  FacturaXML := Archivo;
  adodsDocumento.Open;
  adodsDocumento.Insert;
  adodsDocumentoIdDocumentoTipo.Value := 2;
  adodsDocumentoIdDocumentoClase.Value := 1;
  adodsDocumentoDescripcion.AsString := Describe;
  adodsDocumentoNombreArchivo.AsString := ExtractFileName(Archivo);
  SubirXMLPDFaFS(FacturaXML);
  adodsDocumento.Post;
  Result := adodsDocumentoIdDocumento.Value;
  adodsDocumento.Close;
end;

function TdmFacturas.ConvierteFechaT_DT(Texto: String): TDateTime;
var                      //Texto Viene en formato 'yyyy-mm-dd''T''hh:nn:ss'
 anio, mes, dia:word;
 tiempo:string;
 dato2:TDatetime;
 t:Ttime;
begin
   anio:= STRToint(copy(texto,1,4)) ;
   mes:= STRToint(copy(texto,6,2)) ;
   dia:= STRToint(copy(texto,9,2)) ;

   dato2:=encodedate(anio,mes,dia);

   tiempo:=copy(texto,12,8);
   t:=strToTime(tiempo);
   dato2:=Dato2+t;

   Result:=Dato2;

end;

constructor TdmFacturas.CreateWMostrar(AOwner: TComponent; Muestra: Boolean;
  TipoDoc: Integer);
begin
  FMuestra:=Muestra;
  FTipoDoc:=TipoDoc;
  inherited Create(AOwner);
end;

procedure TdmFacturas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if ADODtStCFDIConceptos.CommandText <> EmptyStr then ADODtStCFDIConceptos.Open;
  gGridForm:= TfrmFacturasGrid.Create(Self);

  gGridForm.DataSet:= adodsMaster;
  TfrmFacturasGrid(gGridForm).ActGenerarCFDI := actProcesaFactura;  //Nov29/16
  TfrmFacturasGrid(gGridForm).ActImprimePDF := ActImprimeFactura;  //Dic 15/16
  TfrmFacturasGrid(gGridForm).ActCancelaCFDI := ActCancelarCFDI;//Mar 23/17
end;

procedure TdmFacturas.ReadFileCERKEY(FileNameCER, FileNameKEY: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob := adodsArchivosCerKey.CreateBlobStream(adodsArchivosCerKeyArchiCer, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileNameCER, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;

  Blob := adodsArchivosCerKey.CreateBlobStream(adodsArchivosCerKeyArchiKey, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileNameKEY, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;

end;

procedure TdmFacturas.SetMuestra(const Value: Boolean);
begin
  FMuestra := Value;
end;

procedure TdmFacturas.SubirXMLPDFaFS(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsDocumentoArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

function TdmFacturas.VerificaArchivo(var IDArchivo: Integer; Archivo: String;
  var Respuesta: String): Boolean;
begin
result:=False;
  if idArchivo <>0 then
  begin
    AdodsAuxiliar.Close;
    AdodsAuxiliar.CommandText :='Select * from Documentos where IdDocumento='+ intToStr(IDArchivo);
    AdodsAuxiliar.open;
    if AdodsAuxiliar.eof then
    begin
      Respuesta :=Respuesta+' ID no encontrado('+intTostr(IDArchivo)+') '+Archivo;
      AdodsAuxiliar.Close;
      AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
      AdodsAuxiliar.open;
      if not AdodsAuxiliar.eof then
      begin
        IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
        result:=true;
      end;
    end
    else  //Si encontró el id
    begin
      if AdodsAuxiliar.fieldbyname('NombreArchivo').AsString<>Archivo then
        Respuesta :=Respuesta+' Nombres diferentes G:'+AdodsAuxiliar.fieldbyname('NombreArchivo').AsString +' B:'+Archivo;
      result:=true;
      //Se asocia ID
    end;

  end
  else
  begin
    Respuesta :=Respuesta+' ID (0) '+Archivo;
    AdodsAuxiliar.Close;
    AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
    AdodsAuxiliar.open;
    if not AdodsAuxiliar.eof then
    begin
      IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
      result:=true;
    end
    else
      Respuesta :=Respuesta+' No encontro nombre: '+ Archivo;  //Va falso y no se pone
  end;
end;



///Proceso de prefacturas se debe cambiar porque aca no sale de orden de salida sino de una CXC
///
///
end.
