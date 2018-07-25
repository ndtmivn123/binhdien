<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="service-section">
			<div class="container">
				<h1 class="page-title text-center">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h1>
				<div class="service-content">
					<div class="content">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>

				</div>
			</div>
		</section>

	</xsl:template>


	<xsl:template match="News">
		<p>
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</p>
		<div class="row">
			<div class="col-12 col-lg-6 col-xl-4">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="col-12 col-lg-6 col-xl-8">
				<div class="service-img">
					<div class="service-img-list">
						<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
					</div>
					<div class="service-arrow">
						<div class="service-arrow-list">
							<span class="lnr lnr-chevron-left arrow"></span>
							<span class="lnr lnr-chevron-right arrow"></span>
						</div>
					</div>
					<div class="slide-controls"></div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="box-img">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl" />
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" />
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>