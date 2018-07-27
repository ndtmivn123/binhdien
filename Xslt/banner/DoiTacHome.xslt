<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-partner">
			<div class="container-fluid">
				<h2 class="home-title text-center">
					<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="partner-list partner-slick">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<xsl:if test="(position() mod 4) = 1">
			<xsl:text disable-output-escaping="yes">&lt;div class="item" &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row" &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="(position() mod 4) &gt;= 1 or  (position() mod 4) &lt;= 0">
			<div class="col-6">
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
			</div>
		</xsl:if>
		<xsl:if test="(position() mod 4) = 0">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>