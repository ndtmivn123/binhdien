<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="banner-wrap">
			<div class="banner-slide">
				<xsl:apply-templates select="/BannerList/Banner" mode="bannerImages"></xsl:apply-templates>
			</div>
			<div class="banner-nav">
				<xsl:apply-templates select="/BannerList/Banner" mode="bannerTitle"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Banner" mode="bannerImages">
		<div class="item">
			<div class="banner-img">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Banner" mode="bannerTitle">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<div class="cate">
				<xsl:attribute name="data-mh">
					<xsl:text>banner-boxes</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>cate cate</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<div class="alphabet">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="cate-des">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</a>
	</xsl:template>
</xsl:stylesheet>