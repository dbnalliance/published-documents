<?xml version="1.0" encoding="UTF-8"?>
<sch:schema
    xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns prefix="qdt" uri="urn:iso:std:iso:20022:tech:xsd:remt.001.001.05"/>

    <sch:pattern id="remt.001-001">
        <sch:rule context="qdt:Ustrd" flag="fatal">
            <sch:assert test="false()" id="remt.001-001-001" flag="fatal">
                Ustrd is not supported.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-002">
        <sch:rule context="qdt:TaxRmt" flag="fatal">
            <sch:assert test="false()" id="remt.001-002-001" flag="fatal">
                TaxRmt is not supported.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-003">
        <sch:rule context="qdt:GrnshmtRmt" flag="fatal">
            <sch:assert test="false()" id="remt.001-003-001" flag="fatal">
                GrnshmtRmt is not supported
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-004">
        <sch:rule context="qdt:SplmtryData" flag="fatal">
            <sch:assert test="false()" id="remt.001-004-001" flag="fatal">
                SplmtryData is not supported
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-005">
        <sch:rule context="qdt:InitgPty/qdt:Id/qdt:OrgId/qdt:Othr" flag="fatal">
            <sch:assert test="normalize-space(qdt:Id) != ''" id="remt.001-005-001" flag="fatal">
                InitgPty Party Id is required and must not be empty.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-006">
        <sch:rule context="qdt:MsgRcpt/qdt:Id/qdt:OrgId/qdt:Othr" flag="fatal">
            <sch:assert test="normalize-space(qdt:Id) != ''" id="remt.001-006-001" flag="fatal">
                MsgRcpt Party Id is required and must not be empty.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-007">
        <sch:rule context="qdt:Strd" flag="fatal">
            <sch:assert test="ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]" id="remt.001-007-001" flag="fatal">
                Strd is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-008">
        <sch:rule context="qdt:RfrdDocInf" flag="fatal">
            <sch:assert test="ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]" id="remt.001-008-001" flag="fatal">
                RfrdDocInf is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-009">
        <sch:rule context="qdt:Cd" flag="fatal">
            <sch:assert test="ancestor::qdt:CdOrPrtry[ancestor::qdt:Tp[ancestor::qdt:RfrdDocInf[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]]]" id="remt.001-009-001" flag="fatal">
                CDorPrty Cd is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-010">
        <sch:rule context="qdt:Nb" flag="fatal">
            <sch:assert test="ancestor::qdt:RfrdDocInf[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]" id="remt.001-010-001" flag="fatal">
                Nb is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-011">
        <sch:rule context="qdt:RltdDt" flag="fatal">
            <sch:assert test="ancestor::qdt:RfrdDocInf[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]" id="remt.001-011-001" flag="fatal">
                RltdDt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-012">
        <sch:rule context="qdt:RfrdDocAmt" flag="fatal">
            <sch:assert test="ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]" id="remt.001-012-001" flag="fatal">
                RfrdDocAmt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-013">
        <sch:rule context="qdt:RmtdAmt" flag="fatal">
            <sch:assert test="ancestor::qdt:RfrdDocAmt[ancestor::qdt:Strd[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]" id="remt.001-013-001" flag="fatal">
                RfrdDocAmt RmtdAmt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-014">
        <sch:rule context="qdt:InstdAmt" flag="fatal">
            <sch:assert test="ancestor::qdt:Amt[ancestor::qdt:OrgnlPmtInf[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]" id="remt.001-014-001" flag="fatal">
                OrgnlPmtInf Amt InstdAmt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-015">
        <sch:rule context="qdt:Dt" flag="fatal">
            <sch:assert test="ancestor::qdt:ReqdExctnDt[ancestor::qdt:OrgnlPmtInf[ancestor::qdt:RmtInf[ancestor::qdt:RmtAdvc]]]" id="remt.001-015-001" flag="fatal">
                OrgnlPmtInf ReqdExctnDt Dt is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-016">
        <sch:rule context="qdt:RmtAdvc/qdt:RmtInf/qdt:OrgnlPmtInf/qdt:Dbtr" flag="fatal">
            <sch:assert test="qdt:Nm" id="remt.001-016-001" flag="fatal">
                OrgnlPmtInf Dbtr Nm is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-017">
        <sch:rule context="qdt:RmtAdvc/qdt:RmtInf/qdt:OrgnlPmtInf/qdt:Cdtr" flag="fatal">
            <sch:assert test="qdt:Nm" id="remt.001-017-001" flag="fatal">
                OrgnlPmtInf Cdtr Nm is required.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-018">
        <sch:rule context="qdt:InitgPty/qdt:Id/qdt:OrgId/qdt:Othr/qdt:SchmeNm" flag="fatal">
            <sch:assert test="normalize-space(qdt:Prtry) = 'exchange framework'" id="remt.001-018-001" flag="fatal">
                InitgPty OrdId ScheNm Prtry has to be "exchange framework".
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-019">
        <sch:rule context="qdt:MsgRcpt/qdt:Id/qdt:OrgId/qdt:Othr/qdt:SchmeNm" flag="fatal">
            <sch:assert test="normalize-space(qdt:Prtry) = 'exchange framework'" id="remt.001-019-001" flag="fatal">
                MsgRcpt OrdId ScheNm Prtry has to be "exchange framework".
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-020">
        <sch:rule context="qdt:InitgPty/qdt:Id/qdt:OrgId/qdt:Othr/qdt:SchmeNm/qdt:Cd" flag="fatal">
            <sch:assert test="normalize-space(.) = ''" id="remt.001-020-001" flag="fatal">
                InitgPty OrgId SchmeNm Cd is not supported and must be empty.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-021">
        <sch:rule context="qdt:MsgRcpt/qdt:Id/qdt:OrgId/qdt:Othr/qdt:SchmeNm/qdt:Cd" flag="fatal">
            <sch:assert test="normalize-space(.) = ''" id="remt.001-021-001" flag="fatal">
                MsgRcpt OrgId SchmeNm Cd is not supported and must be empty.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-022">
        <sch:rule context="qdt:Ctry" flag="fatal">
            <sch:assert test="matches(normalize-space(.), '^(1A|AD|AE|AF|AG|AI|AL|AM|AO|AQ|AR|AS|AT|AU|AW|AX|AZ|BA|BB|BD|BE|BF|BG|BH|BI|BJ|BL|BM|BN|BO|BQ|BR|BS|BT|BV|BW|BY|BZ|CA|CC|CD|CF|CG|CH|CI|CK|CL|CM|CN|CO|CR|CU|CV|CW|CX|CY|CZ|DE|DJ|DK|DM|DO|DZ|EC|EE|EG|EH|ER|ES|ET|FI|FJ|FK|FM|FO|FR|GA|GB|GD|GE|GF|GG|GH|GI|GL|GM|GN|GP|GQ|GR|GS|GT|GU|GW|GY|HK|HM|HN|HR|HT|HU|ID|IE|IL|IM|IN|IO|IQ|IR|IS|IT|JE|JM|JO|JP|KE|KG|KH|KI|KM|KN|KP|KR|KW|KY|KZ|LA|LB|LC|LI|LK|LR|LS|LT|LU|LV|LY|MA|MC|MD|ME|MF|MG|MH|MK|ML|MM|MN|MO|MP|MQ|MR|MS|MT|MU|MV|MW|MX|MY|MZ|NA|NC|NE|NF|NG|NI|NL|NO|NP|NR|NU|NZ|OM|PA|PE|PF|PG|PH|PK|PL|PM|PN|PR|PS|PT|PW|PY|QA|RE|RO|RS|RU|RW|SA|SB|SC|SD|SE|SG|SH|SI|SJ|SK|SL|SM|SN|SO|SR|SS|ST|SV|SX|SY|SZ|TC|TD|TF|TG|TH|TJ|TK|TL|TM|TN|TO|TR|TT|TV|TW|TZ|UA|UG|UM|US|UY|UZ|VA|VC|VE|VG|VI|VN|VU|WF|WS|XI|YE|YT|ZA|ZM|ZW)$')" id="remt.001-022-001" flag="fatal">
                Country codes MUST be valid 2-letter values from ISO 3166.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-023">
        <sch:rule context="//qdt:SchmeNm/qdt:Cd" flag="fatal">
            <sch:assert test="matches(normalize-space(.), '^(BANK|CHID|CINC|COID|CUST|DUNS|EMPL|GS1G|TXID)$')" id="remt.001-023-001" flag="fatal">
                Country codes MUST reflect2-digit value from ISO 3166-Country Codes
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-024">
        <sch:rule context="//qdt:DscntApldAmt/qdt:Tp/qdt:Cd" flag="fatal">
            <sch:assert test="matches(normalize-space(.), '^(APDS|STDS|TMDS)$')" id="remt.001-024-001" flag="fatal">
                Discount applied amount type code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-025">
        <sch:rule context="//qdt:TaxAmt/qdt:Tp/qdt:Cd" flag="fatal">
            <sch:assert test="matches(normalize-space(.), '^(CITY|CNTY|LOCL|PROV|STAT)$')" id="remt.001-025-001" flag="fatal">
                Tax amount type code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-026">
        <sch:rule context="//qdt:LineDtls/qdt:Id/qdt:Tp/qdt:CdOrPrtry/qdt:Cd" flag="fatal">
            <sch:assert test="matches(normalize-space(.), '^(ADPI|AISB|ASNB|CTNB|DBSP|EANN|EINB|GSNB|HIBC|ISBN|LTNB|MDNB|PRNB|PTCD|SKNB|STNB|TONB|UPCC|UPNB)$')" id="remt.001-026-001" flag="fatal">
                Line details id type code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="remt.001-027">
        <sch:rule context="//qdt:LclInstrm/qdt:Cd" flag="fatal">
            <sch:assert test="matches(normalize-space(.), '^(TRF|CARD|INST|CCD|CTX|ARC)$')" id="remt.001-027-001" flag="fatal">
                Local instrument code must match the codelist
            </sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
