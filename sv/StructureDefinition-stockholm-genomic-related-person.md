# Stockholm Genomic Related Person - Region Stockholms testmall implementationsguide FHIR v0.1.0

## Resursprofil: Stockholm Genomic Related Person 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/RegionStockholmGDR|current/StructureDefinition/stockholm-genomic-related-person)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

#### Terminologibindningar (differential)

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

#### Terminologibindningar (differential)

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-stockholm-genomic-related-person.csv), [Excel](../StructureDefinition-stockholm-genomic-related-person.xlsx), [Schematron](../StructureDefinition-stockholm-genomic-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stockholm-genomic-related-person",
  "url" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/stockholm-genomic-related-person",
  "version" : "0.1.0",
  "name" : "StockholmGenomicRelatedPerson",
  "title" : "Stockholm Genomic Related Person",
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
  "description" : "The related person profile is used to represent the relationship between the proband and another biological relative. The profile is linked from Patient.link on the proband patient record, and the RelatedPerson resource itself points back to the patient and describes the relationship to the other person.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "short" : "Proband patient linked to the relative",
      "definition" : "The patient (proband) which the related person is related to. This is a required element and should always be populated when using this profile.",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "short" : "Biological relationship to the proband",
      "definition" : "Describes the biological relationship between the related person and the proband in genomic context.",
      "comment" : "Use biological relationship types only, since this profile is for genetics.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
      }
    }]
  }
}

```
