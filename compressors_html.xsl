<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <meta charset="utf-8" />
            <title>Compressors</title>
        </head>

        <body>
            <table style="width:100%;" border="1">
                <tr>
                    <th>Изображение</th>
                    <th>Име</th>
                    <th>Година</th>
                    <th>Цена</th>
                    <th>Захранване</th>
                    <th>Размери</th>
                    <th>Тегло</th>
                    <th>True Bypass</th>
                </tr>
                <xsl:for-each select="/effect_pedal_catalogue/effect_pedal">
                    <tr>
                        <td>
                            <img src="images/{image}" width="150" height="200" />
                        </td>
                        <td>
                            <xsl:value-of select="name/manufacturer_name" />&#160;<xsl:value-of select="name/model_name" />&#160;<xsl:value-of select="type" />&#160;<xsl:value-of select="@analog_or_digital" />&#160;Pedal
                        </td>
                        <td>
                            <xsl:value-of select="year_of_manufacturing" />
                        </td>
                        <td>
                            <xsl:value-of select="price" />&#160;<xsl:value-of select="price/@currency" />
                        </td>
                        <td>
                            Поляритет: <xsl:value-of select="power/polarity" />
                            <br />
                            Напрежение: <xsl:value-of select="power/voltage" />
                            <br />
                            Ток: <xsl:value-of select="power/current_draw" />
                            <br />
                            Батерия: <xsl:value-of select="power/battery/@has" />
                            <br />
                        </td>
                        <td>
                            <xsl:value-of select="dimensions/width" />x<xsl:value-of select="dimensions/height" />x<xsl:value-of select="dimensions/length" /><xsl:value-of select="dimensions/length/@unit" />
                        </td>
                        <td>
                            <xsl:value-of select="weight" />&#160;<xsl:value-of select="weight/@unit" />
                        </td>
                        <td>
                            <xsl:value-of select="true_bypass/@has" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>