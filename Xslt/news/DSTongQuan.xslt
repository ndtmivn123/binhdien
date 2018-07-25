<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="service-section">
			<div class="container">
				<h2 class="page-title text-center">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="service-category">
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>


	<xsl:template match="News">

		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-8"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 1 or  position() = 2">
			<div class="col-12 col-md-6">
				<a class="cate-item">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="alphabet">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="cate-name">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<div class="col-12">
				<a class="cate-item big">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="alphabet">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="cate-name">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 4">
			<div class="col-12 col-md-6 col-lg-12">
				<a class="cate-item high">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="alphabet">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="cate-name">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 5">
			<div class="col-12 col-md-6 col-lg-12">
				<a class="cate-item ">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="alphabet">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="cate-name">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 5 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 6 ">
			<div class="col-12 col-lg-4">
				<a class="cate-item high">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="alphabet">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="cate-name">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 7 ">
			<div class="col-12 col-lg-8">
				<a class="cate-item high">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="alphabet">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="cate-name">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>