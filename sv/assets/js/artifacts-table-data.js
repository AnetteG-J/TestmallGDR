window.artifactsTableData = {
  "sv": {
    "labels": {
      "type":        "Typ",
      "category":    "Kategori",
      "useGrouping": "Använd gruppering",
      "clearAll":      "Rensa alla",
      "linkToSection": "Länk till detta avsnitt",
      "headings":      "Rubriker",
      "headingsFull":  "Fullständiga",
      "headingsTitle": "Titel",
      "headingsNone":  "Inga"
    },
    "groupDescriptions": {
      "-str-profile": "<p>Dessa definierar begränsningar på FHIR-resurser för system som följer denna implementationsguide.</p>\n"
      ,"-ex-example": "<p>Detta är exempelinstanser som visar hur data som produceras och konsumeras av system som följer denna implementationsguide kan se ut.</p>\n"
    },
    "rows": [
      { "p":1, "gid":"-str-profile", "g":"Strukturer: Resursprofiler", "n":"Inera Patient", "i":"IneraPatient", "t":"StructureDefinition", "u":"StructureDefinition-IneraPatient.html", "r":"StructureDefinition/IneraPatient", "d":"<p>A template patient profile demonstrating Inera's FHIR profiling conventions.\nAuthors should replace this description with the clinical purpose and scope of the profile.</p>" },
      { "p":1, "gid":"-str-profile", "g":"Strukturer: Resursprofiler", "n":"Stockholm Genomic Data File", "i":"stockholm-genomic-data-file", "t":"StructureDefinition", "u":"StructureDefinition-stockholm-genomic-data-file.html", "r":"StructureDefinition/stockholm-genomic-data-file", "d":"<p>Profile for metadata and links to genomic data files included in a case. This resource is referenced from sequencing and analysis workflows to connect produced or consumed files to the clinical context.</p>" },
      { "p":1, "gid":"-str-profile", "g":"Strukturer: Resursprofiler", "n":"Stockholm Genomic Patient", "i":"stockholm-genomic-patient", "t":"StructureDefinition", "u":"StructureDefinition-stockholm-genomic-patient.html", "r":"StructureDefinition/stockholm-genomic-patient", "d":"<p>Minimal Patient profile for genomic studies. Exposes only the key elements required: identifier, gender, birthDate and deceased.</p>" },
      { "p":1, "gid":"-str-profile", "g":"Strukturer: Resursprofiler", "n":"Stockholm Genomic Related Person", "i":"stockholm-genomic-related-person", "t":"StructureDefinition", "u":"StructureDefinition-stockholm-genomic-related-person.html", "r":"StructureDefinition/stockholm-genomic-related-person", "d":"<p>The related person profile is used to represent the relationship between the proband and another biological relative. The profile is linked from Patient.link on the proband patient record, and the RelatedPerson resource itself points back to the patient and describes the relationship to the other person.</p>" },
      { "p":2, "gid":"-ex-example", "g":"Exempel: Exempelinstanser", "n":"Inera Patient Example", "i":"IneraPatientExample", "t":"Patient", "u":"Patient-IneraPatientExample.html", "r":"Patient/IneraPatientExample", "d":"<p>A minimal example of a patient conforming to the IneraPatient profile.</p>" }
    ]
  }
};
