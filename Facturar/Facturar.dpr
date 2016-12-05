program Facturar;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  FacturaDM in 'FacturaDM.pas' {dmFactura: TDataModule},
  VirtualXML in 'VirtualXML.pas',
  DocComprobanteFiscal in 'DocComprobanteFiscal.pas',
  FacturaReglamentacion in 'FacturaReglamentacion.pas',
  FacturaTipos in 'FacturaTipos.pas',
  cfdv32 in 'cfdv32.pas',
  XMLtoPDFDmod in 'XMLtoPDFDmod.pas' {dmodXMLtoPDF: TDataModule},
  _Utils in '..\Standard\_Utils.pas',
  _ProgressForm in '..\Standard\_ProgressForm.pas' {_frmProgress};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(T_frmProgress, _frmProgress);
  Application.Run;
end.
