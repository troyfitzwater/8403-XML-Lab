<?xml version="1.0" encoding="utf-8" ?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:skills="resume:skills">
    <xsl:template match="/">
        <h1>Skills</h1>
        <div class="skillImages">
            <xsl:for-each select="skills:skills/skills:skill">
                <div>
                    <img width="100">
                        <xsl:attribute name="src">
                            <xsl:value-of select="skills:image_source" />
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="skills:image_alt" />
                        </xsl:attribute>
                    </img>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:transform>