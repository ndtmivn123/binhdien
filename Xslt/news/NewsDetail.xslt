<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">



		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 col-xl-9">
					<section class="news-page">
						<div class="news-detail">
							<h1 class="news-name">
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							</h1>
							<time>
								<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
							</time>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="content">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						<!-- <div class="social-networks nav mt-3">
							<div class="nav-item">
								<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true">
									<a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a>
								</div>
							</div>
							<div class="nav-item">
								<a class="twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text" data-url=""
								 data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a>
							</div>
							<div class="nav-item">
								<div class="g-plusone" data-size="tall"></div>
							</div>
							<div class="nav-item">
								<script src="//platform.linkedin.com/in.js" type="text/javascript"> lang: en_US</script>
								<script type="IN/Share"></script>
							</div>
						</div> -->
						</div>
					</section>

				</div>
				<div class="col-12 col-lg-4 col-xl-3">
					<div class="sidebar-news">
						<h4 class="small-title">
							<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
						</h4>
						<div class="post-list">
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</div>



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

</xsl:stylesheet>