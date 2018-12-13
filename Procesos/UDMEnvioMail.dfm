object DMEnvioMails: TDMEnvioMails
  OldCreateOrder = False
  Height = 638
  Width = 983
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv3
    SSLOptions.SSLVersions = [sslvSSLv3]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 43
    Top = 26
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 160
    Top = 24
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CharSet = 'us-ascii'
    CCList = <>
    ContentType = 'text/plain'
    Encoding = mePlainText
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = False
    Left = 112
    Top = 24
  end
  object PgPrdcrInvalidos: TPageProducer
    HTMLDoc.Strings = (
      
        '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "' +
        'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
      '<html xmlns="http://www.w3.org/1999/xhtml">'
      '<head>'
      
        '<meta http-equiv="Content-Type" content="text/html; charset=utf-' +
        '8" />'
      '<!-- TemplateBeginEditable name="doctitle" -->'
      '<title>Interva - Registro</title>'
      '<!-- TemplateEndEditable -->'
      '<!-- TemplateBeginEditable name="head" -->'
      '<!-- TemplateEndEditable -->'
      '<style type="text/css">'
      '<!--'
      'body {'
      #9'font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;'
      #9'background-color: #00559D;'
      #9'margin: 0;'
      #9'padding: 0;'
      #9'color: #1A2E59;'
      '}'
      ''
      '/* ~~ Selectores de elemento/etiqueta ~~ */'
      
        'ul, ol, dl { /* Debido a las diferencias existentes entre los na' +
        'vegadores, es recomendable no a'#241'adir relleno ni m'#225'rgenes en las ' +
        'listas. Para lograr coherencia, puede especificar las cantidades' +
        ' deseadas aqu'#237' o en los elementos de lista (LI, DT, DD) que cont' +
        'ienen. Recuerde que lo que haga aqu'#237' se aplicar'#225' en cascada en l' +
        'a lista .nav, a no ser que escriba un selector m'#225's espec'#237'fico. *' +
        '/'
      #9'padding: 0;'
      #9'margin: 0;'
      '}'
      'h1, h2, h3, h4, h5, h6, p {'
      
        #9'margin-top: 0;'#9' /* la eliminaci'#243'n del margen superior resuelve ' +
        'un problema que origina que los m'#225'rgenes escapen de la etiqueta ' +
        'div contenedora. El margen inferior restante lo mantendr'#225' separa' +
        'do de los elementos de que le sigan. */'
      #9'padding-right: 15px;'
      
        #9'padding-left: 15px; /* la adici'#243'n de relleno a los lados del el' +
        'emento dentro de las divs, en lugar de en las divs propiamente d' +
        'ichas, elimina todas las matem'#225'ticas de modelo de cuadro. Una di' +
        'v anidada con relleno lateral tambi'#233'n puede usarse como m'#233'todo a' +
        'lternativo. */'
      #9'color: #1A2E59;'
      '}'
      
        'a img { /* este selector elimina el borde azul predeterminado qu' +
        'e se muestra en algunos navegadores alrededor de una imagen cuan' +
        'do est'#225' rodeada por un v'#237'nculo */'
      #9'border: none;'
      '}'
      
        '/* ~~ La aplicaci'#243'n de estilo a los v'#237'nculos del sitio debe perm' +
        'anecer en este orden (incluido el grupo de selectores que crea e' +
        'l efecto hover -paso por encima-). ~~ */'
      'a:link {'
      #9'color: #42413C;'
      
        #9'text-decoration: underline; /* a no ser que aplique estilos a l' +
        'os v'#237'nculos para que tengan un aspecto muy exclusivo, es recomen' +
        'dable proporcionar subrayados para facilitar una identificaci'#243'n ' +
        'visual r'#225'pida */'
      '}'
      'a:visited {'
      #9'color: #6E6C64;'
      #9'text-decoration: underline;'
      '}'
      
        'a:hover, a:active, a:focus { /* este grupo de selectores proporc' +
        'ionar'#225' a un usuario que navegue mediante el teclado la misma exp' +
        'eriencia de hover (paso por encima) que experimenta un usuario q' +
        'ue emplea un rat'#243'n. */'
      #9'text-decoration: none;'
      '}'
      ''
      
        '/* ~~ este contenedor de anchura fija rodea a las dem'#225's divs ~~ ' +
        '*/'
      '.container {'
      #9'width: 960px;'
      #9'background-color: #FFF;'
      
        #9'margin: 0 auto; /* el valor autom'#225'tico de los lados, unido a la' +
        ' anchura, centra el dise'#241'o */'
      '}'
      '.container2 {'
      #9'width: 960px;'
      #9'background-color: #FFF;'
      
        #9'margin: 0 auto; /* el valor autom'#225'tico de los lados, unido a la' +
        ' anchura, centra el dise'#241'o */'
      #9'text-align: center;'
      #9'font-size: medium;'
      '}'
      ''
      
        '/* ~~ no se asigna una anchura al encabezado. Se extender'#225' por t' +
        'oda la anchura del dise'#241'o. Contiene un marcador de posici'#243'n de i' +
        'magen que debe sustituirse por su propio logotipo vinculado ~~ *' +
        '/'
      '.header {'
      #9'background-color: #182D66;'
      '}'
      ''
      '/* ~~ Esta es la informaci'#243'n de dise'#241'o. ~~ '
      ''
      
        '1) El relleno s'#243'lo se sit'#250'a en la parte superior y/o inferior de' +
        ' la div. Los elementos situados dentro de esta div tienen rellen' +
        'o a los lados. Esto le ahorra las "matem'#225'ticas de modelo de cuad' +
        'ro". Recuerde que si a'#241'ade relleno o borde lateral a la div prop' +
        'iamente dicha, '#233'ste se a'#241'adir'#225' a la anchura que defina para crea' +
        'r la anchura *total*. Tambi'#233'n puede optar por eliminar el rellen' +
        'o del elemento en la div y colocar una segunda div dentro de '#233'st' +
        'a sin anchura y el relleno necesario para el dise'#241'o deseado.'
      ''
      '*/'
      ''
      '.content {'
      ''
      '/*'#9'padding: 10px 0;*/'
      '}'
      ''
      '/* ~~ El pie de p'#225'gina ~~ */'
      '.footer {'
      #9'padding: 10px 0;'
      #9'background-color: #182D66;'
      '}'
      ''
      '/* ~~ clases float/clear varias ~~ */'
      
        '.fltrt {  /* esta clase puede utilizarse para que un elemento fl' +
        'ote en la parte derecha de la p'#225'gina. El elemento flotante debe ' +
        'preceder al elemento junto al que debe aparecer en la p'#225'gina. */'
      #9'float: right;'
      #9'margin-left: 8px;'
      '}'
      
        '.fltlft { /* esta clase puede utilizarse para que un elemento fl' +
        'ote en la parte izquierda de la p'#225'gina. El elemento flotante deb' +
        'e preceder al elemento junto al que debe aparecer en la p'#225'gina. ' +
        '*/'
      #9'float: left;'
      #9'margin-right: 8px;'
      '}'
      
        '.clearfloat { /* esta clase puede situarse en una <br /> o div v' +
        'ac'#237'a como elemento final tras la '#250'ltima div flotante (dentro de ' +
        '#container) si #footer se elimina o se saca fuera de #container ' +
        '*/'
      #9'clear:both;'
      #9'height:0;'
      #9'font-size: 1px;'
      #9'line-height: 0px;'
      '}'
      '.pie {'
      #9'text-align: center;'
      #9'font-size: x-small;'
      '}'
      '-->'
      '</style></head>'
      ''
      '<body>'
      ''
      ''
      '  <div class="header"><!-- end .header -->'
      '    <p>.  </p>'
      '  </div>'
      '<div class="container">  '
      '  <div class="content">'
      
        '    <h1><span class="header"><a href="/interva"><img src="http:/' +
        '/interva.mx/interva/images/Logo_Interva_horizontalweb.jpg" alt="' +
        'Insertar logotipo aqu'#237'" name="Insert_logo" width="280" height="9' +
        '0" id="Insert_logo" style="background-color: #182D66; display: b' +
        'lock;" /></a></span></h1>'
      '    <h1>Notificaci&oacute;n de Comprobante Inv&aacute;lido</h1>'
      '    <p>Se han detectado errores en el comprobante: </p>'
      
        '    <!-- p><a href="http://interva.mx/interva/index.php?r=site/a' +
        'ctivar&id=<#password>" target="_blank">'
      
        '            http://interva.mx/interva/index.php?r=site/activar&a' +
        'mp;id=<#password></a></p>-->'
      '    <p>Folio : <#folio></p>'
      '    <p>Serie : <#serie></p>'
      '    <p>UUID : <#UUID></p>'
      '    '
      
        '    <p>El detalle de validaci&oacute;n se encuentra en el docume' +
        'nto adjunto.</p>'
      '    <br>'
      
        '    <p>Esperamos que su experiencia en nuestro sistema sea agrad' +
        'able y productiva.  </p>'
      '  </div>'
      '<div class="container2"><span class="pie">Respaldado por</span>'
      
        '<p><img src="http://interva.mx/interva/images/floresgaribay.png"' +
        ' width="210" height="60" alt="floresgaribay" /></p>'
      '</div>'
      '<!-- end .container --></div>'
      '  <div class="footer">'
      '    <p>&nbsp;</p>'
      '  <!-- end .footer --></div>'
      '</body>'
      '</html>')
    OnHTMLTag = PgPrdcrInvalidosHTMLTag
    Left = 40
    Top = 96
  end
end
