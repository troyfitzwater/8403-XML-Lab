<?xml version="1.0" encoding="utf-8" ?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:education="resume:education">
    <xsl:template match="/">
        <h1>Education</h1>
        <div class="educationCards">
            <xsl:for-each select="education:education/education:school">
                <div class="card">
                    <h3>
                        <xsl:value-of select="education:name" />
                    </h3>
                    <p class="faded-text"><i>
                        <xsl:value-of select="education:location/education:city" />
                        ,
                        <xsl:value-of select="education:location/education:state" />
                    </i></p>
                    <h4>
                        <xsl:value-of select="education:degree/education:name" />
                    </h4>
                    <p>
                        <xsl:value-of select="education:degree/education:years/education:start" />
                        -
                        <xsl:value-of select="education:degree/education:years/education:end" />
                    </p>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:transform>