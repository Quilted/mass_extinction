<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="xml" encoding="UTF-8"/>
  
  <xsl:template match="article">
    <div>
          <xsl:apply-templates select="title"/>
          <xsl:apply-templates select="para"/>
    </div>
  </xsl:template>
  
  <xsl:template match="title">
    <h4 align="center">
      <xsl:value-of select="text()"/>
    </h4>
  </xsl:template>
  
  <xsl:template match="para">
    <p>
    <xsl:choose>
      <xsl:when test="position()=1">
        <u>
          <xsl:apply-templates select="text()|personname"/>
        </u>
      </xsl:when>
      <xsl:otherwise>
          <xsl:apply-templates select="text()|personname"/>      
      </xsl:otherwise>
    </xsl:choose>
    </p>
  </xsl:template>  
  
  <xsl:template match="personname">
    <b><i><xsl:value-of select="."/></i></b>
  </xsl:template>

</xsl:stylesheet>
