unit SeguimientoRegistroEd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.CheckLst, RxDBCtrl, Vcl.DBCGrids, Vcl.Mask, RxToolEdit, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Data.DB;

type
  TFrmSeguimientoRegistro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLkupCmbBxClientes: TDBLookupComboBox;
    Label2: TLabel;
    SpdBtnLimpiar: TSpeedButton;
    EdtTextoCliente: TEdit;
    SpdBtnConsultarx: TSpeedButton;
    PnlGrids: TPanel;
    PnlSoloIncidencias: TPanel;
    DBGrid1: TDBGrid;
    PnlFechas: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    SpdBtnRegreso: TSpeedButton;
    SpdBtnFiltroDias: TSpeedButton;
    DtTmDesde: TDateEdit;
    DtTmHasta: TDateEdit;
    GridDatos: TDBGrid;
    Pnlinferior: TPanel;
    DBCtrlGrid3: TDBCtrlGrid;
    Label9: TLabel;
    DBText7: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText9: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    Label14: TLabel;
    DBText12: TDBText;
    DBTxtAcuerdo: TDBText;
    Label15: TLabel;
    DBTxtEstado: TDBText;
    PNLRegInci: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DBText14: TDBText;
    Label18: TLabel;
    DBText15: TDBText;
    Label19: TLabel;
    DBText16: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBText17: TDBText;
    c5: TDBDateEdit;
    DBMemo1: TDBMemo;
    DBRdGrpEstado: TDBRadioGroup;
    DBEdit1: TDBEdit;
    LstBxFolios: TListBox;
    LSTBxIDDocs: TListBox;
    ChckLstBxCondiciones: TCheckListBox;
    DBChckBxPtomPago: TDBCheckBox;
    PnlNavIncid: TPanel;
    SpdBtnMostrartodo: TSpeedButton;
    DBNavIncidencia: TDBNavigator;
    Splitter1: TSplitter;
    dsConsulta: TDataSource;
    DSIncidencias: TDataSource;
    DBGrdFactPend: TDBGrid;
    DSCXCPendientes: TDataSource;
    DSClientes: TDataSource;
    procedure SpdBtnConsultarxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeguimientoRegistro: TFrmSeguimientoRegistro;

implementation

{$R *.dfm}

uses SeguimientoCobranzaDM;

procedure TFrmSeguimientoRegistro.SpdBtnConsultarxClick(Sender: TObject);
begin
  //
end;

end.
