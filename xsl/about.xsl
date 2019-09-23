<?xml version="1.0" encoding="utf-8" ?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:about="resume:about">
    <xsl:template match="/*">
        <img src="images/portfolioIcon.png" alt="Portfolio Icon" width="100px" />
        <h1>Greetings!</h1>
        <p>
            <xsl:value-of select="about:greeting"/>
        </p>
        <p>
            <xsl:value-of select="about:phone" />
        </p>
        <p>
            <xsl:value-of select="about:email" />
        </p>
    </xsl:template>
</xsl:transform>