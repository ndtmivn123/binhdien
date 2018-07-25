<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />




	<xsl:template match="/">
		<section class="partner-page">
			<div class="container">
				<h1 class="page-title text-center">
					<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
				</h1>
				<div class="row">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template match="Banner">
		<div class="col-6 col-sm-4 col-md-3 col-lg-3 col-custom">
			<div class="partner">
				<a class="partner-logo">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
					</img>
				</a>
				<div class="partner-name">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>