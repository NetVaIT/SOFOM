inherited dmRptColocacionAcumulado: TdmRptColocacionAcumulado
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT '#13#10'--Productos.IdProducto, Anexos.IdAnexo, '#13#10'ProductosDest' +
      'ino.Descripcion AS Destino, '#13#10'--ProductosTipos.Descripcion AS Ti' +
      'po, '#13#10'Familias.Descripcion AS Familia, '#13#10'Marcas.Descripcion AS M' +
      'arca, '#13#10'YEAR(Anexos.Fecha) AS Anio,  SUM(1) as Cuenta, SUM(Anexo' +
      's.PrecioTotal*(Productos.PorcentajeAnexo/100)) AS PrecioTotal , ' +
      'SUM(Anexos.MontoFinanciar*(Productos.PorcentajeAnexo/100)) AS Mo' +
      'ntoFinanciar'#13#10'FROM Productos INNER JOIN Anexos ON Productos.IdAn' +
      'exo = Anexos.IdAnexo'#13#10'INNER JOIN ProductosDestino ON Productos.I' +
      'dProductoDestino = ProductosDestino.IdProductoDestino'#13#10'--INNER J' +
      'OIN ProductosTipos ON Productos.IdProductoTipo = ProductosTipos.' +
      'IdProductoTipo'#13#10'INNER JOIN Familias ON Productos.IdFamilia = Fam' +
      'ilias.IdFamila'#13#10'INNER JOIN Marcas ON Productos.IdMarca = Marcas.' +
      'IdMarca '#13#10'WHERE Anio BETWEEN YEAR([Dbo].GetDateAux())-5 AND YEAR' +
      '([Dbo].GetDateAux()) -- era GETDATE()'#13#10'GROUP BY ProductosDestino' +
      '.Descripcion, '#13#10'--ProductosTipos.Descripcion, '#13#10'Familias.Descrip' +
      'cion, '#13#10'Marcas.Descripcion, '#13#10'YEAR(Anexos.Fecha) '#13#10
    object adodsReportDestino: TStringField
      FieldName = 'Destino'
      Size = 50
    end
    object adodsReportFamilia: TStringField
      FieldName = 'Familia'
      Size = 50
    end
    object adodsReportMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object adodsReportAnio: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'Anio'
      ReadOnly = True
    end
    object adodsReportCuenta: TIntegerField
      DisplayLabel = 'Equipos'
      FieldName = 'Cuenta'
      ReadOnly = True
    end
    object adodsReportPrecioTotal: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioTotal'
      ReadOnly = True
      Precision = 38
      Size = 10
    end
    object adodsReportMontoFinanciar: TFMTBCDField
      DisplayLabel = 'Financiamiento'
      FieldName = 'MontoFinanciar'
      ReadOnly = True
      Precision = 38
      Size = 10
    end
  end
  inherited ppReport: TppReport
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppImage1: TppImage
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      object ppCrossTab1: TppCrossTab
        UserName = 'CrossTab1'
        DataPipeline = dbpReport
        Stretch = True
        Style = 'Standard'
        DataPipelineName = 'dbpReport'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 2117
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object TppGrandTotal
          ChildType = 6
          object TppTotalCaptionDef
            ChildType = 4
            Alignment = taRightJustify
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
        end
        object TppGrandTotal
          ChildType = 6
          object TppTotalCaptionDef
            ChildType = 4
            Alignment = taRightJustify
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = clSilver
            DisplayFormat = '#,0;-#,0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
        end
        object TppGrandTotal
          ChildType = 6
          object TppTotalCaptionDef
            ChildType = 4
            Alignment = taRightJustify
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = clSilver
            DisplayFormat = '#,0;-#,0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
        end
        object TppGrandTotal
          ChildType = 7
          object TppTotalCaptionDef
            ChildType = 4
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = 9868950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
        end
        object TppGrandTotal
          ChildType = 7
          object TppTotalCaptionDef
            ChildType = 4
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = 9868950
            DisplayFormat = '#,0;-#,0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
        end
        object TppGrandTotal
          ChildType = 7
          object TppTotalCaptionDef
            ChildType = 4
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = 9868950
            DisplayFormat = '#,0;-#,0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
        end
        object TppColumnDef
          FieldAlias = 'A'#241'o'
          FieldName = 'Anio'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'Destino'
          FieldName = 'Destino'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWindow
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWindow
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'Familia'
          FieldName = 'Familia'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWindow
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWindow
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'Marca'
          FieldName = 'Marca'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppValueDef
          ChildType = 2
          FieldAlias = 'Equipos'
          FieldName = 'Cuenta'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          object TppValueCaptionDef
            ChildType = 8
            CalcType = dcSum
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
        object TppValueDef
          ChildType = 2
          FieldAlias = 'Precio'
          FieldName = 'PrecioTotal'
          Color = clWhite
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          object TppValueCaptionDef
            ChildType = 8
            CalcType = dcSum
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
        object TppValueDef
          ChildType = 2
          FieldAlias = 'Financiamiento'
          FieldName = 'MontoFinanciar'
          Color = clWhite
          DisplayFormat = '#,0;-#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          object TppValueCaptionDef
            ChildType = 8
            CalcType = dcSum
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
  end
end
