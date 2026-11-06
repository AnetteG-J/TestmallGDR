# Stockholm Genomic ProcedureLaboratory Process - Region Stockholms testmall implementationsguide FHIR v0.1.0

## Resursprofil: Stockholm Genomic ProcedureLaboratory Process 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/RegionStockholmGDR|current/StructureDefinition/stockholm-genomic-procedure-laboratory-process)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Procedure](http://hl7.org/fhir/R4/procedure.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [Procedure](http://hl7.org/fhir/R4/procedure.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Procedure](http://hl7.org/fhir/R4/procedure.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-stockholm-genomic-procedure-laboratory-process.csv), [Excel](../StructureDefinition-stockholm-genomic-procedure-laboratory-process.xlsx), [Schematron](../StructureDefinition-stockholm-genomic-procedure-laboratory-process.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stockholm-genomic-procedure-laboratory-process",
  "url" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/stockholm-genomic-procedure-laboratory-process",
  "version" : "0.1.0",
  "name" : "StockholmGenomicProcedureLaboratoryProcess",
  "title" : "Stockholm Genomic ProcedureLaboratory Process",
  "status" : "draft",
  "date" : "2026-11-06T14:31:26+00:00",
  "publisher" : "Region Stockholm",
  "contact" : [{
    "name" : "Region Stockholm",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.regionstockholm.se"
    }]
  }],
  "description" : "Represents the laboratory phase of a genomic case and ties together library preparation and nucleic acid sequencing for a specimen. A single genomic study can include multiple laboratory process instances.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "purpose" : "The purpse of this profile is to link and represent the laboratory phase of the genomic study together, which includes the library preparation and Nucleic Acid Sequencing.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.instantiatesCanonical",
      "path" : "Procedure.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "Procedure.instantiatesUri",
      "path" : "Procedure.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "Procedure.category.coding",
      "path" : "Procedure.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category.coding.system",
      "path" : "Procedure.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Procedure.category.coding.code",
      "path" : "Procedure.category.coding.code",
      "min" : 1,
      "fixedCode" : "108252007"
    },
    {
      "id" : "Procedure.category.coding.display",
      "path" : "Procedure.category.coding.display",
      "min" : 1,
      "fixedString" : "Laboratory procedure (procedure)"
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "definition" : "The performer is the organization that is responsible for the procedure. In this case, the laboratory that performs the laboratory process.",
      "requirements" : "The procedure must be linked to the organization that performed the analysis, typically a laboratory. This can be done with a reference to an Organization resource or with an identifier for the organization if a reference is not possible.",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor.type",
      "path" : "Procedure.performer.actor.type",
      "fixedUri" : "Organization"
    },
    {
      "id" : "Procedure.performer.actor.identifier",
      "path" : "Procedure.performer.actor.identifier",
      "comment" : "Identifier must be used when a reference to an organisation resource is not possible"
    },
    {
      "id" : "Procedure.performer.actor.identifier.system",
      "path" : "Procedure.performer.actor.identifier.system",
      "comment" : "Currently, a local system URL (e.g. http://gmck.se/clarity-lims) is used as the identifier for the laboratory. When HSA-ID/kombika is available, e.g. urn:oid:1.2.752.29.4.71 should be used.",
      "min" : 1
    },
    {
      "id" : "Procedure.performer.actor.identifier.value",
      "path" : "Procedure.performer.actor.identifier.value",
      "min" : 1
    },
    {
      "id" : "Procedure.performer.actor.display",
      "path" : "Procedure.performer.actor.display",
      "comment" : "Can be set automatically to the laboratory's organization when possible. Otherwise, it may be left blank."
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "definition" : "The organization the device or practitioner was acting on behalf of. Note that if this element is empty, the perfomer procedure profile is used.",
      "comment" : "onBehalfOf should be used to point to the requester of the laboratory process, as long as no structured referral is available. If there is a reference to a serviceRequest, then the requester should be described in the serviceRequest instead.",
      "requirements" : "The procedure should be linked to the organization that requested the laboratory process, typically another diagnostic unit. This can be done with a reference to an Organization resource or with an identifier for the organization if a reference is not possible.",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.onBehalfOf.type",
      "path" : "Procedure.performer.onBehalfOf.type",
      "fixedUri" : "Organization"
    },
    {
      "id" : "Procedure.performer.onBehalfOf.identifier",
      "path" : "Procedure.performer.onBehalfOf.identifier",
      "comment" : "Identifier must be used when a reference to an organisation resource is not possible"
    },
    {
      "id" : "Procedure.performer.onBehalfOf.identifier.system",
      "path" : "Procedure.performer.onBehalfOf.identifier.system",
      "comment" : "The requester is assigned a serial number (cust001 and upwards) which is specified as text. A system URL representing the requester should be used",
      "min" : 1
    },
    {
      "id" : "Procedure.performer.onBehalfOf.identifier.value",
      "path" : "Procedure.performer.onBehalfOf.identifier.value",
      "min" : 1
    },
    {
      "id" : "Procedure.performer.onBehalfOf.display",
      "path" : "Procedure.performer.onBehalfOf.display",
      "comment" : "Can be used if a display name of the requester organisation is available"
    }]
  }
}

```
