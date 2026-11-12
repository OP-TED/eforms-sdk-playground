<?xml version="1.0" encoding="UTF-8" ?>
<!--File generated from metadata database-->
<pattern id="EFORMS-validation-stage-5-T02" xmlns="http://purl.oclc.org/dsdl/schematron">
	<rule context="/*[$noticeSubType = 'T02']">
		<assert id="BR-BT-00195-0103" role="ERROR" diagnostics="ND-Root_BT-195-notice" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeInformationNondisclosure/efac:NondisclosureReference/efbc:NondisclosureID/normalize-space(text())) = count(distinct-values(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeInformationNondisclosure/efac:NondisclosureReference/efbc:NondisclosureID/normalize-space(text())))">rule|text|BR-BT-00195-0103</assert>
		<assert id="BR-OPT-00200-0151" role="ERROR" diagnostics="ND-Root_OPT-200-Organization-Company" test="count(ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Organizations/efac:Organization/efac:Company/cac:PartyIdentification/cbc:ID[../../../efbc:GroupLeadIndicator = true()]/normalize-space(text())) &lt; 2">rule|text|BR-OPT-00200-0151</assert>
	</rule>
	<rule context="/*/cac:ContractingParty[$noticeSubType = 'T02']">
		<assert id="BR-OPT-00300-0318" role="ERROR" diagnostics="ND-ContractingParty_OPT-300-Procedure-SProvider" test="count(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())) = count(distinct-values(cac:Party/cac:ServiceProviderParty/cac:Party/cac:PartyIdentification/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00300-0318</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject[$noticeSubType = 'T02']">
		<assert id="BR-BT-00263-0207" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-263-Procedure" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0207</assert>
		<assert id="BR-BT-00531-0209" role="ERROR" diagnostics="ND-ProcedureProcurementScope_BT-531-Procedure" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0209</assert>
		<assert id="BR-OPP-00040-0055" role="ERROR" diagnostics="ND-ProcedureProcurementScope_OPP-040-Procedure" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='transport-service']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='transport-service']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-OPP-00040-0055</assert>
	</rule>
	<rule context="/*/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = 'T02']">
		<assert id="BR-BT-00262-0455" role="ERROR" diagnostics="BT-262-Procedure" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0455</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot'][$noticeSubType = 'T02']">
		<assert id="BR-BT-00137-0235" role="ERROR" diagnostics="BT-137-Lot" test="((cbc:ID/normalize-space(text()) = ../ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:LotResult/efac:TenderLot/cbc:ID/normalize-space(text()))) or not(../ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:LotResult/efac:TenderLot/cbc:ID)">rule|text|BR-BT-00137-0235</assert>
		<assert id="BR-BT-00735-0112" role="ERROR" diagnostics="ND-Lot_BT-735-Lot" test="count(cac:TenderingTerms/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:StrategicProcurement[efbc:ApplicableLegalBasis/@listName='cvd-scope']/efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/normalize-space(text())) = count(distinct-values(cac:TenderingTerms/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:StrategicProcurement[efbc:ApplicableLegalBasis/@listName='cvd-scope']/efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/normalize-space(text())))">rule|text|BR-BT-00735-0112</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject[$noticeSubType = 'T02']">
		<assert id="BR-BT-00263-0161" role="ERROR" diagnostics="ND-LotProcurementScope_BT-263-Lot" test="count(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())) = count(distinct-values(cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text())))">rule|text|BR-BT-00263-0161</assert>
		<assert id="BR-BT-00531-0163" role="ERROR" diagnostics="ND-LotProcurementScope_BT-531-Lot" test="count(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())) = count(distinct-values(cac:ProcurementAdditionalType[cbc:ProcurementTypeCode/@listName='contract-nature']/cbc:ProcurementTypeCode/normalize-space(text())))">rule|text|BR-BT-00531-0163</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = 'T02']">
		<assert id="BR-BT-00262-0357" role="ERROR" diagnostics="BT-262-Lot" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0357</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Lot']/cac:TenderingTerms[$noticeSubType = 'T02']">
		<assert id="BR-OPT-00071-0053" role="ERROR" diagnostics="ND-LotTenderingTerms_OPT-071-Lot" test="count(cac:ContractExecutionRequirement[cbc:ExecutionRequirementCode/@listName='customer-service']/cbc:ExecutionRequirementCode/normalize-space(text())) = count(distinct-values(cac:ContractExecutionRequirement[cbc:ExecutionRequirementCode/@listName='customer-service']/cbc:ExecutionRequirementCode/normalize-space(text())))">rule|text|BR-OPT-00071-0053</assert>
	</rule>
	<rule context="/*/cac:ProcurementProjectLot[cbc:ID/@schemeName='Part']/cac:ProcurementProject/cac:MainCommodityClassification[$noticeSubType = 'T02']">
		<assert id="BR-BT-00262-0406" role="ERROR" diagnostics="BT-262-Part" test="(not(cbc:ItemClassificationCode/normalize-space(text()) = ../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode/normalize-space(text()))) or not((cbc:ItemClassificationCode) and (../cac:AdditionalCommodityClassification/cbc:ItemClassificationCode))">rule|text|BR-BT-00262-0406</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension[$noticeSubType = 'T02']">
		<assert id="BR-OPP-00070-0106" role="ERROR" diagnostics="OPP-070-notice" test="(../../../../cbc:NoticeTypeCode/normalize-space(text()) = 'can-tran')">rule|text|BR-OPP-00070-0106</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Changes/efac:Change[$noticeSubType = 'T02']">
		<assert id="BR-BT-13716-0108" role="ERROR" diagnostics="ND-Change_BT-13716-notice" test="count(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())) = count(distinct-values(efac:ChangedSection/efbc:ChangedSectionIdentifier/normalize-space(text())))">rule|text|BR-BT-13716-0108</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeInformationNondisclosure/efbc:InformationDisclosureDate[$noticeSubType = 'T02']">
		<assert id="BR-BT-00198-0119" role="ERROR" test="(boolean(for $T in (current-date()) return ($T + xs:dayTimeDuration(./xs:date(text()) - ../../../../../../cbc:IssueDate/xs:date(text())) &lt; $T + xs:yearMonthDuration('P5Y')))) and (boolean(for $T in (current-date()) return ($T + xs:dayTimeDuration(./xs:date(text()) - ../../../../../../cbc:IssueDate/xs:date(text())) >= $T + xs:dayTimeDuration('P2D'))))">rule|text|BR-BT-00198-0119</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:LotResult[$noticeSubType = 'T02']">
		<assert id="BR-BT-00142-0055" role="ERROR" diagnostics="BT-142-LotResult" test="cbc:TenderResultCode/normalize-space(text()) = 'selec-w'">rule|text|BR-BT-00142-0055</assert>
		<assert id="BR-BT-00735-0142" role="ERROR" diagnostics="ND-LotResult_BT-735-LotResult" test="count(efac:StrategicProcurement[efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/@listName='cvd-contract-type']/efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/normalize-space(text())) = count(distinct-values(efac:StrategicProcurement[efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/@listName='cvd-contract-type']/efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/normalize-space(text())))">rule|text|BR-BT-00735-0142</assert>
		<assert id="BR-OPT-00315-0104" role="ERROR" diagnostics="ND-LotResult_OPT-315-LotResult" test="count(efac:SettledContract/cbc:ID/normalize-space(text())) = count(distinct-values(efac:SettledContract/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00315-0104</assert>
		<assert id="BR-OPT-00320-0106" role="ERROR" diagnostics="ND-LotResult_OPT-320-LotResult" test="count(efac:LotTender/cbc:ID/normalize-space(text())) = count(distinct-values(efac:LotTender/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00320-0106</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:LotResult/efac:StrategicProcurement[efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/@listName='cvd-contract-type']/efac:StrategicProcurementInformation[$noticeSubType = 'T02']">
		<assert id="BR-BT-00723-0057" role="ERROR" diagnostics="ND-StrategicProcurementInformationLotResult_BT-723-LotResult" test="count(efac:ProcurementDetails/efbc:AssetCategoryCode/normalize-space(text())) = count(distinct-values(efac:ProcurementDetails/efbc:AssetCategoryCode/normalize-space(text())))">rule|text|BR-BT-00723-0057</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:LotResult/efac:StrategicProcurement[efac:StrategicProcurementInformation/efbc:ProcurementCategoryCode/@listName='cvd-contract-type']/efac:StrategicProcurementInformation/efac:ProcurementDetails[$noticeSubType = 'T02']">
		<assert id="BR-OPT-00155-0057" role="ERROR" diagnostics="ND-ProcurementDetailsLotResult_OPT-155-LotResult" test="count(efac:StrategicProcurementStatistics/efbc:StatisticsCode/normalize-space(text())) = count(distinct-values(efac:StrategicProcurementStatistics/efbc:StatisticsCode/normalize-space(text())))">rule|text|BR-OPT-00155-0057</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:LotTender[$noticeSubType = 'T02']">
		<assert id="BR-OPP-00030-0053" role="ERROR" diagnostics="ND-LotTender_OPP-030-Tender" test="count(efac:ContractTerm[not(efbc:TermCode/text()='all-rev-tic')][efbc:TermCode/@listName='contract-detail']/efbc:TermCode/normalize-space(text())) = count(distinct-values(efac:ContractTerm[not(efbc:TermCode/text()='all-rev-tic')][efbc:TermCode/@listName='contract-detail']/efbc:TermCode/normalize-space(text())))">rule|text|BR-OPP-00030-0053</assert>
		<assert id="BR-OPT-00321-0112" role="ERROR" diagnostics="OPT-321-Tender" test="(cbc:ID/normalize-space(text()) = ../efac:LotResult/efac:LotTender/cbc:ID/normalize-space(text()))">rule|text|BR-OPT-00321-0112</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:SettledContract[$noticeSubType = 'T02']">
		<assert id="BR-BT-00145-0138" role="ERROR" diagnostics="BT-145-Contract" test="(cbc:IssueDate/xs:date(text()) &lt;= ../../../../../../cbc:IssueDate/xs:date(text())) or not((cbc:IssueDate) and (../../../../../../cbc:IssueDate))">rule|text|BR-BT-00145-0138</assert>
		<assert id="BR-BT-03202-0106" role="ERROR" diagnostics="ND-SettledContract_BT-3202-Contract" test="count(efac:LotTender/cbc:ID/normalize-space(text())) = count(distinct-values(efac:LotTender/cbc:ID/normalize-space(text())))">rule|text|BR-BT-03202-0106</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:TenderingParty[$noticeSubType = 'T02']">
		<assert id="BR-OPT-00301-1549" role="ERROR" diagnostics="ND-TenderingParty_OPT-301-Tenderer-SubCont" test="count(efac:SubContractor/cbc:ID/normalize-space(text())) = count(distinct-values(efac:SubContractor/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00301-1549</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:NoticeResult/efac:TenderingParty/efac:SubContractor[$noticeSubType = 'T02']">
		<assert id="BR-OPT-00301-1529" role="ERROR" diagnostics="ND-SubContractor_OPT-301-Tenderer-MainCont" test="count(efac:MainContractor/cbc:ID/normalize-space(text())) = count(distinct-values(efac:MainContractor/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00301-1529</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Organizations/efac:Organization[$noticeSubType = 'T02']">
		<assert id="BR-OPT-00302-0103" role="ERROR" diagnostics="ND-Organization_OPT-302-Organization" test="count(efac:UltimateBeneficialOwner/cbc:ID/normalize-space(text())) = count(distinct-values(efac:UltimateBeneficialOwner/cbc:ID/normalize-space(text())))">rule|text|BR-OPT-00302-0103</assert>
	</rule>
	<rule context="/*/ext:UBLExtensions/ext:UBLExtension/ext:ExtensionContent/efext:EformsExtension/efac:Organizations/efac:UltimateBeneficialOwner[$noticeSubType = 'T02']">
		<assert id="BR-BT-00706-0072" role="ERROR" diagnostics="ND-UBO_BT-706-UBO" test="count(efac:Nationality/cbc:NationalityID/normalize-space(text())) = count(distinct-values(efac:Nationality/cbc:NationalityID/normalize-space(text())))">rule|text|BR-BT-00706-0072</assert>
	</rule>
</pattern>