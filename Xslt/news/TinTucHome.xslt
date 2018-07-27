<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-news">
			<div class="container-fluid">
				<h2 class="home-title text-center">
					<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="nav-wrap">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
					</ul>

				</div>
				<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Nav">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>nav-link active show</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="id">
					<xsl:text>itemnews-tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-toggle">
					<xsl:text>tab</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:text>#itemnews-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="role">
					<xsl:text>tab</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="aria-controls">
					<xsl:text>itemnews-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="aria-selected">
					<xsl:text>true</xsl:text>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Content">
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>show active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="id">
					<xsl:text>itemnews-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="role">
					<xsl:text>tab</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="aria-labelledby">
					<xsl:text>itemnews-tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="news-list news-slick">
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</div>
				<div class="btn-wrap text-center">
					<a class="btn-viewmore" href="#!">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="/ZoneList/ViewMoreText" /></a>
				</div>
			</div>

		</div>

	</xsl:template>
	<xsl:template match="News">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<div class="news-col">
				<figure>
					<div class="news-img">
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
					<figcaption>
						<time>
							<div class="date">
								<xsl:value-of select="CreatedDD" />
							</div>
							<div class="month">
								<xsl:value-of select="CreatedMM" />
								<xsl:text>, </xsl:text>
								<xsl:value-of select="CreatedYYYY" />
							</div>
						</time>
						<h3 class="news-name">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</div>
		</a>
	</xsl:template>
</xsl:stylesheet>