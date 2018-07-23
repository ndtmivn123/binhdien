<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--<FAQsList>
		<ModuleTitle>Hỏi đáp</ModuleTitle>
		<PageTitle>Hỏi đáp</PageTitle>
		<SubmitLink>Hỏi đáp</SubmitLink>
		<Culture>vi-VN</Culture>
		<FAQs>
			<Question>Câu hỏi</Question>
			<Answer>Trả lời</Answer>
			<Viewed>0</Viewed>
		</FAQs>
	</FAQsList>-->

	<xsl:template match="/">
		<section class="support-page">
			<div class="container">
				<h1 class="page-title text-center">
					FAQs
				</h1>
				<div class="row">
					<div class="col-12 col-lg-8 col-xl-9">
						<div class="faq-list">
							<xsl:apply-templates select="/FAQsList/FAQs"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-12 col-lg-4 col-xl-3">
						<div class="send-mess">
							<div class="module-title">Đặt câu hỏi</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template match="FAQs">
		<div class="faq">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>faq active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<div class="faq-title">
				<xsl:value-of select="Question" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="faq-content">
				<xsl:if test="position()=1">
					<xsl:attribute name="style">
						<xsl:text>display:block</xsl:text>
					</xsl:attribute>
				</xsl:if>

				<div class="content">
					<xsl:value-of select="Answer" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>