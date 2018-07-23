<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="career-page">
			<div class="container">
				<h1 class="page-title text-center">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h1>

				<div class="career-table">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Vị trí</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Địa điểm</th>
								<th scope="col">Hạn nộp hồ sơ</th>
							</tr>
						</thead>
						<tbody>
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</tbody>
					</table>
				</div>


			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">

		<tr>
			<td>
				<a class="job">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
					<span class="badge badge-danger ml-auto mr-4">Mới
					</span>
				</xsl:if>
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>