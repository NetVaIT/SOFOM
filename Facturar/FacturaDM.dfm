object dmFactura: TdmFactura
  OldCreateOrder = False
  Height = 345
  Width = 391
  object ADOdsReceptor: TADODataSet
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'Select  D.IDDocs, D.IDConcepto, C.RFC as RFCCliente, C.Empresa a' +
      's NombreReceptor,S.Domicilio as Calle,'#39#39'as NoExt,'#39#39' as NoInt, '#13#10 +
      #39#39' as Refer ,S.Colonia as Colonia'#13#10', S.Poblacion as Localidad, S' +
      '.Municipio as municipio , S.Estado as Estado, '#13#10'S.pais as Pais,S' +
      '.CodPostal as CodPostal,C.IDCliente'#13#10'from TBLDocs D,TBLCliente C' +
      ',TBLClientesAdicional S '#13#10'Where  '#13#10'D.Fecha >='#39'01/12/2010'#39' '#13#10'and ' +
      'D.IDCliente=C.IDCliente '#13#10'and C.IDCliente=S.IDCliente '#13#10'And S.Co' +
      'dSucursal =D.CodSucursal'#13#10
    Parameters = <>
    Left = 64
    Top = 88
    object ADOdsReceptorIDDocs: TLargeintField
      FieldName = 'IDDocs'
    end
    object ADOdsReceptorIDConcepto: TIntegerField
      FieldName = 'IDConcepto'
    end
    object ADOdsReceptorRFCCliente: TStringField
      FieldName = 'RFCCliente'
      Size = 15
    end
    object ADOdsReceptorNombreReceptor: TStringField
      FieldName = 'NombreReceptor'
      Size = 100
    end
    object ADOdsReceptorCalle: TStringField
      FieldName = 'Calle'
      Size = 70
    end
    object ADOdsReceptorNoExt: TStringField
      FieldName = 'NoExt'
      ReadOnly = True
      Size = 1
    end
    object ADOdsReceptorNoInt: TStringField
      FieldName = 'NoInt'
      ReadOnly = True
      Size = 1
    end
    object ADOdsReceptorRefer: TStringField
      FieldName = 'Refer'
      ReadOnly = True
      Size = 1
    end
    object ADOdsReceptorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADOdsReceptorLocalidad: TStringField
      FieldName = 'Localidad'
      Size = 50
    end
    object ADOdsReceptormunicipio: TStringField
      FieldName = 'municipio'
      Size = 50
    end
    object ADOdsReceptorEstado: TStringField
      FieldName = 'Estado'
      Size = 30
    end
    object ADOdsReceptorPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object ADOdsReceptorCodPostal: TIntegerField
      FieldName = 'CodPostal'
    end
    object ADOdsReceptorIDCliente: TStringField
      FieldName = 'IDCliente'
      Size = 6
    end
  end
  object ADOdsConcepto: TADODataSet
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'Select D.IDDocs, D.IDConcepto, (D.Importe) as cdsCantidad, D.Uni' +
      'dad as cdsunidad,'#39#39' as cdsNoidentifica, D.DEscripconcepto as cds' +
      'Descripcion ,'#13#10'D.Importe as cdsValorUnitario, D.Importe as cdsIm' +
      'porte, '#39#39' as cdsCuentaPredial'#13#10'from TBLDocs D,TBLCliente C,TBLCl' +
      'ientesAdicional S '#13#10'where '#13#10'D.Fecha >='#39'01/12/2010'#39' '#13#10'and D.IDCli' +
      'ente=C.IDCliente '#13#10'and D.Estado='#39'Vigente'#39#13#10'and C.IDCliente=S.IDC' +
      'liente'#13#10'and S.CodSucursal =D.CodSucursal'#13#10'and D.IDDocs=:IDDocs'#13#10
    DataSource = dsEmisor
    MasterFields = 'IDDocs'
    Parameters = <
      item
        Name = 'IDDocs'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Value = '23652'
      end>
    Left = 64
    Top = 152
    object ADOdsConceptoIDDocs: TLargeintField
      FieldName = 'IDDocs'
    end
    object ADOdsConceptoIDConcepto: TIntegerField
      FieldName = 'IDConcepto'
    end
    object ADOdsConceptocdsCantidad: TBCDField
      FieldName = 'cdsCantidad'
      Precision = 19
    end
    object ADOdsConceptocdsunidad: TStringField
      FieldName = 'cdsunidad'
    end
    object ADOdsConceptocdsNoidentifica: TStringField
      FieldName = 'cdsNoidentifica'
      ReadOnly = True
      Size = 1
    end
    object ADOdsConceptocdsDescripcion: TStringField
      FieldName = 'cdsDescripcion'
      Size = 350
    end
    object ADOdsConceptocdsValorUnitario: TBCDField
      FieldName = 'cdsValorUnitario'
      Precision = 19
    end
    object ADOdsConceptocdsImporte: TBCDField
      FieldName = 'cdsImporte'
      Precision = 19
    end
    object ADOdsConceptocdsCuentaPredial: TStringField
      FieldName = 'cdsCuentaPredial'
      ReadOnly = True
      Size = 1
    end
  end
  object ADOdsImpuesto: TADODataSet
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'Select '#39'IVA'#39' as cdsImpuesto, (D.IVA/D.importe)*100 as cdsTasa,'#13#10 +
      'D.IVA as cdsimporte,'#39'Trasladado'#39' as cdsTipoImp'#13#10'from TBLDocs D,T' +
      'BLCliente C,TBLClientesAdicional S '#13#10'where  '#13#10'D.Fecha >'#39'01/12/20' +
      '10'#39' '#13#10'and D.IDCliente=C.IDCliente '#13#10'and C.IDCliente=S.IDCliente ' +
      #13#10'and S.CodSucursal =D.CodSucursal'#13#10#13#10'and D.IDDocs=:IDDocs '#13#10
    DataSource = dsEmisor
    MasterFields = 'IDDocs'
    Parameters = <
      item
        Name = 'IDDocs'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Value = '23652'
      end>
    Left = 64
    Top = 224
    object ADOdsImpuestocdsImpuesto: TStringField
      FieldName = 'cdsImpuesto'
      ReadOnly = True
      Size = 3
    end
    object ADOdsImpuestocdsTasa: TBCDField
      FieldName = 'cdsTasa'
      ReadOnly = True
      Precision = 19
    end
    object ADOdsImpuestocdsimporte: TBCDField
      FieldName = 'cdsimporte'
      Precision = 19
    end
    object ADOdsImpuestocdsTipoImp: TStringField
      FieldName = 'cdsTipoImp'
      ReadOnly = True
      Size = 10
    end
  end
  object dsEmisor: TDataSource
    DataSet = ADOdsReceptor
    Left = 152
    Top = 88
  end
end
