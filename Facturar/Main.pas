unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FacturaDM, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, XMLtoPDFDmod;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Button2: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    dmFactura: TdmFactura;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 dmFactura: TdmFactura;
begin
  dmFactura := TdmFactura.Create(Self);
  try
    dmFactura.CreaFactura;
  finally
    dmFactura.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    DataSource1.DataSet:= dmFactura.ADOdsReceptor;
    DataSource2.DataSet:= dmFactura.ADOdsConcepto;
    DataSource3.DataSet:= dmFactura.ADOdsImpuesto;
    dmFactura.Abrir;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  dmFactura.Facturar;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  XMLpdf: TdmodXMLtoPDF;
begin
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  try
    XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIInterva.rtm';
    XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';
    XMLpdf.ModifyDocument;
  finally
    XMLpdf.Free;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dmFactura := TdmFactura.Create(Self);
end;

end.
