# Stockholm Genomic Data File - Region Stockholms testmall implementationsguide FHIR v0.1.0

## Resursprofil: Stockholm Genomic Data File 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/RegionStockholmGDR|current/StructureDefinition/stockholm-genomic-data-file)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-stockholm-genomic-data-file.csv), [Excel](../StructureDefinition-stockholm-genomic-data-file.xlsx), [Schematron](../StructureDefinition-stockholm-genomic-data-file.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stockholm-genomic-data-file",
  "url" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/stockholm-genomic-data-file",
  "version" : "0.1.0",
  "name" : "StockholmGenomicDataFile",
  "title" : "Stockholm Genomic Data File",
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
  "description" : "Profile for metadata and links to genomic data files included in a case. This resource is referenced from sequencing and analysis workflows to connect produced or consumed files to the clinical context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "purpose" : "The purpose of this profile is to be part of the MVP-GDR project with the goal to evaluate FHIR as a standard to meet our needs for genomic data.\r\nIt should therefore be known that the information model itself has been created for the purpose of performing this evaluation. The information model is therefore NOT ready for implementation in a production environment to store resource data.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.implicitRules",
      "path" : "DocumentReference.implicitRules",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.language",
      "path" : "DocumentReference.language",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.contained",
      "path" : "DocumentReference.contained",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "definition" : "The status of this document reference. Fixed value to 'current' in GDR MVP.",
      "fixedCode" : "current"
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "Patient that the file content is about",
      "definition" : "Subject links the data file metadata to the patient/proband context for the genomic case.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "DocumentReference.securityLabel",
      "path" : "DocumentReference.securityLabel",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "short" : "File metadata and retrievable location",
      "definition" : "Content describes the actual file using attachment metadata such as type, URL, title, and creation time."
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "short" : "Resolvable file location",
      "definition" : "URL points to the file location where the referenced genomic data can be retrieved.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.size",
      "path" : "DocumentReference.content.attachment.size",
      "short" : "File size in bytes",
      "definition" : "Size indicates the size of the referenced genomic data file in bytes.",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "mustSupport" : true
    }]
  }
}

```
