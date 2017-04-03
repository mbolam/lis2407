<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns2="http://www.w3.org/1999/xlink" exclude-result-prefixes="#all"
    xpath-default-namespace="urn:isbn:1-931666-22-9" version="2.0">
    <xsl:output method="text" indent="no" encoding="utf-8"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
        <xsl:apply-templates select="ead/archdesc"/>
    </xsl:template>
    <xsl:template match="ead/archdesc">
        <xsl:value-of select="normalize-space(did/unittitle)"/>
        <xsl:text>&#09;</xsl:text>
        <xsl:value-of select="did/unitid"/>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="did/origination/persname|did/origination/corpname|did/origination/famname">
            <xsl:value-of select="."/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="did/unitdate">
            <xsl:choose>
                <xsl:when test="@type='bulk'"></xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:if test="did/abstract">
            <xsl:value-of select="normalize-space(did/abstract)"></xsl:value-of>
            <!--<xsl:value-of select="normalize-space(substring(did/abstract, 1, 200))"/>
            <xsl:text> [...]</xsl:text>-->
        </xsl:if>
        <xsl:text>&#09;</xsl:text>
        <xsl:if test="did/contains(abstract, 'Digital reproductions')">
            <xsl:text>Digitized Content Available</xsl:text>
        </xsl:if>
        <xsl:if test="did/contains(abstract, 'digital reproduction')">
            <xsl:text>Digitized Content Available</xsl:text>
        </xsl:if>
        <xsl:text>&#09;</xsl:text>
        <xsl:if test="did/contains(abstract, 'Digital reproductions')">
            <xsl:text>http://digital.library.pitt.edu/f/findaid/graphics/digitized_content_available.jpg</xsl:text>
        </xsl:if>
        <xsl:if test="did/contains(abstract, 'digital reproduction')">
            <xsl:text>http://digital.library.pitt.edu/f/findaid/graphics/digitized_content_available.jpg</xsl:text>
        </xsl:if>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/subject[@source='ulstag']">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/subject[@source='lcsh']">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/corpname">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/persname">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/famname">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/geogname">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/title">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/occupation">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/function">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="controlaccess/genreform">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text>; </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#09;</xsl:text>
        <xsl:text>http://digital.library.pitt.edu/cgi-bin/f/findaid/findaid-idx?c=ascead&amp;cc=ascead&amp;rgn=main&amp;view=text&amp;didno=</xsl:text>
        <xsl:value-of select="normalize-space(../eadheader/eadid)"/>
        <xsl:text>&#09;</xsl:text>
        <xsl:for-each select="did/physdesc/extent">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:if test="position() != last()">
                <xsl:text> </xsl:text>
            </xsl:if>
        </xsl:for-each>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>
