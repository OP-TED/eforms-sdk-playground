<?xml version="1.0" encoding="UTF-8" ?>
<!--File generated from metadata database-->
<pattern id="EFORMS-validation-stage-5-24" xmlns="http://purl.oclc.org/dsdl/schematron">
	<rule context="/*[$noticeSubType = '24']">
		<assert id="BR-BT-00001-0331" role="ERROR" diagnostics="BT-01-notice" test="((cac:TenderingTerms/cac:ProcurementLegislationDocumentReference[not(cbc:ID/text()=('CrossBorderLaw','LocalLegalBasis'))]/cbc:ID) or (cac:TenderingTerms/cac:ProcurementLegislationDocumentReference[cbc:ID/text()='LocalLegalBasis']/cbc:DocumentDescription)) or not((cbc:RegulatoryDomain/normalize-space(text()) = 'other'))">rule|text|BR-BT-00001-0331</assert>
		<assert id="BR-OPT-00200-0127" role="ERROR" diagnostics="ND-Root_OPT-200-Organization-Company" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Organizations/efac:Organization/efac:Company/cac:PartyIdentification/cbc:ID[../../../efbc:GroupLeadIndicator = true()]/normalize-space(text())) &lt; 2">rule|text|BR-OPT-00200-0127</assert>
	</rule>
	<rule context="/*/cac:ContractingParty[$noticeSubType = '24']">
		<assert id="BR-OPT-00300-0343" role="ERROR" diagnostics="ND-ContractingParty_OPT-300-Procedure-SProvider" test="count(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())) = count(distinct-values(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00300-0343</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject[$noticeSubType = '24']">
		<assert id="BR-BT-00263-0232" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-263-Procedure" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0232</assert>
		<assert id="BR-BT-00531-0234" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-531-Procedure" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0234</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = '24']">
		<assert id="BR-BT-00262-0431" role="ERROR" diagnostics="BT-262-Procedure" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0431</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot'][$noticeSubType = '24']">
		<assert id="BR-BT-00006-0074" role="ERROR" diagnostics="ND-Lot_BT-06-Lot" test="count(cac:ProcurementProject/cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='strategic-procurement']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementProject/cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='strategic-procurement']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00006-0074</assert>
		<assert id="BR-BT-00097-0074" role="ERROR" diagnostics="ND-Lot_BT-97-Lot" test="count(cac:TenderingTerms/cac:Language/cbc:ID/normalize-space(text())) = count(distinct-values(cac:TenderingTerms/cac:Language/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00097-0074</assert>
		<assert id="BR-BT-00805-0073" role="ERROR" diagnostics="ND-Lot_BT-805-Lot" test="count(cac:ProcurementProject/cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='gpp-criteria']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementProject/cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='gpp-criteria']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00805-0073</assert>
		<assert id="BR-OPT-00140-0152" role="ERROR" diagnostics="ND-Lot_OPT-140-Lot" test="count(cac:TenderingTerms/cac:CallForTendersDocumentReference/cbc:ID/normalize-space(text())) = count(distinct-values(cac:TenderingTerms/cac:CallForTendersDocumentReference/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00140-0152</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject[$noticeSubType = '24']">
		<assert id="BR-BT-00263-0180" role="ERROR" diagnostics="ND-LotProcurementScope_BT-263-Lot" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0180</assert>
		<assert id="BR-BT-00531-0182" role="ERROR" diagnostics="ND-LotProcurementScope_BT-531-Lot" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0182</assert>
		<assert id="BR-BT-00774-0073" role="ERROR" diagnostics="ND-LotProcurementScope_BT-774-Lot" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='environmental-impact']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='environmental-impact']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00774-0073</assert>
		<assert id="BR-BT-00775-0073" role="ERROR" diagnostics="ND-LotProcurementScope_BT-775-Lot" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='social-objective']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='social-objective']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00775-0073</assert>
		<assert id="BR-BT-00776-0073" role="ERROR" diagnostics="ND-LotProcurementScope_BT-776-Lot" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='innovative-acquisition']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='innovative-acquisition']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00776-0073</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = '24']">
		<assert id="BR-BT-00262-0333" role="ERROR" diagnostics="BT-262-Lot" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0333</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingProcess[$noticeSubType = '24']">
		<assert id="BR-BT-00125-0186" role="ERROR" diagnostics="ND-LotTenderingProcess_BT-125_i_-Lot" test="count(cac:NoticeDocumentReference/cbc:ID/normalize-space(text())) = count(distinct-values(cac:NoticeDocumentReference/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00125-0186</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingTerms/cac:AwardingTerms/cac:Prize/cbc:RankCode[$noticeSubType = '24']">
		<assert id="BR-BT-00044-0087" role="ERROR" test="./number() != 999">rule|text|BR-BT-00044-0087</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingTerms/cac:CallForTendersDocumentReference[$noticeSubType = '24']">
		<assert id="BR-BT-00708-0151" role="ERROR" diagnostics="ND-LotProcurementDocument_BT-708-Lot" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:OfficialLanguages/cac:Language/cbc:ID/normalize-space(text())) = count(distinct-values(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:OfficialLanguages/cac:Language/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00708-0151</assert>
		<assert id="BR-BT-00737-0152" role="ERROR" diagnostics="ND-LotProcurementDocument_BT-737-Lot" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NonOfficialLanguages/cac:Language/cbc:ID/normalize-space(text())) = count(distinct-values(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NonOfficialLanguages/cac:Language/cbc:ID/normalize-space(text())))">rule|text|BR-BT-00737-0152</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingTerms/cac:TendererQualificationRequest[not(cbc:CompanyLegalFormCode)][not(cac:SpecificTendererRequirement/cbc:TendererRequirementTypeCode[@listName='missing-info-submission'])][not(cac:SpecificTendererRequirement/cbc:TendererRequirementTypeCode[@listName='reserved-procurement'])][$noticeSubType = '24']">
		<assert id="BR-BT-00821-0070" role="ERROR" diagnostics="ND-SelectionCriteriaSources_BT-821-Lot" test="count(cac:SpecificTendererRequirement[cbc:TendererRequirementTypeCode/@listName='selection-criteria-source']/cbc:TendererRequirementTypeCode/normalize-space(text())) = count(distinct-values(cac:SpecificTendererRequirement[cbc:TendererRequirementTypeCode/@listName='selection-criteria-source']/cbc:TendererRequirementTypeCode/normalize-space(text())))">rule|text|BR-BT-00821-0070</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingTerms/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension[$noticeSubType = '24']">
		<assert id="BR-BT-05010-0071" role="ERROR" diagnostics="ND-NonUBLTenderingTerms_BT-5010-Lot" test="count(efac:Funding/efbc:FinancingIdentifier/normalize-space(text())) = count(distinct-values(efac:Funding/efbc:FinancingIdentifier/normalize-space(text())))">rule|text|BR-BT-05010-0071</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Part']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = '24']">
		<assert id="BR-BT-00262-0382" role="ERROR" diagnostics="BT-262-Part" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0382</assert>
	</rule>
	<rule context="/*/cac:TenderingTerms/cac:LotDistribution/cac:LotsGroup[$noticeSubType = '24']">
		<assert id="BR-BT-01375-0135" role="ERROR" diagnostics="ND-GroupComposition_BT-1375-Procedure" test="count(cac:ProcurementProjectLotReference/cbc:ID[@schemeName='Lot']/normalize-space(text())) = count(distinct-values(cac:ProcurementProjectLotReference/cbc:ID[@schemeName='Lot']/normalize-space(text())))">rule|text|BR-BT-01375-0135</assert>
	</rule>
	<rule context="/*/cac:TenderingTerms/cac:TendererQualificationRequest[cac:SpecificTendererRequirement/cbc:TendererRequirementTypeCode/@listName='exclusion-grounds-source'][$noticeSubType = '24']">
		<assert id="BR-BT-00806-0070" role="ERROR" diagnostics="ND-TendererQualificationRequestSources_BT-806-Procedure" test="count(cac:SpecificTendererRequirement/cbc:TendererRequirementTypeCode/normalize-space(text())) = count(distinct-values(cac:SpecificTendererRequirement/cbc:TendererRequirementTypeCode/normalize-space(text())))">rule|text|BR-BT-00806-0070</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension[$noticeSubType = '24']">
		<assert id="BR-OPP-00070-0131" role="ERROR" diagnostics="OPP-070-notice" test="(../../../../cbc:NoticeTypeCode/normalize-space(text()) = 'cn-desg')">rule|text|BR-OPP-00070-0131</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Changes/efac:Change[$noticeSubType = '24']">
		<assert id="BR-BT-13716-0133" role="ERROR" diagnostics="ND-Change_BT-13716-notice" test="count(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())) = count(distinct-values(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())))">rule|text|BR-BT-13716-0133</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:SettledContract[$noticeSubType = '24']">
		<assert id="BR-BT-07220-0072" role="ERROR" diagnostics="ND-SettledContract_BT-722-Contract" test="count(efac:Funding/cbc:FundingProgramCode/normalize-space(text())) = count(distinct-values(efac:Funding/cbc:FundingProgramCode/normalize-space(text())))">rule|text|BR-BT-07220-0072</assert>
	</rule>
</pattern>