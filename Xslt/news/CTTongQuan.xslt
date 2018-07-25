<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">


		<section class="service-section">
			<div class="container">
				<h1 class="news-name">
					<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
				</h1>
				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="cate-slide-wrap">
							<div class="cate-slide">
								<xsl:apply-templates select="NewsImages" mode="BigImages"></xsl:apply-templates>
							</div>
							<div class="cate-nav">
								<xsl:apply-templates select="NewsImages" mode="SmallImages"></xsl:apply-templates>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>


	</xsl:template>

	<xsl:template match="NewsOther">
		<a class="post">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="post-img">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>

				<figcaption>
					<h3 class="post-name">
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
				</figcaption>
			</figure>
		</a>
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
</xsl:stylesheet>