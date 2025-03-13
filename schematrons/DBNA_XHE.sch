<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns prefix="xhe" uri="http://docs.oasis-open.org/bdxr/ns/XHE/1/ExchangeHeaderEnvelope"/>
    <sch:ns prefix="xha" uri="http://docs.oasis-open.org/bdxr/ns/XHE/1/AggregateComponents"/>
    <sch:ns prefix="xhb" uri="http://docs.oasis-open.org/bdxr/ns/XHE/1/BasicComponents"/>
    
    <!-- Validate the root element -->
    <sch:pattern id="validate-root">
        <sch:rule context="/">
            <sch:assert test="/*">
                The root element is missing.
            </sch:assert>
        </sch:rule>
        <sch:rule context="/*">
            <sch:assert test="contains(local-name(), 'XHE')">
                The root element is not XHE.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the XHEVersionID element -->
    <sch:pattern id="validate-xhe-version">
        <sch:rule context="xhe:XHE">            
            <sch:assert test="xhb:XHEVersionID">
                xhb:XHEVersionID element is missing.
            </sch:assert>                
        </sch:rule>
        <sch:rule context="xhb:XHEVersionID[1]">            
            <sch:assert test="(. = '1.0')">
                xhb:XHEVersionID value is not 1.0.
            </sch:assert>                
        </sch:rule>
    </sch:pattern>

    <!-- Validate the CustomizationID element -->
    <sch:pattern id="validate-customization-id">
        <sch:rule context="xhe:XHE">
            <sch:assert test="xhb:CustomizationID">
                The xhb:CustomizationID element is missing.
            </sch:assert>
        </sch:rule>
        <sch:rule context="xhe:XHE/xhb:CustomizationID[1]">
            <sch:assert test=". = 'http://docs.oasis-open.org/bdxr/ns/XHE/1/ExchangeHeaderEnvelope::XHE##dbnalliance-envelope-1.0'">
                The xhb:CustomizationID value is not http://docs.oasis-open.org/bdxr/ns/XHE/1/ExchangeHeaderEnvelope::XHE##dbnalliance-envelope-1.0.
            </sch:assert>
            <sch:assert test="@schemeID = 'bdx-docid-qns'">
                The xhb:CustomizationID schemeID value is not bdx-docid-qns.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the ProfileID element -->  
    <sch:pattern id="validate-profile-id">
        <sch:rule context="xhe:XHE">
            <sch:assert test="xhb:ProfileID">
                The xhb:ProfileID element is missing.
            </sch:assert>
        </sch:rule>
        <sch:rule context="xhe:XHE/xhb:ProfileID[1]">
            <sch:assert test="(. = 'dbnalliance-envelope-1.0')">
                The xhb:ProfileID value is not dbnalliance-envelope-1.0.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- Validate the Header element -->
    <sch:pattern id="validate-header">
        <sch:rule context="xhe:XHE">
            <sch:assert test="xha:Header">
                The xha:Header element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the Header ID element -->
    <sch:pattern id="validate-header-id">
        <sch:rule context="xhe:XHE/xha:Header">
            <sch:assert test="xhb:ID">
                The xha:Header xhb:ID element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the CreationDateTime element of the Header element -->
    <sch:pattern id="validate-creation-date-time">
        <sch:rule context="xhe:XHE/xha:Header">
            <sch:assert test="xhb:CreationDateTime">
                The xha:Header xhb:CreationDateTime element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the FromParty element of the Header element -->
    <sch:pattern id="validate-from-party">
        <sch:rule context="xhe:XHE/xha:Header">
            <sch:assert test="xha:FromParty">
                The xha:FromParty element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the FromParty PartyIdentification element of the Header element -->
    <sch:pattern id="validate-from-party-identification">
        <sch:rule context="xhe:XHE/xha:Header/xha:FromParty">
            <sch:assert test="xha:PartyIdentification">
                The xha:FromParty xha:PartyIdentification element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the ID element of the PartyIdentification element -->
    <sch:pattern id="validate-from-party-identification-id">
        <sch:rule context="xhe:XHE/xha:Header/xha:FromParty/xha:PartyIdentification">
            <sch:assert test="xhb:ID">
                The xha:FromParty xha:PartyIdentification xhb:ID element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the uniqueness of Header ID and FromParty ID elements -->
    <sch:pattern id="validate-unique-ids">
        <sch:rule context="xhe:XHE/xha:Header">
            <sch:assert test="xhb:ID and xha:FromParty/xha:PartyIdentification/xhb:ID and xhb:ID != xha:FromParty/xha:PartyIdentification/xhb:ID">
                The xha:Header xhb:ID and xha:FromParty ID values must be unique.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the ToParty element of the Header element -->
    <sch:pattern id="validate-to-party">
        <sch:rule context="xhe:XHE/xha:Header">
            <sch:assert test="xha:ToParty">
                The xha:ToParty element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the PartyIdentification element of the ToParty element -->
    <sch:pattern id="validate-to-party-identification">
        <sch:rule context="xhe:XHE/xha:Header/xha:ToParty">
            <sch:assert test="xha:PartyIdentification">
                The xha:ToParty xha:PartyIdentification element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the ID element of the PartyIdentification element -->
    <sch:pattern id="validate-to-party-id">
        <sch:rule context="xhe:XHE/xha:Header/xha:ToParty/xha:PartyIdentification">
            <sch:assert test="xhb:ID">
                The xha:ToParty xha:PartyIdentification xhb:ID element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the Payloads element -->
    <sch:pattern id="validate-payloads">
        <sch:rule context="xhe:XHE">
            <sch:assert test="xha:Payloads">
                The xha:Payloads element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the Payload element of the Payloads element -->
    <sch:pattern id="validate-payload">
        <sch:rule context="xhe:XHE/xha:Payloads">
            <sch:assert test="xha:Payload">
                The xha:Payload element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the ContentTypeCode element of the Payload element -->
    <sch:pattern id="validate-content-type-code">
        <sch:rule context="xhe:XHE/xha:Payloads/xha:Payload/xhb:ContentTypeCode">
            <sch:assert test="(. = 'application/xml')">
                The xhb:ContentTypeCode value is not application/xml.
            </sch:assert>
            <sch:assert test="(not(@listID) or @listID = 'MIME')">
                The xhb:ContentTypeCode listID value is not MIME.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the CustomizationID element of the Payload element -->
    <sch:pattern id="validate-payload-customization-id">
        <sch:rule context="xhe:XHE/xha:Payloads/xha:Payload">
            <sch:assert test="xhb:CustomizationID">
                The xhb:CustomizationID element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the ProfileID element of the Payload element -->
    <sch:pattern id="validate-payload-profile-id">
        <sch:rule context="xhe:XHE/xha:Payloads/xha:Payload">
            <sch:assert test="xhb:ProfileID">
                The xha:Payload xhb:ProfileID element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the InstanceEncryptionIndicator element of the Payload element -->
    <sch:pattern id="validate-instance-encryption-indicator">
        <sch:rule context="xhe:XHE/xha:Payloads/xha:Payload">
            <sch:assert test="xhb:InstanceEncryptionIndicator">
                The xhb:InstanceEncryptionIndicator element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>    

    <!-- Validate the InstanceHashValue element -->
    <sch:pattern id="validate-instance-hash-value">
        <sch:rule context="xhe:XHE/xha:Payloads/xha:Payload/xhb:InstanceHashValue">
            <sch:assert test="not(.)">
                The xha:Payload xhb:InstanceHashValue element cannot be present.
            </sch:assert>
        </sch:rule>
    </sch:pattern>

    <!-- Validate the PayloadContent element -->
    <sch:pattern id="validate-payload-content">
        <sch:rule context="xhe:XHE/xha:Payloads/xha:Payload/xha:PayloadContent">
            <sch:assert test=".">
                The xha:Payload xha:PayloadContent element is missing.
            </sch:assert>
        </sch:rule>
    </sch:pattern>    
    
</sch:schema>