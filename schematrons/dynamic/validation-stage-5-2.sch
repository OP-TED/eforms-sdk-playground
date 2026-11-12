<?xml version="1.0" encoding="UTF-8" ?>
<!--File generated from metadata database-->
<pattern id="EFORMS-validation-stage-5-2" xmlns="http://purl.oclc.org/dsdl/schematron">
	<rule context="/*[$noticeSubType = '2']">
		<assert id="BR-BT-00001-0309" role="ERROR" diagnostics="BT-01-notice" test="((cac:TenderingTerms/cac:ProcurementLegislationDocumentReference[not(cbc:ID/text()=('CrossBorderLaw','LocalLegalBasis'))]/cbc:ID) or (cac:TenderingTerms/cac:ProcurementLegislationDocumentReference[cbc:ID/text()='LocalLegalBasis']/cbc:DocumentDescription)) or not((cbc:RegulatoryDomain/normalize-space(text()) = 'other'))">rule|text|BR-BT-00001-0309</assert>
		<assert id="BR-OPT-00200-0105" role="ERROR" diagnostics="ND-Root_OPT-200-Organization-Company" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Organizations/efac:Organization/efac:Company/cac:PartyIdentification/cbc:ID[../../../efbc:GroupLeadIndicator = true()]/normalize-space(text())) &lt; 2">rule|text|BR-OPT-00200-0105</assert>
	</rule>
	<rule context="/*/cac:ContractingParty[$noticeSubType = '2']">
		<assert id="BR-OPT-00300-0321" role="ERROR" diagnostics="ND-ContractingParty_OPT-300-Procedure-SProvider" test="count(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())) = count(distinct-values(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00300-0321</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject[$noticeSubType = '2']">
		<assert id="BR-BT-00263-0210" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-263-Procedure" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0210</assert>
		<assert id="BR-BT-00531-0212" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-531-Procedure" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0212</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = '2']">
		<assert id="BR-BT-00262-0409" role="ERROR" diagnostics="BT-262-Procedure" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0409</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = '2']">
		<assert id="BR-BT-00262-0311" role="ERROR" diagnostics="BT-262-Lot" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0311</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingProcess[$noticeSubType = '2']">
		<assert id="BR-BT-00125-0164" role="ERROR" diagnostics="ND-LotTenderingProcess_BT-125_i_-Lot" test="count(cac:NoticeDocumentReference/cbc:ID/normalize-space(text())) = count(distinct-values(cac:NoticeDocumentReference/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00125-0164</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Part']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = '2']">
		<assert id="BR-BT-00262-0360" role="ERROR" diagnostics="BT-262-Part" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0360</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension[$noticeSubType = '2']">
		<assert id="BR-OPP-00070-0137" role="ERROR" diagnostics="OPP-070-notice" test="(../../../../cbc:NoticeTypeCode/normalize-space(text()) = 'pin-buyer')">rule|text|BR-OPP-00070-0137</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Changes/efac:Change[$noticeSubType = '2']">
		<assert id="BR-BT-13716-0111" role="ERROR" diagnostics="ND-Change_BT-13716-notice" test="count(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())) = count(distinct-values(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())))">rule|text|BR-BT-13716-0111</assert>
	</rule>
</pattern>