<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--Begin father-->
	<xsl:template match="/">
		<!--Begin nav-->
		<nav class="top-nav">
			<div class="btn-navtoggle d-md-none">Danh mục</div>
			<ul>
				<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
			</ul>
		</nav>
		<!--End nav-->
		<!--Begin content-->
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
		<!--End content-->
	</xsl:template>
	<!--End father-->
	<!--Begin match nav-->
	<xsl:template match="Zone" mode="Nav">
		<li>
			<a class="active">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<!--Match Id-->
				<xsl:attribute name="href">
					<xsl:text>#ccsection</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<!--End match nav-->
	<!--Begin match content-->
	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section class="about-section1">
				<!--Match Id-->
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>ccsection</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="about-section2">
				<!--Match Id-->
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>ccsection</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="about-section3">
				<!--Match Id-->
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>ccsection</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
			</section>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<section class="about-section4">
				<!--Match Id-->
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>ccsection</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
			</section>
		</xsl:if>
	</xsl:template>
	<!--End match content-->
	<!--Begin match ZoneNews-->
	<xsl:template match="News" mode="ZoneNews1">
		<div class="container">
			<h2 class="about-title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-12 col-lg-6">
					<xsl:if test="position() = 1 ">
						<xsl:text disable-output-escaping="yes">&lt;div class="content" &gt;</xsl:text>
					</xsl:if>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<xsl:if test="(position() mod 2) = 0">
						<xsl:text disable-output-escaping="yes">&lt;div class="row" &gt;</xsl:text>
					</xsl:if>
					<xsl:apply-templates select="News" mode="ZoneNewsOther1"></xsl:apply-templates>
					<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
				</div>
				<xsl:if test="(position() mod 2) = 1">
					<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-lg-6" &gt;</xsl:text>
				</xsl:if>
				<xsl:apply-templates select="News" mode="ZoneNewsOther2"></xsl:apply-templates>
				<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-6">
					<h2 class="about-title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
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
									<xsl:if test="position() = 1 ">
										<xsl:text disable-output-escaping="yes">&lt;div class="col-12"&gt;</xsl:text>
									</xsl:if>
									<xsl:if test="position() = 2 or position() = 3 or position() = 4  ">
										<xsl:text disable-output-escaping="yes">&lt;div class="col-4"&gt;</xsl:text>
									</xsl:if>
									<xsl:if test="position() = 5 ">
										<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-md-8"&gt;</xsl:text>
									</xsl:if>
									<xsl:if test="position() = 6 ">
										<xsl:text disable-output-escaping="yes">&lt;div class="col-12 col-md-4" &gt;</xsl:text>
										<xsl:text disable-output-escaping="yes">&lt;div class="row" &gt;</xsl:text>
									</xsl:if>
									<xsl:if test="(position() mod 2) = 0">
										<xsl:text disable-output-escaping="yes">&lt;div class="col-6 col-md-12" &gt;</xsl:text>
									</xsl:if>
									<xsl:if test="(position() mod 2) = 1">
										<xsl:text disable-output-escaping="yes">&lt;div class="col-6 col-md-12" &gt;</xsl:text>
									</xsl:if>
									<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
									<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
									<xsl:if test="position()=last()">
										<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
										<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
									</xsl:if>
									<xsl:apply-templates select="NewsImages" mode="pos4Images"></xsl:apply-templates>
									<xsl:if test="position()=last()">
										<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
									</xsl:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<!--End match ZoneNews-->
	<!--Begin match NewOther-->
	<xsl:template match="News" mode="ZoneNewsOther1">
		<xsl:apply-templates select="NewsImages" mode="First"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNewsOther2">
		<xsl:apply-templates select="NewsImages" mode="Part"></xsl:apply-templates>
	</xsl:template>
	<!--End match NewOther-->
	<!--Begin match Images-->
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
		<xsl:if test="position() = 3">
			<a class="about-img big" href="img/about/img3.jpg" data-fancybox="album1">
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
		<a class="about-img">
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
	</xsl:template>
	<!--End match Images-->
</xsl:stylesheet>