<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">


		<section class="service-section">
			<div class="container">
				<h1 class="cate-title">
					<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
				</h1>
				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="cate-slide-wrap">
							<div class="cate-slide">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="BigImages"></xsl:apply-templates>
							</div>
							<div class="cate-nav">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="SmallImages"></xsl:apply-templates>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5">
						<div class="cate-info">
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
				<div class="cate-description">
					<nav class="cate-description-nav">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="TabTitle"></xsl:apply-templates>
						</ul>
					</nav>
					<div class="tab-content cate-tab-content" id="bdTabContent">
						<xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="TabContent"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>


	</xsl:template>
	<xsl:template match="NewsImages" mode="BigImages">
		<a class="img">
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
	<xsl:template match="NewsImages" mode="SmallImages">
		<div class="item">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" />
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="TabTitle">
		<li>
			<a class="active">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>active show</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="id">
					<xsl:text>item-tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-toggle">
					<xsl:text>tab</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:text>#item-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="role">
					<xsl:text>tab</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="aria-controls">
					<xsl:text>item-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="aria-selected">
					<xsl:text>true</xsl:text>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="NewsAttributes" mode="TabContent">
		<div class="tab-pane fade">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>show active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>item-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="role">
				<xsl:text>tab</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="aria-labelledby">
				<xsl:text>item-tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="content">
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>