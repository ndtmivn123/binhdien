<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="service-section s3">
			<div class="container">
				<div class="service-list">
					<div class="row">
						<div class="col-12 col-lg-8">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="service-col">
										<div class="service-title">Lĩnh vực
											<br />hoạt động</div>
									</div>
								</div>
								<xsl:apply-templates select="/ZoneList/Zone" mode="One"></xsl:apply-templates>
							</div>
						</div>
						<div class="col-12 col-lg-4">
							<div class="row">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Two"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="One">
		<xsl:if test="position() mod 5 = 1">
			<div class="col-12 col-md-6">
				<a class="service-col">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="service-img">
							<xsl:attribute name="bg-img">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</div>
						<figcaption>
							<div class="service-name">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 5 = 2">
			<div class="col-12">
				<a class="service-col big">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="service-img">
							<xsl:attribute name="bg-img">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</div>
						<figcaption>
							<div class="service-name">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Two">
		<xsl:if test="position() mod 5 = 3">
			<div class="col-12 col-md-6 col-lg-12">
				<a class="service-col high">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="service-img">
							<xsl:attribute name="bg-img">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</div>
						<figcaption>
							<div class="service-name">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() mod 5 = 4">
			<div class="col-12 col-md-6 col-lg-12">
				<a class="service-col">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>

					<figure>
						<div class="service-img">
							<xsl:attribute name="bg-img">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</div>
						<figcaption>
							<div class="service-name">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>