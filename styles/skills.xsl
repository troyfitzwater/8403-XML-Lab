<?xml version="1.0" encoding="utf-8" ?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:act="resume:skills">
    <xsl:template match="/">
        <xsl:for-each select="act:activities/act:activity">
        </xsl:for-each>
    </xsl:template>
</xsl:transform>