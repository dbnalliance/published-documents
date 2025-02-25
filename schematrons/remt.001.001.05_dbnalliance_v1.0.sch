<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

    <sch:ns prefix="qdt" uri="urn:iso:std:iso:20022:tech:xsd:remt.001.001.05"/>

    <sch:pattern id="remt.001-001">
        <sch:rule context="qdt:Ustrd">
            <sch:assert test="false()">
                Ustrd is not supported.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-002">
        <sch:rule context="qdt:TaxRmt">
            <sch:assert test="false()">
                TaxRmt is not supported.
            </sch:assert>
        </sch:rule>
    </sch:pattern>


    <sch:pattern id="remt.001-003">
        <sch:rule context="qdt:GrnshmtRmt">
            <sch:assert test="false()">
                GrnshmtRmt is not supported
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-004">
        <sch:rule context="qdt:SplmtryData">
            <sch:assert test="false()">
                SplmtryData is not supported
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-005">
        <sch:rule context="qdt:Othr">
            <sch:assert test="ancestor::qdt:OrgId[parent::qdt:Id[parent::qdt:InitgPty]] and normalize-space(qdt:Id) != ''">
                MsgRcpt Party Id is required and must not be empty.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-006">
        <sch:rule context="qdt:Othr">
            <sch:assert test="ancestor::qdt:OrgId[parent::qdt:Id[parent::qdt:MsgRcpt]] and normalize-space(qdt:Id) != ''">
                MsgRcpt Party Id is required and must not be empty.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-007">
        <sch:rule context="qdt:Strd">
            <sch:assert test="ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]">
                Strd is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-008">
        <sch:rule context="qdt:RfrdDocInf">
            <sch:assert test="ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]">
                RfrdDocInf is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-009">
        <sch:rule context="qdt:Cd">
            <sch:assert test="ancestor::qdt:CdOrPrtry[ancestor::qdt:Tp[ancestor::qdt:RfrdDocInf[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]]]">
                CDorPrty Cd is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-010">
        <sch:rule context="qdt:Nb">
            <sch:assert test="ancestor::qdt:RfrdDocInf[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                Nb is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-011">
        <sch:rule context="qdt:RltdDt">
            <sch:assert test="ancestor::qdt:RfrdDocInf[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                RltdDt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-012">
        <sch:rule context="qdt:RfrdDocAmt">
            <sch:assert test="ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]">
                RfrdDocAmt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-013">
        <sch:rule context="qdt:RmtdAmt">
            <sch:assert test="ancestor::qdt:RfrdDocAmt[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                RfrdDocAmt RmtdAmt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-014">
        <sch:rule context="qdt:InstdAmt">
            <sch:assert test="ancestor::qdt:Amt[ancestor::qdt:OrgnlPmtInf[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                OrgnlPmtInf Amt InstdAmt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-015">
        <sch:rule context="qdt:Dt">
            <sch:assert test="ancestor::qdt:ReqdExctnDt[ancestor::qdt:OrgnlPmtInf[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                OrgnlPmtInf ReqdExctnDt Dt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-016">
        <sch:rule context="qdt:Nm">
            <sch:assert test="ancestor::qdt:Dbtr[ancestor::qdt:OrgnlPmtInf[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                OrgnlPmtInf Dbtr Nm is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-017">
        <sch:rule context="qdt:Nm">
            <sch:assert test="ancestor::qdt:Cdtr[ancestor::qdt:OrgnlPmtInf[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]">
                OrgnlPmtInf Cdtr Nm is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-018">
        <sch:rule context="qdt:Prtry">
            <sch:assert test="ancestor::qdt:SchmeNm[ancestor::qdt:Othr[ancestor::qdt:OrgId[ancestor::qdt:Id[ancestor::qdt:InitgPty[ancestor::qdt:GrpHdr[ancestor::qdt:RmtAdvc]]]]]] and . = 'exchange framework'">
                InitgPty OrdId ScheNm Prtry has to be "exchange framework".
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-019">
        <sch:rule context="qdt:Prtry">
            <sch:assert test="ancestor::qdt:SchmeNm[ancestor::qdt:Othr[ancestor::qdt:OrgId[ancestor::qdt:Id[ancestor::qdt:MsgRcpt[ancestor::qdt:GrpHdr[ancestor::qdt:RmtAdvc]]]]]] and . = 'exchange framework'">
                MsgRcpt OrdId ScheNm Prtry has to be "exchange framework".
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-020">
        <sch:rule context="qdt:Cd">
            <sch:assert test="ancestor::qdt:SchmeNm[ancestor::qdt:Othr[ancestor::qdt:OrgId[ancestor::qdt:Id[ancestor::qdt:InitgPty[ancestor::qdt:GrpHdr[ancestor::qdt:RmtAdvc]]]]]] and . = ''">
                InitgPty OrdId ScheNm Cd is not supported.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-021">
        <sch:rule context="qdt:Cd">
            <sch:assert test="ancestor::qdt:SchmeNm[ancestor::qdt:Othr[ancestor::qdt:OrgId[ancestor::qdt:Id[ancestor::qdt:MsgRcpt[ancestor::qdt:GrpHdr[ancestor::qdt:RmtAdvc]]]]]] and . = ''">
                MsgRcpt OrdId ScheNm Cd is not supported.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-022">
        <sch:rule context="qdt:Ctry">
            <sch:assert test="matches(normalize-space(.), '^(1A|AD|AE|AF|AG|AI|AL|AM|AO|AQ|AR|AS|AT|AU|AW|AX|AZ|BA|BB|BD|BE|BF|BG|BH|BI|BJ|BL|BM|BN|BO|BQ|BR|BS|BT|BV|BW|BY|BZ|CA|CC|CD|CF|CG|CH|CI|CK|CL|CM|CN|CO|CR|CU|CV|CW|CX|CY|CZ|DE|DJ|DK|DM|DO|DZ|EC|EE|EG|EH|ER|ES|ET|FI|FJ|FK|FM|FO|FR|GA|GB|GD|GE|GF|GG|GH|GI|GL|GM|GN|GP|GQ|GR|GS|GT|GU|GW|GY|HK|HM|HN|HR|HT|HU|ID|IE|IL|IM|IN|IO|IQ|IR|IS|IT|JE|JM|JO|JP|KE|KG|KH|KI|KM|KN|KP|KR|KW|KY|KZ|LA|LB|LC|LI|LK|LR|LS|LT|LU|LV|LY|MA|MC|MD|ME|MF|MG|MH|MK|ML|MM|MN|MO|MP|MQ|MR|MS|MT|MU|MV|MW|MX|MY|MZ|NA|NC|NE|NF|NG|NI|NL|NO|NP|NR|NU|NZ|OM|PA|PE|PF|PG|PH|PK|PL|PM|PN|PR|PS|PT|PW|PY|QA|RE|RO|RS|RU|RW|SA|SB|SC|SD|SE|SG|SH|SI|SJ|SK|SL|SM|SN|SO|SR|SS|ST|SV|SX|SY|SZ|TC|TD|TF|TG|TH|TJ|TK|TL|TM|TN|TO|TR|TT|TV|TW|TZ|UA|UG|UM|US|UY|UZ|VA|VC|VE|VG|VI|VN|VU|WF|WS|XI|YE|YT|ZA|ZM|ZW)$')">
                Country codes MUST be valid 2-letter values from ISO 3166.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-023">
        <sch:rule context="//qdt:SchmeNm/qdt:Cd">
            <sch:assert test="matches(normalize-space(.), '^(BANK|CHID|CINC|COID|CUST|DUNS|EMPL|GS1G|TXID)$')">
                Country codes MUST reflect2-digit value from ISO 3166-Country Codes
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-024">
        <sch:rule context="//qdt:DscntApldAmt/qdt:Tp/qdt:Cd">
            <sch:assert test="matches(normalize-space(.), '^(APDS|STDS|TMDS)$')">
                Discount applied amount type code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-025">
        <sch:rule context="//qdt:TaxAmt/qdt:Tp/qdt:Cd">
            <sch:assert test="matches(normalize-space(.), '^(CITY|CNTY|LOCL|PROV|STAT)$')">
                Tax amount type code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-026">
        <sch:rule context="//qdt:LineDtls/qdt:Id/qdt:Tp/qdt:CdOrPrtry/qdt:Cd">
            <sch:assert test="matches(normalize-space(.), '^(ADPI|AISB|ASNB|CTNB|DBSP|EANN|EINB|GSNB|HIBC|ISBN|LTNB|MDNB|PRNB|PTCD|SKNB|STNB|TONB|UPCC|UPNB)$')">
                Line details id type code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-027">
        <sch:rule context="//qdt:LclInstrm/qdt:Cd">
            <sch:assert test="matches(normalize-space(.), '^(TRF|CARD|INST|CCD|CTX|ARC)$')">
                Local instrument code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
