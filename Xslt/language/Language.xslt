<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="dropdown">
      <xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Language" mode="Active">
    <xsl:if test="IsActive='true'">
      <button class="dropdown-toggle" id="dropdownMenuButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </button>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Language">
    <a class="dropdown-item">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>dropdown-item active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="href">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:value-of select="Title"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
    </a>
  </xsl:template>

</xsl:stylesheet>