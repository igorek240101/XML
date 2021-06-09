<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>

  <xsl:template match="/">
    <html>
      <body>
        <h1>
          <xsl:value-of select="rules/@name"/>
        </h1>
        <h2>
          Юниты
        </h2>
        <xsl:for-each select="rules/Units/Unit">
               <xsl:choose>
                <xsl:when test="Side &gt; 1">
                  <font color="Blue">
                    <h3>
                      <xsl:value-of select="Name"/>
                    </h3>
                  </font>
                </xsl:when>
                <xsl:otherwise>
                  <font color="Red">
                    <h3>
                      <xsl:value-of select="Name"/>
                    </h3>
                  </font>
               </xsl:otherwise>
            </xsl:choose>
          
                    <i>
                      <br/>
                      <img>
                         <xsl:attribute name="src">
                         <xsl:value-of select='Image'/>
                         </xsl:attribute>
                      </img>
                      <br/>	
                      Тип: <xsl:value-of select="Type"/>
                      <br/>
                      Цена: <xsl:value-of select="Price"/>
                      <br/>
                      Численность: <xsl:value-of select="Count"/>
                      <br/>
                      Защита: <xsl:value-of select="Defence"/>
                      <br/>
                      Патроны: <xsl:value-of select="Ammunition/Ammo"/>
                      Мины: <xsl:value-of select="Ammunition/Mine"/>
                      <br/>
                      Специальные свойства: <xsl:value-of select="SpecialProperty"/>
                      <br/>
                      Допустимые статусы: <xsl:value-of select="Status"/>
                      <br/>
                      Меткость: <xsl:value-of select="Accuracy"/>
                      <br/>
                      Интенсивность огня: <xsl:value-of select="FireIntensity"/>
                      <br/>
                      Приказы: <xsl:value-of select="Order"/>
                    </i>
          
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
