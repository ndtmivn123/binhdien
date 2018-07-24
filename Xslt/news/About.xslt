<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" ></xsl:apply-templates>
	</xsl:template>



	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="about-section1">
					<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="about-section2">
					<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="about-section3">
					<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
				</section>
			</xsl:when>
			<xsl:when test="position()=4">
				<section class="about-section4">
					<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews1">
		<div class="container">
			<h2 class="about-title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-12 col-lg-6">
					<div class="content">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="row">
						<xsl:apply-templates select="NewsImages" mode="First"></xsl:apply-templates>
					</div>
				</div>
				<div class="col-12 col-lg-6">
					<xsl:apply-templates select="NewsImages" mode="Part"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-6">
					<h2 class="about-title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
					<div class="content">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="col-12 col-lg-6">
					<div class="about-img">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="about-market">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
		<div class="container">
			<h2 class="about-title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-12 col-lg-6">
					<div class="content">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="col-12 col-lg-6">
					<div class="album-list">
						<div class="row">
							<xsl:apply-templates select="NewsImages" mode="pos4Images"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages" mode="First">
		<xsl:if test="position()=1 or position()=2">
			<div class="col-12 col-sm-6">
				<a class="about-img">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>album1</xsl:text>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" />
					</xsl:attribute>
					</img>
				</a>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="NewsImages" mode="Part">
		<xsl:if test="position()=3">
			<a class="about-img">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl" />
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text>album1</xsl:text>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl" />
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" />
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="pos4Images">
		<xsl:if test="( position() mod 8)=1">
			<div class="col-12">
				<a class="album-img">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>album</xsl:text>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" />
					</xsl:attribute>
					</img>
				</a>
			</div>

		</xsl:if>
		<xsl:if test="(position() mod 8)&gt; 1 and (position() mod 8) &lt; 5">
			<div class="col-4">
				<a class="album-img">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>album</xsl:text>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" />
					</xsl:attribute>
					</img>
				</a>
			</div>

		</xsl:if>
		<xsl:if test="(position() mod 8) =5">
			<div class="col-12 col-md-8">
				<a class="album-img">
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="data-fancybox">
						<xsl:text>album</xsl:text>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl" />
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" />
					</xsl:attribute>
					</img>
				</a>
			</div>

		</xsl:if>

		<xsl:if test="(position() mod 8) &gt; 5 and (position() mod 8) &lt; 8">
			<xsl:if test="(position() mod 8)=6 ">
				<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-md-4" &gt;</xsl:text>
				<xsl:text disable-output-escaping="yes">&lt;div class="row" &gt;</xsl:text>
			</xsl:if>
			<xsl:if test="(position() mod 8) = 6 or (position() mod 8) = 7">
				<div class="col-6 col-md-12">
					<a class="album-img">
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl" />
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
							<xsl:text>album</xsl:text>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl" />
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" />
						</xsl:attribute>
						</img>
					</a>
				</div>
			</xsl:if>
			<xsl:if test="(position() mod 8)=7 ">
				<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
				<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			</xsl:if>

		</xsl:if>
	</xsl:template>
</xsl:stylesheet>