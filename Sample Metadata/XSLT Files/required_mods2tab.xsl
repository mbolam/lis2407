<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:copyrightMD="http://www.cdlib.org/inside/diglib/copyrightMD"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:strip-space elements="*"/>
    <xsl:output method="text" indent="no"/>
    
    <xsl:template match="/">
            <xsl:value-of select="mods:mods/mods:titleInfo"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="mods:mods/mods:identifier[@type='pitt']"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:for-each select="mods:mods/mods:name">
                <xsl:if test="mods:role/mods:roleTerm='depositor'">
                    <xsl:value-of select="child::mods:namePart"/>
                </xsl:if>
            </xsl:for-each>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="mods:mods/mods:typeOfResource"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="mods:mods/mods:originInfo/mods:dateCreated"/>
            <xsl:text>&#09;</xsl:text>
            <xsl:value-of select="mods:mods/mods:originInfo/mods:dateOther[@type='display']"/>
            <xsl:text>&#09;</xsl:text>
        <xsl:value-of select="mods:mods/originInfo/mods:dateOther[@type='sort']"/>
            <xsl:text>&#09;</xsl:text>
        <xsl:value-of select="mods:mods/mods:accessCondition/copyrightMD:copyright/@copyright.status"/>
            <xsl:text>&#09;</xsl:text>
        <xsl:value-of select="mods:mods/mods:accessCondition/copyrightMD:copyright/@publication.status"/>
            <xsl:text>&#09;</xsl:text>
        <xsl:value-of select="mods:mods/mods:ccessCondition/copyrightMD:copyright/copyrightMD:rights.holder/copyrightMD:name"/>
    </xsl:template>
</xsl:stylesheet>
