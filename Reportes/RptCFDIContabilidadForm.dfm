inherited frmRptCFDIContabilidad: TfrmRptCFDIContabilidad
  Caption = ''
  ClientWidth = 949
  ExplicitWidth = 949
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 949
    ExplicitWidth = 577
  end
  inherited splDetail1: TSplitter
    Width = 949
    ExplicitWidth = 577
  end
  inherited splDetail2: TSplitter
    Width = 949
    ExplicitWidth = 577
  end
  inherited pnlMaster: TPanel
    Width = 949
    ExplicitWidth = 949
    inherited cxGrid: TcxGrid
      Width = 949
      ExplicitWidth = 949
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterSIN_ASIGNAR
          end
          item
            Kind = skSum
            Column = tvMasterCS_INT
          end
          item
            Kind = skSum
            Column = tvMasterCS_ENGANCHE
          end
          item
            Kind = skSum
            Column = tvMasterCS_COM_APER
          end
          item
            Kind = skSum
            Column = tvMasterCS_GASTOSADM
          end
          item
            Kind = skSum
            Column = tvMasterCS_ABONOCAP
          end
          item
            Kind = skSum
            Column = tvMasterCS_INTM
          end
          item
            Kind = skSum
            Column = tvMasterCS_VR
          end
          item
            Kind = skSum
            Column = tvMasterCS_OC
          end
          item
            Kind = skSum
            Column = tvMasterAF_CAP
          end
          item
            Kind = skSum
            Column = tvMasterAF_INT
          end
          item
            Kind = skSum
            Column = tvMasterAF_ENGANCHE
          end
          item
            Kind = skSum
            Column = tvMasterAF_COM_APER
          end
          item
            Kind = skSum
            Column = tvMasterAF_GASTOSADM
          end
          item
            Kind = skSum
            Column = tvMasterAF_ABONOCAP
          end
          item
            Kind = skSum
            Column = tvMasterAF_INTM
          end
          item
            Kind = skSum
            Column = tvMasterAF_VR
          end
          item
            Kind = skSum
            Column = tvMasterAF_OC
          end
          item
            Kind = skSum
            Column = tvMasterAP_RENTA
          end
          item
            Kind = skSum
            Column = tvMasterAP_ENGANCHE
          end
          item
            Kind = skSum
            Column = tvMasterAP_COM_APER
          end
          item
            Kind = skSum
            Column = tvMasterAP_GASTOSADM
          end
          item
            Kind = skSum
            Column = tvMasterAP_ABONOCAP
          end
          item
            Kind = skSum
            Column = tvMasterAP_INTM
          end
          item
            Kind = skSum
            Column = tvMasterAP_VR
          end
          item
            Kind = skSum
            Column = tvMasterAP_OC
          end
          item
            Kind = skSum
            Column = tvMasterSubTotal
          end
          item
            Kind = skSum
            Column = tvMasterDescto
          end
          item
            Kind = skSum
            Column = tvMasterTotalImpuestoTrasladado
          end
          item
            Kind = skSum
            Column = tvMasterTotal
          end>
        OptionsView.Footer = True
        object tvMasterIdCFDI: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDI'
          Visible = False
        end
        object tvMasterIdCFDITipoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdCFDITipoDocumento'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterFolio: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 108
        end
        object tvMasterUUID_TB: TcxGridDBColumn
          DataBinding.FieldName = 'UUID_TB'
          Visible = False
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          Width = 25
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
        end
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 304
        end
        object tvMasterTipoContrato: TcxGridDBColumn
          DataBinding.FieldName = 'TipoContrato'
          Width = 76
        end
        object tvMasterSIN_ASIGNAR: TcxGridDBColumn
          DataBinding.FieldName = 'SIN_ASIGNAR'
          Width = 125
        end
        object tvMasterCS_INT: TcxGridDBColumn
          DataBinding.FieldName = 'CS_INT'
          Width = 125
        end
        object tvMasterCS_ENGANCHE: TcxGridDBColumn
          DataBinding.FieldName = 'CS_ENGANCHE'
          Visible = False
          Width = 125
        end
        object tvMasterCS_COM_APER: TcxGridDBColumn
          DataBinding.FieldName = 'CS_COM_APER'
          Width = 125
        end
        object tvMasterCS_GASTOSADM: TcxGridDBColumn
          DataBinding.FieldName = 'CS_GASTOSADM'
          Visible = False
          Width = 125
        end
        object tvMasterCS_ABONOCAP: TcxGridDBColumn
          DataBinding.FieldName = 'CS_ABONOCAP'
          Visible = False
          Width = 125
        end
        object tvMasterCS_INTM: TcxGridDBColumn
          DataBinding.FieldName = 'CS_INTM'
          Width = 125
        end
        object tvMasterCS_VR: TcxGridDBColumn
          DataBinding.FieldName = 'CS_VR'
          Visible = False
          Width = 125
        end
        object tvMasterCS_OC: TcxGridDBColumn
          DataBinding.FieldName = 'CS_OC'
          Visible = False
          Width = 125
        end
        object tvMasterAF_CAP: TcxGridDBColumn
          DataBinding.FieldName = 'AF_CAP'
          Width = 125
        end
        object tvMasterAF_INT: TcxGridDBColumn
          DataBinding.FieldName = 'AF_INT'
          Width = 125
        end
        object tvMasterAF_ENGANCHE: TcxGridDBColumn
          DataBinding.FieldName = 'AF_ENGANCHE'
          Width = 125
        end
        object tvMasterAF_COM_APER: TcxGridDBColumn
          DataBinding.FieldName = 'AF_COM_APER'
          Width = 125
        end
        object tvMasterAF_GASTOSADM: TcxGridDBColumn
          DataBinding.FieldName = 'AF_GASTOSADM'
          Width = 125
        end
        object tvMasterAF_ABONOCAP: TcxGridDBColumn
          DataBinding.FieldName = 'AF_ABONOCAP'
          Width = 125
        end
        object tvMasterAF_INTM: TcxGridDBColumn
          DataBinding.FieldName = 'AF_INTM'
          Width = 125
        end
        object tvMasterAF_VR: TcxGridDBColumn
          DataBinding.FieldName = 'AF_VR'
          Width = 125
        end
        object tvMasterAF_OC: TcxGridDBColumn
          DataBinding.FieldName = 'AF_OC'
          Width = 125
        end
        object tvMasterAP_RENTA: TcxGridDBColumn
          DataBinding.FieldName = 'AP_RENTA'
          Width = 125
        end
        object tvMasterAP_ENGANCHE: TcxGridDBColumn
          DataBinding.FieldName = 'AP_ENGANCHE'
          Width = 125
        end
        object tvMasterAP_COM_APER: TcxGridDBColumn
          DataBinding.FieldName = 'AP_COM_APER'
          Width = 125
        end
        object tvMasterAP_GASTOSADM: TcxGridDBColumn
          DataBinding.FieldName = 'AP_GASTOSADM'
          Width = 125
        end
        object tvMasterAP_ABONOCAP: TcxGridDBColumn
          DataBinding.FieldName = 'AP_ABONOCAP'
          Visible = False
          Width = 125
        end
        object tvMasterAP_INTM: TcxGridDBColumn
          DataBinding.FieldName = 'AP_INTM'
          Width = 125
        end
        object tvMasterAP_VR: TcxGridDBColumn
          DataBinding.FieldName = 'AP_VR'
          Visible = False
          Width = 125
        end
        object tvMasterAP_OC: TcxGridDBColumn
          DataBinding.FieldName = 'AP_OC'
          Visible = False
          Width = 125
        end
        object tvMasterSubTotal: TcxGridDBColumn
          DataBinding.FieldName = 'SubTotal'
          Width = 125
        end
        object tvMasterDescto: TcxGridDBColumn
          DataBinding.FieldName = 'Descto'
          Width = 125
        end
        object tvMasterTotalImpuestoTrasladado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalImpuestoTrasladado'
          Width = 125
        end
        object tvMasterTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 125
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 949
    ExplicitWidth = 949
  end
  inherited pnlDetail2: TPanel
    Width = 949
    ExplicitWidth = 949
  end
  inherited pnlDetail1: TPanel
    Width = 949
    ExplicitWidth = 949
  end
  inherited pnlClose: TPanel
    Width = 949
    ExplicitWidth = 949
    inherited btnClose: TButton
      Left = 864
      ExplicitLeft = 864
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.Strings = (
      'Default'
      'Filtro')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 104
    end
    inherited dxbTools: TdxBar
      DockedLeft = 231
    end
    inherited dxbFilter: TdxBar
      DockedLeft = 289
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtCliente'
        end
        item
          Visible = True
          ItemName = 'edtDesde'
        end
        item
          Visible = True
          ItemName = 'edtHasta'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'edtUsarFecha'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    inherited dxbtnSearch: TdxBarButton
      Category = 1
    end
    object edtCliente: TcxBarEditItem
      Caption = 'Cliente'
      Category = 1
      Hint = 'Cliente'
      Visible = ivAlways
      ShowCaption = True
      Width = 200
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object edtDesde: TcxBarEditItem
      Caption = 'Desde'
      Category = 1
      Hint = 'Desde'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtHasta: TcxBarEditItem
      Caption = 'Hasta'
      Category = 1
      Hint = 'Hasta'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object edtUsarFecha: TcxBarEditItem
      Caption = 'Usar fecha'
      Category = 1
      Hint = 'Usar fecha'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = True
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 43398.758599745370000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited cxpsGrid: TcxPropertiesStore
    Components = <
      item
        Component = tvMaster
        Properties.Strings = (
          'OptionsView.Footer'
          'OptionsView.GroupByBox'
          'OptionsView.GroupFooters')
      end
      item
        Component = tvMasterAF_ABONOCAP
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_CAP
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_COM_APER
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_ENGANCHE
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_GASTOSADM
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_INT
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_INTM
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_OC
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAF_VR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_ABONOCAP
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_COM_APER
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_ENGANCHE
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_GASTOSADM
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_INTM
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_OC
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_RENTA
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterAP_VR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCliente
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_ABONOCAP
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_COM_APER
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_ENGANCHE
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_GASTOSADM
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_INT
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_INTM
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_OC
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterCS_VR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterDescto
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterEstatus
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterFecha
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterFolio
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDI
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterIdCFDITipoDocumento
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSIN_ASIGNAR
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterSubTotal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTipo
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTipoContrato
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTotal
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterTotalImpuestoTrasladado
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end
      item
        Component = tvMasterUUID_TB
        Properties.Strings = (
          'GroupIndex'
          'SortIndex'
          'SortOrder'
          'Summary'
          'Visible'
          'Width')
      end>
  end
end
