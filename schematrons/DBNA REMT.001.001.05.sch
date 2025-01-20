<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns prefix="qdt" uri="urn:iso:std:iso:20022:tech:xsd:remt.001.001.05"/>

    <sch:pattern id="remt.001-001">
        <sch:rule context="qdt:Ustrd[1]">
            <sch:assert test="qdt:Ustrd[1]">Ustrd is not Supported</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-002">
        <sch:rule context="qdt:TaxRmt[1]">
            <sch:assert test="(. = '')">TaxRmt is not Supported</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-003">
        <sch:rule context="qdt:GrnshmtRmt[1]">
            <sch:assert test="(. = '')">GrnshmtRmt is not Supported</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-004">
        <sch:rule context="qdt:SplmtryData[1]">
            <sch:assert test="(. = '')">SplmtryData is not Supported</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-005">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:InitgPty[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[1]/qdt:Id[1]">
            <sch:report test="(. = '')">InitgPty Party Id is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-006">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:MsgRcpt[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[1]/qdt:Id[1]">
            <sch:report test="(. = '')">MsgRcpt Party Id is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-007">
        <sch:rule context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]">
            <sch:report test="(. = '')">RmtInf is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-008">
        <sch:rule context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:Strd[1]">
            <sch:report test="(. = '')">Strd is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-009">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:Strd[1]/qdt:RfrdDocInf[1]/qdt:Tp[1]/qdt:CdOrPrtry[1]/qdt:Cd[1]">
            <sch:report test="(. = '')">CDorPrty Cd is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-010">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:Strd[1]/qdt:RfrdDocInf[1]/qdt:Nb[1]">
            <sch:report test="(. = '')">Nb is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-011">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:Strd[1]/qdt:RfrdDocInf[1]/qdt:RltdDt[1]">
            <sch:report test="(. = '')">RltdDt is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-012">
        <sch:rule context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:Strd[1]/qdt:RfrdDocAmt[1]">
            <sch:report test="(. = '')">RfrdDocAmt is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-013">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:Strd[1]/qdt:RfrdDocAmt[1]/qdt:RmtdAmt[1]">
            <sch:report test="(. = '')">RfrdDocAmt RmtdAmt is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-014">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:OrgnlPmtInf[1]/qdt:Amt[1]/qdt:InstdAmt[1]">
            <sch:report test="(. = '')">OrgnlPmtInf Amt InstdAmt is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-015">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:OrgnlPmtInf[1]/qdt:ReqdExctnDt[1]/qdt:Dt[1]">
            <sch:report test="(. = '')">OrgnlPmtInf ReqdExctnDt Dt is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-016">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:OrgnlPmtInf[1]/qdt:Dbtr[1]/qdt:Nm[1]">
            <sch:report test="(. = '')">OrgnlPmtInf Dbtr Nm is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-017">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:OrgnlPmtInf[1]/qdt:Cdtr[1]/qdt:Nm[1]">
            <sch:report test="(. = '')">OrgnlPmtInf Cdtr Nm is required</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-018">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:InitgPty[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[1]/qdt:SchmeNm[1]/qdt:Prtry[1]">
            <sch:report test="(. = 'exchange framework')">InitgPty OrdId ScheNm Prtry has to be
                xchange framework</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-019">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:MsgRcpt[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[1]/qdt:SchmeNm[1]/qdt:Prtry[1]">
            <sch:report test="(. = 'exchange framework')">MsgRcpt OrdId ScheNm Prtry has to be
                xchange framework</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-020">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:InitgPty[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[1]/qdt:SchmeNm[1]/qdt:Cd[1]">
            <sch:report test="(. = '')">InitgPty OrdId ScheNm Cd is not supported</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-021">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:MsgRcpt[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[1]/qdt:SchmeNm[1]/qdt:Cd[1]">
            <sch:report test="(. = '')">MsgRcpt OrdId ScheNm Cd is not supported</sch:report>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-022">
        <sch:rule
            context="qdt:Document/qdt:RmtAdvc[1]/qdt:RmtInf[1]/qdt:OrgnlPmtInf[1]/qdt:PmtTpInf[1]/qdt:LclInstrm[1]/qdt:Cd[1]">
            <sch:report test="(. = '')">OrgnlPmtInf LclInstrm Cd is not supported</sch:report>
        </sch:rule>
    </sch:pattern>

    <!-- This two patternns are debug, set the MsgId[1] value to anything but 2.3 and see the failure, this will show the schematron is in use properly
 
    <sch:pattern  id="remt.001-CW1">
        <sch:rule context="qdt:MsgId[1]">            
            <sch:assert test="(. = '2.3')">CW Check MsgId must equal '2.3'</sch:assert>                
        </sch:rule>
    </sch:pattern>
    
    Check for a required field.
    
    <sch:pattern id="remt.001-CW2">
        <sch:rule context="qdt:Document/qdt:RmtAdvc[1]/qdt:GrpHdr[1]/qdt:MsgRcpt[1]/qdt:Id[1]/qdt:OrgId[1]/qdt:Othr[2]/qdt:SchmeNm[1]/qdt:Prtry[1]">            
            <sch:report test="(. = '')">CW Test 2 MsgRcpt Party Id is required</sch:report>                
        </sch:rule>
    </sch:pattern>  -->

</sch:schema>
