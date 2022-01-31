<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="/effect_pedal_catalogue/effect_pedal">
            <effect_pedal_catalogue>
                <effect_pedal>
                    <xsl:attribute name="analog_or_digital">
                        <xsl:value-of select="@analog_or_digital" />
                    </xsl:attribute>
                    <image>
                        <xsl:value-of select="image" />
                    </image>
                    <name>
                        <manufacturer_name>
                            <xsl:value-of select="name/manufacturer_name" />
                        </manufacturer_name>
                        <model_name>
                            <xsl:value-of select="name/model_name" />
                        </model_name>
                    </name>
                    <type>
                        <xsl:value-of select="type" />
                    </type>
                    <year_of_manufacturing>
                        <xsl:value-of select="year_of_manufacturing" />
                    </year_of_manufacturing>
                    <price>
                        <xsl:attribute name="currency">
                            <xsl:value-of select="price/@currency" />
                        </xsl:attribute>
                        <xsl:value-of select="price" />
                    </price>
                    <power>
                        <polarity>
                            <xsl:value-of select="power/polarity" />
                        </polarity>
                        <voltage>
                            <xsl:value-of select="power/voltage" />
                        </voltage>
                        <current_draw>
                            <xsl:value-of select="power/current_draw" />
                        </current_draw>
                        <battery>
                            <xsl:attribute name="has">
                                <xsl:value-of select="power/battery/@has" />
                            </xsl:attribute>
                        </battery>

                    </power>
                    <dimensions>
                        <width>
                            <xsl:attribute name="unit">
                                <xsl:value-of select="dimensions/width/@unit" />
                            </xsl:attribute>
                            <xsl:value-of select="dimensions/width" />
                        </width>
                        <height>
                            <xsl:attribute name="unit">
                                <xsl:value-of select="dimensions/height/@unit" />
                            </xsl:attribute>
                            <xsl:value-of select="dimensions/height" />
                        </height>
                        <length>
                            <xsl:attribute name="unit">
                                <xsl:value-of select="dimensions/length/@unit" />
                            </xsl:attribute>
                            <xsl:value-of select="dimensions/length" />
                        </length>
                    </dimensions>
                    <weight>
                        <xsl:attribute name="unit">
                            <xsl:value-of select="weight/@unit" />
                        </xsl:attribute>
                        <xsl:value-of select="weight" />
                    </weight>
                    <true_bypass>
                        <xsl:attribute name="has">
                            <xsl:value-of select="true_bypass/@has" />
                        </xsl:attribute>
                    </true_bypass>
                    <description>
                        <text>
                            <xsl:value-of select="description/text" />
                        </text>
                    </description>
                </effect_pedal>
            </effect_pedal_catalogue>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>