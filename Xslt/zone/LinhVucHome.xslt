<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-about s2">
			<div class="container-fluid">
				<div class="about-wrap clearfix">
					<xsl:apply-templates select="/ZoneList/Zone" mode="LinhVuc"></xsl:apply-templates>

				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="LinhVuc">
		<div class="about-intro">
			<div class="about-title">
				<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
			</div>
			<div class="content">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="btn-wrap">
				<a class="btn-viewmore">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					Xem thêm
				</a>
			</div>
		</div>
		<div class="about-img">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>