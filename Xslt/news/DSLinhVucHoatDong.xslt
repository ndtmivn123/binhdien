<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="service-section">
					<div class="container">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="service-section s2">
					<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="service-section s3">
					<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
				</section>
			</xsl:when>
			<!-- <xsl:otherwise>

				<xsl:if test="position()=4">
					<xsl:text disable-output-escaping="yes">&lt;section class="canhcam-about-4" &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;article class="about-list" &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;div class="container" &gt;</xsl:text>
				</xsl:if>

				<xsl:if test="(position() mod 2) = 0">
					<xsl:text disable-output-escaping="yes">&lt;div class="row top-list" &gt;</xsl:text>
				</xsl:if>
				<xsl:if test="(position() mod 2) = 1 ">
					<xsl:text disable-output-escaping="yes">&lt;div class="row part-list" bg-img="/Data/Sites/1/media/about_bg_2.png" &gt;</xsl:text>
				</xsl:if>
				<div class="col-12">
					<h2 class="greenland-title title-center">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<xsl:apply-templates select="News" mode="ZoneNewsOther"></xsl:apply-templates>
				<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>

				<xsl:if test="position()=last()">
					<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;/article &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;/section &gt;</xsl:text>
				</xsl:if>
			</xsl:otherwise> -->
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<h1 class="page-title text-center">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</h1>
		<div class="service-content">
			<div class="content">
				<p>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
				<div class="row">
					<div class="col-12 col-lg-6 col-xl-4">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="col-12 col-lg-6 col-xl-8">
						<div class="service-img">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="section-bg" style="background: url(img/service/bg.jpg) center center no-repeat;background-size: cover">
			<xsl:attribute name="style">
				<xsl:text>background: url(/Data/Sites/1/media/bg.jpg) center center no-repeat;background-size: cover</xsl:text>
			</xsl:attribute>
		</div>
		<div class="container">
			<div class="service-content">
				<h2 class="page-title text-center">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="page-des text-center">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="service-img">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
	</xsl:template>
</xsl:stylesheet>