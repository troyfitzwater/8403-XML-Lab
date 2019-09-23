<?xml version="1.0" encoding="utf-8" ?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:employment="resume:employment">
    <xsl:template match="/">
        <h1>Employment</h1>
        <div class="employmentCards">
            <xsl:for-each select="employment:employment/employment:job">
                <div class="card">
                    <h3>
                        <xsl:value-of select="employment:title" />
                    </h3>
                    <p class="faded-text"><i>
                        <xsl:value-of select="employment:location/employment:city" />
                        ,
                        <xsl:value-of select="employment:location/employment:state" />
                    </i></p>
                    <p class="faded-text">
                        <xsl:value-of select="employment:time_employed" />
                    </p>
                    <p>
                        <xsl:value-of select="employment:responsibility" />
                    </p>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:transform>