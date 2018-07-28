<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />




	<xsl:template match="/">
		<section class="home-qc">
			<div class="container-fluid">
				<h2 class="home-title text-center">
					<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="qc-list">
					<div class="row">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>

			</div>
		</section>

	</xsl:template>

	<xsl:template match="Banner">
		<xsl:if test="position() =1">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6" &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row" &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =1 or position() =2 ">
			<div class="col-12 col-md-6">
				<a class="qc-img" href="#!">
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
					</img>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() =3 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-12" &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="qc-slide" &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()  &gt; 2 and position() &lt; 6  ">
			<div class="item">
				<a class="qc-img" href="#!">
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
					</img>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() =5 ">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =5 ">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
		</xsl:if>

		<xsl:if test="position() =6 ">
				<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6" &gt;</xsl:text>
				<xsl:text disable-output-escaping="yes">&lt;div class="row" &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()  &gt; 5 and position() &lt;  8  ">
			<div class="col-12 col-md-6">
				<a class="qc-img" href="#!">
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
					</img>
				</a>
			</div>

		</xsl:if>

		<xsl:if test="position() =7 ">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
		</xsl:if>


		<xsl:if test="position()>7">
			<xsl:text> &lt; div class="row" &gt;</xsl:text>

			<div class="col-12 col-md-6">
				<a class="qc-img" href="#!">
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
					</img>
				</a>
			</div>
			<xsl:if test="position() =last() ">
				<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			</xsl:if>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>