<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">


		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 col-xl-9">
					<section class="career-page">
						<h1>
							<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							<span></span>
						</h1>
						<div class="career-detail">
							<time>
								<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
							</time>
						</div>
						<div class="content">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<a class="btn-download">
							<xsl:attribute name="href">
								<xsl:value-of select="/NewsDetail/FileUrl"></xsl:value-of>
							</xsl:attribute>
							Tải mẫu đơn xin việc
						</a>
						<a class="btn-apply">
							<xsl:attribute name="href">
								<xsl:value-of select="/NewsDetail/FileUrl"></xsl:value-of>
							</xsl:attribute>
							Ứng tuyển ngay
						</a>
					</section>


				</div>
				<div class="col-12 col-lg-4 col-xl-3">
					<div class="other-job">
						<div class="small-title">
							<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
						</div>
						<div class="job-list">
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>

					</div>
				</div>
			</div>
		</div>






	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="job">
			<time>
				<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
			</time>
			<a class="job-name">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</div>

	</xsl:template>

</xsl:stylesheet>