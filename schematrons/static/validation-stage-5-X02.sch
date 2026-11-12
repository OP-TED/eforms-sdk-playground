<?xml version="1.0" encoding="UTF-8" ?>
<!--File generated from metadata database-->
<pattern id="EFORMS-validation-stage-5-X02" xmlns="http://purl.oclc.org/dsdl/schematron">
	<rule context="/*[$noticeSubType = 'X02']">
		<assert id="BR-OPP-00105-0054" role="ERROR" diagnostics="ND-Root_OPP-105-Business" test="count(cac:BusinessCapability/cbc:CapabilityTypeCode/normalize-space(text())) = count(distinct-values(cac:BusinessCapability/cbc:CapabilityTypeCode/normalize-space(text())))">rule|text|BR-OPP-00105-0054</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension[$noticeSubType = 'X02']">
		<assert id="BR-OPP-00070-0100" role="ERROR" diagnostics="OPP-070-notice" test="(../../../../cbc:NoticeTypeCode/normalize-space(text()) = 'brin-ecs')">rule|text|BR-OPP-00070-0100</assert>
	</rule>
</pattern>