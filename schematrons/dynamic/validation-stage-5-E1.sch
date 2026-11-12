<?xml version="1.0" encoding="UTF-8" ?>
<!--File generated from metadata database-->
<pattern id="EFORMS-validation-stage-5-E1" xmlns="http://purl.oclc.org/dsdl/schematron">
	<rule context="/*[$noticeSubType = 'E1']">
		<assert id="BR-BT-00001-0348" role="ERROR" diagnostics="BT-01-notice" test="((cac:TenderingTerms/cac:ProcurementLegislationDocumentReference[not(cbc:ID/text()=('CrossBorderLaw','LocalLegalBasis'))]/cbc:ID) or (cac:TenderingTerms/cac:ProcurementLegislationDocumentReference[cbc:ID/text()='LocalLegalBasis']/cbc:DocumentDescription)) or not((cbc:RegulatoryDomain/normalize-space(text()) = 'other'))">rule|text|BR-BT-00001-0348</assert>
		<assert id="BR-OPT-00200-0144" role="ERROR" diagnostics="ND-Root_OPT-200-Organization-Company" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Organizations/efac:Organization/efac:Company/cac:PartyIdentification/cbc:ID[../../../efbc:GroupLeadIndicator = true()]/normalize-space(text())) &lt; 2">rule|text|BR-OPT-00200-0144</assert>
	</rule>
	<rule context="/*/cac:ContractingParty[$noticeSubType = 'E1']">
		<assert id="BR-OPT-00300-0311" role="ERROR" diagnostics="ND-ContractingParty_OPT-300-Procedure-SProvider" test="count(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())) = count(distinct-values(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00300-0311</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject[$noticeSubType = 'E1']">
		<assert id="BR-BT-00263-0200" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-263-Procedure" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0200</assert>
		<assert id="BR-BT-00531-0202" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-531-Procedure" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0202</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = 'E1']">
		<assert id="BR-BT-00262-0448" role="ERROR" diagnostics="BT-262-Procedure" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0448</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot'][$noticeSubType = 'E1']">
		<assert id="BR-BT-00097-0054" role="ERROR" diagnostics="ND-Lot_BT-97-Lot" test="count(cac:TenderingTerms/cac:Language/cbc:ID/normalize-space(text())) = count(distinct-values(cac:TenderingTerms/cac:Language/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00097-0054</assert>
		<assert id="BR-OPT-00140-0131" role="ERROR" diagnostics="ND-Lot_OPT-140-Lot" test="count(cac:TenderingTerms/cac:CallForTendersDocumentReference/cbc:ID/normalize-space(text())) = count(distinct-values(cac:TenderingTerms/cac:CallForTendersDocumentReference/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00140-0131</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject[$noticeSubType = 'E1']">
		<assert id="BR-BT-00263-0155" role="ERROR" diagnostics="ND-LotProcurementScope_BT-263-Lot" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0155</assert>
		<assert id="BR-BT-00531-0157" role="ERROR" diagnostics="ND-LotProcurementScope_BT-531-Lot" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0157</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = 'E1']">
		<assert id="BR-BT-00262-0350" role="ERROR" diagnostics="BT-262-Lot" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0350</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingProcess[$noticeSubType = 'E1']">
		<assert id="BR-BT-00125-0160" role="ERROR" diagnostics="ND-LotTenderingProcess_BT-125_i_-Lot" test="count(cac:NoticeDocumentReference/cbc:ID/normalize-space(text())) = count(distinct-values(cac:NoticeDocumentReference/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00125-0160</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingTerms/cac:CallForTendersDocumentReference[$noticeSubType = 'E1']">
		<assert id="BR-BT-00708-0130" role="ERROR" diagnostics="ND-LotProcurementDocument_BT-708-Lot" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:OfficialLanguages/cac:Language/cbc:ID/normalize-space(text())) = count(distinct-values(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:OfficialLanguages/cac:Language/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00708-0130</assert>
		<assert id="BR-BT-00737-0130" role="ERROR" diagnostics="ND-LotProcurementDocument_BT-737-Lot" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NonOfficialLanguages/cac:Language/cbc:ID/normalize-space(text())) = count(distinct-values(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NonOfficialLanguages/cac:Language/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00737-0130</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Part']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = 'E1']">
		<assert id="BR-BT-00262-0399" role="ERROR" diagnostics="BT-262-Part" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0399</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Changes/efac:Change[$noticeSubType = 'E1']">
		<assert id="BR-BT-13716-0101" role="ERROR" diagnostics="ND-Change_BT-13716-notice" test="count(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())) = count(distinct-values(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())))">rule|text|BR-BT-13716-0101</assert>
	</rule>
</pattern>