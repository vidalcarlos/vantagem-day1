<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : my1xml.xsl
    Created on : 18 de Maio de 2015, 11:43
    Author     : cfreire
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Maravilha da Natureza</title>
            </head>
            <body>
                <h1>Maravilhas da natureza</h1>
                <table>
                    <th>Nome</th>
                    <th>Data de Nascimento</th>
                    <th>Naturalidade</th>
                    <xsl:for-each select="catalogo/bug">
                        <xsl:sort select="nome" order="descending" data-type="text"/>
                        <tr>
                            <td>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="link"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="nome"/>
                                </a>
                                       
                            </td>
                            <td>
                                <xsl:value-of select="data_nasc"/>       
                            </td>
                            <td>
                                <!--<xsl:if test="naturalidade[@lang='PT']"/> -->
                                <xsl:value-of select="naturalidade [@lang='PT']"/>       
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
