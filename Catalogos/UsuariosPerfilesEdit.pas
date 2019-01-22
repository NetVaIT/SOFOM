unit UsuariosPerfilesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  cxContainer, cxEdit, cxCheckBox, cxGroupBox, cxCheckGroup, cxTextEdit,
  cxDBEdit;

type
  TFrmUsuariosPerfilesEdt = class(T_frmEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxChckGrpMnCatalogos: TcxCheckGroup;
    cxChckBxCatalogos: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxChckGrpProcesos: TcxCheckGroup;
    cxChckGrpReportes: TcxCheckGroup;
    cxCheckBox2: TcxCheckBox;
    procedure cxChckBxCatalogosClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure cxChckGrpMnCatalogosPropertiesEditValueChanged(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
  private
    procedure MarcarCheckBox;
    procedure ColocaPermisoEnCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuariosPerfilesEdt: TFrmUsuariosPerfilesEdt;

implementation

{$R *.dfm}

uses UsuariosPerfilesDM;

procedure TFrmUsuariosPerfilesEdt.cxChckBxCatalogosClick(Sender: TObject);
var
  I, j :Integer;
begin
  inherited;
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TcxcheckGroup then
      if (Components[i] as TcxcheckGroup).Tag= (sender as TcxcheckBox).Tag then
      begin
       (Components[i] as TcxcheckGroup).enabled:= (sender as TcxcheckBox).checked;
       if (sender as TcxcheckBox).checked then
       begin
         for j := 0 to (Components[i] as TcxcheckGroup).ControlCount-1 do
          (Components[i] as TcxcheckGroup).States[j]   := cbsChecked;
       end
       else
        for j := 0 to (Components[i] as TcxcheckGroup).ControlCount-1 do
          (Components[i] as TcxcheckGroup).States[j]:= cbsUnChecked;
      end;
  end;
end;




procedure TFrmUsuariosPerfilesEdt.cxChckGrpMnCatalogosPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if DataSource.State in [dsEdit,dsInsert] then
   ColocaPermisoEnCampos;  //Verificar ene 21/18
end;

procedure TFrmUsuariosPerfilesEdt.DataSourceDataChange(Sender: TObject;
  Field: TField);
var
  i:Integer;
begin
  inherited;
  if DataSource.State=dsBrowse then
  begin
    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TcxcheckBox) then
         (Components[i] as TcxcheckBox).Checked  :=False;
    end;
    MarcarCheckBox;
  end;
end;

procedure TFrmUsuariosPerfilesEdt.DataSourceStateChange(Sender: TObject);
var              //Ene 21/19
  i:Integer;
begin
  inherited;
    if DataSource.State=dsInsert then
  begin
    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TcxcheckBox) then
         (Components[i] as TcxcheckBox).Checked  :=False;
    end;
    MarcarCheckBox;
  end;
end;

procedure TFrmUsuariosPerfilesEdt.FormShow(Sender: TObject);
begin
  inherited;
//limpiar y colocar de nuevo
end;

procedure TFrmUsuariosPerfilesEdt.Label2Click(Sender: TObject);
begin
  inherited;
//  ColocaPermisoEnCampos;
end;

procedure TfrmUsuariosPerfilesEdt.MarcarCheckBox;  //copiado de TP
var
  i, k, j, m:Integer;
  MenuTxt, opcionTxt, Aux:String;

begin
  MenuTxt:=datasource.DataSet.FieldByName('PermisoMenu').AsString  ;
  opcionTxt:= datasource.DataSet.FieldByName('PermisoOpcion').AsString;

  while Length(MenuTxt)>0 do
  begin
    k:=pos('|',MenuTxt);
    if k>0 then
    begin
      Aux:= Copy(MenuTxt,1,k-1);
      MenuTxt:=Copy(MenuTxt,k+1,Length(MenuTxt)-k);
    end
    else
    begin
      Aux:= Copy(MenuTxt,1,Length(MenuTxt));
      MenuTxt:='';
    end;
    //Arriba
    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TcxcheckBox)and ((Components[i] as TcxcheckBox).tag = StrToInt(aux))then
      begin
       (Components[i] as TcxcheckBox).Checked :=True;    //Igual
       break; // porque si ya lo encontró ya no tiene que buscar más
      end;
    end;
    for i:=0 to ComponentCount-1 do
    begin
      if Components[i] is TcxcheckGroup then
      begin
      for j := 0 to (Components[i] as TcxcheckGroup).ControlCount-1 do
      begin
        aux:=intToStr((Components[i] as TcxcheckGroup).Properties.items[j].Tag);
        m:=pos(aux+'|',opcionTxt);
        if (pos('|'+aux+'|',opcionTxt)>0) or (m=1) then
          (Components[i] as TcxcheckGroup).States[j]   := cbsChecked
        else
          (Components[i] as TcxcheckGroup).States[j]   := cbsUnChecked;
      end;
    end;
  end;

  end;
  //Abajo
(*  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TcheckListBox) then
    begin
      for j:=0 to (Components[i] as TcheckListBox).count-1  do
      begin
        aux:=(Components[i] as TcheckListBox).Items[j];
        m:=pos('|',aux);
        aux:=Copy (aux, m+1,length(aux)-m);
        m:=pos(aux+'|',opcionTxt);
       (Components[i] as TcheckListBox).Checked[j]:=(pos('|'+aux+'|',opcionTxt)>0) or (m=1);
      end;
    end;

  *)


end;


procedure  TfrmUsuariosPerfilesEdt.ColocaPermisoEnCampos;
var
  I, j, k :Integer;
  MenuTxt, OpcionTxt, aux:String;
begin
  inherited;
  MenuTxt:='';
  OpcionTxt:='';
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TcxcheckBox) and (Components[i] as TCxcheckBox).Checked then
      MenuTxt:=MenuTxt+intToStr((Components[i] as TcxcheckBox).tag)+'|';

    if (Components[i] is TcxcheckGroup)  then  // Abr 25/16
    begin
      for j := 0 to (Components[i] as TcxcheckGroup).ControlCount-1 do
      begin
        if (Components[i] as TcxcheckGroup).States[j]  = cbsChecked  then
        begin
          aux:=intToStr((Components[i] as TcxcheckGroup).Properties.items[j].Tag);
          OpcionTxt:= OpcionTxt+Aux+'|';
        end;
      end;
    end;

    (*  for j := 0  to (Components[i] as TcheckListBox).count -1 do
      begin
        if (Components[i] as TcheckListBox).Checked[j] then
        begin
          aux:=(Components[i] as TcheckListBox).Items[j] ;
          k:= pos('|',Aux);
          Aux:= Copy(aux, k+1,length(aux)-k);  //Siempre va a tener
          OpcionTxt:= OpcionTxt+Aux+'|';
        end;
      end;

    end;  *)
  end;
//  ShowMessage(OpcionTxt);

  if datasource.state in [dsEdit, Dsinsert] then
  begin
    datasource.DataSet.FieldByName('PermisoMenu').AsString:=  MenuTxt;
    datasource.DataSet.FieldByName('PermisoOpcion').AsString:=  OpcionTxt;
  end;
end;


end.
