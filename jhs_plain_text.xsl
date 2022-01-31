<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="/effect_pedal_catalogue/effect_pedal">
            Име: <xsl:value-of select="name/manufacturer_name" />&#160;<xsl:value-of select="name/model_name" />&#160;<xsl:value-of select="type" />&#160;<xsl:value-of select="@analog_or_digital" />&#160;Pedal
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            Година: <xsl:value-of select="year_of_manufacturing" />
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            Цена: <xsl:value-of select="price" />&#160;<xsl:value-of select="price/@currency" />
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            Захранване <xsl:value-of select="$newline"/>
            Поляритет: <xsl:value-of select="power/polarity" />
            <xsl:value-of select="$newline"/>
            Напрежение: <xsl:value-of select="power/voltage" />
            <xsl:value-of select="$newline"/>
            Ток: <xsl:value-of select="power/current_draw" />
            <xsl:value-of select="$newline"/>
            Батерия: <xsl:value-of select="power/battery/@has" />
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            Размери: <xsl:value-of select="dimensions/width" />x<xsl:value-of select="dimensions/height" />x<xsl:value-of select="dimensions/length" /><xsl:value-of select="dimensions/length/@unit" />
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            Тегло: <xsl:value-of select="weight" />&#160;<xsl:value-of select="weight/@unit" />
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            True Bypass: <xsl:value-of select="true_bypass/@has" />
        </xsl:for-each>
    </xsl:template>

    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>

</xsl:stylesheet>