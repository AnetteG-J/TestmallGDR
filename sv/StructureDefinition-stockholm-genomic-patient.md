# Stockholm Genomic Patient - Region Stockholms testmall implementationsguide FHIR v0.1.0

## Resursprofil: Stockholm Genomic Patient 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/RegionStockholmGDR|current/StructureDefinition/stockholm-genomic-patient)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Patient](http://hl7.org/fhir/R4/patient.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Patient](http://hl7.org/fhir/R4/patient.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [Patient](http://hl7.org/fhir/R4/patient.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Patient](http://hl7.org/fhir/R4/patient.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-stockholm-genomic-patient.csv), [Excel](../StructureDefinition-stockholm-genomic-patient.xlsx), [Schematron](../StructureDefinition-stockholm-genomic-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stockholm-genomic-patient",
  "url" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/stockholm-genomic-patient",
  "version" : "0.1.0",
  "name" : "StockholmGenomicPatient",
  "title" : "Stockholm Genomic Patient",
  "status" : "draft",
  "date" : "2026-11-05T11:52:42+00:00",
  "publisher" : "Region Stockholm",
  "contact" : [{
    "name" : "Region Stockholm",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.regionstockholm.se"
    }]
  }],
  "description" : "Minimal Patient profile for genomic studies. Exposes only the key elements required: identifier, gender, birthDate and deceased.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "purpose" : "Minimal patient profile for genomic studies",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Patient identifiers used in genomic workflows",
      "definition" : "Identifiers required to safely link genomic case resources to the correct patient context.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Administrative gender",
      "definition" : "Administrative gender recorded for the patient according to FHIR core semantics.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Date of birth",
      "definition" : "Birth date used for patient identification and genomic interpretation context.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "short" : "Deceased indicator or date",
      "definition" : "States whether the patient is deceased, optionally with date/time where available.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "short" : "Reference to a RelatedPerson describing another person/patient",
      "definition" : "Used to link the patient to a RelatedPerson resource that describes the relationship to another person/patient. The RelatedPerson resource itself points back to the patient and defines the nature of the relationship.",
      "mustSupport" : true
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "short" : "Related person resource for the other person/patient",
      "definition" : "The RelatedPerson resource representing the other person/patient and the relationship to the proband patient.",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    }]
  }
}

```
