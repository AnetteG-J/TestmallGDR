# Stockholm Genomic Specimen - Region Stockholms testmall implementationsguide FHIR v0.1.0

## Resursprofil: Stockholm Genomic Specimen 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/RegionStockholmGDR|current/StructureDefinition/stockholm-genomic-specimen)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminologibindningar (differential)

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminologibindningar (differential)

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Specimen](http://hl7.org/fhir/R4/specimen.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-stockholm-genomic-specimen.csv), [Excel](../StructureDefinition-stockholm-genomic-specimen.xlsx), [Schematron](../StructureDefinition-stockholm-genomic-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stockholm-genomic-specimen",
  "url" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/stockholm-genomic-specimen",
  "version" : "0.1.0",
  "name" : "StockholmGenomicSpecimen",
  "title" : "Stockholm Genomic Specimen",
  "status" : "draft",
  "date" : "2026-11-06T15:02:34+00:00",
  "publisher" : "Region Stockholm",
  "contact" : [{
    "name" : "Region Stockholm",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.regionstockholm.se"
    }]
  }],
  "description" : "Profile to store the data about the specimen used in the genomic study. It is also used to relate both procedures and result files to a certain specimen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "purpose" : "The purpose of this profile is to represent the specimen used in the genomic study. It is used to relate patients, procedures and result files to a certain specimen.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "rules" : "closed"
      },
      "short" : "Requester and laboratory specimen identifiers",
      "definition" : "The identifier of the specimen. This is a required element and should always be populated when using this profile.",
      "requirements" : "Two identifiers are used to identify the specimen, one assigned by the requester and one assigned by the laboratory. The identifier can be used for both the requester and the laboratory as a search parameter",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:requester-sample-identifier",
      "path" : "Specimen.identifier",
      "sliceName" : "requester-sample-identifier",
      "definition" : "Business identifiers assigned to this procedure by the requester",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:requester-sample-identifier.type.coding.system",
      "path" : "Specimen.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Specimen.identifier:requester-sample-identifier.type.coding.code",
      "path" : "Specimen.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "PLAC"
    },
    {
      "id" : "Specimen.identifier:requester-sample-identifier.type.coding.display",
      "path" : "Specimen.identifier.type.coding.display",
      "fixedString" : "Placer Identifier"
    },
    {
      "id" : "Specimen.identifier:laboratory-sample-identifier",
      "path" : "Specimen.identifier",
      "sliceName" : "laboratory-sample-identifier",
      "definition" : "Business identifiers assigned to this procedure by the performer/laboratory",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier:laboratory-sample-identifier.type.coding.system",
      "path" : "Specimen.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Specimen.identifier:laboratory-sample-identifier.type.coding.code",
      "path" : "Specimen.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "FILL"
    },
    {
      "id" : "Specimen.identifier:laboratory-sample-identifier.type.coding.display",
      "path" : "Specimen.identifier.type.coding.display",
      "fixedString" : "Filler Identifier"
    },
    {
      "id" : "Specimen.status",
      "path" : "Specimen.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/specimen-status|4.0.1"
      }
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "short" : "Specimen material/type",
      "definition" : "Specifies the specimen type using HL7 V2 specimen type coding.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0487|3.0.0"
      }
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "short" : "Patient from whom specimen was collected",
      "definition" : "Links specimen to the patient/proband used throughout the genomic case.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0493|3.0.0"
      }
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0371|3.0.0"
      }
    }]
  }
}

```
