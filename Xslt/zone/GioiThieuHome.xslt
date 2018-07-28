<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-about">
			<div class="container-fluid">
				<div class="about-wrap clearfix">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="about-intro">
			<div class="about-title">
				<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
			</div>
			<div class="content">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<a class="about-video">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-fancybox">
				<xsl:text></xsl:text>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>