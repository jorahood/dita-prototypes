<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
        <topic>
            <xsl:apply-templates select="document/kbml"/>
        </topic>
    </xsl:template>
    
    <xsl:template match="kbq">
        <title><xsl:apply-templates/></title>
    </xsl:template>
    
    <xsl:template match="body">
        <topicbody>
            <xsl:apply-templates/>
        </topicbody>
    </xsl:template>

    <xsl:template match=
</xsl:stylesheet>
