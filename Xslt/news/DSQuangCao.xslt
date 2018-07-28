<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-qc">
			<div class="container-fluid">
				<h2 class="home-title text-center">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="qc-list">
					<div class="row">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">

	</xsl:template>
</xsl:stylesheet>