# Stockholm Genomic Extension Specimen - Region Stockholms testmall implementationsguide FHIR v0.1.0

## Extension: Stockholm Genomic Extension Specimen 

**Context of Use**

**Usage info**

**Användningar:**

* Denna Extension används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/RegionStockholmGDR|current/StructureDefinition/StockholmGenomicExtensionSpecimen)

### Formella vyer av extensioninnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Begränsningar

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Differentialvy** 

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Ögonblicksbildsvy** 

#### Begränsningar

Denna struktur är härledd från [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-StockholmGenomicExtensionSpecimen.csv), [Excel](../StructureDefinition-StockholmGenomicExtensionSpecimen.xlsx), [Schematron](../StructureDefinition-StockholmGenomicExtensionSpecimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "StockholmGenomicExtensionSpecimen",
  "url" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/StockholmGenomicExtensionSpecimen",
  "version" : "0.1.0",
  "name" : "StockholmGenomicExtensionSpecimen",
  "title" : "Stockholm Genomic Extension Specimen",
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
  "description" : "Extension that references the specimen associated with a genomic document reference.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Stockholm Genomic Extension Specimen",
      "definition" : "Extension that references the specimen associated with a genomic document reference."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://pub.regionstockholm.se/fhir/ImplementationGuide/TestmallGDR/StructureDefinition/StockholmGenomicExtensionSpecimen"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    }]
  }
}

```
