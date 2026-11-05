Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Profile: StockholmGenomicStudyProcedure
Parent: GenomicStudy
Id: Stockholm-genomic-study-procedure
Title: "Stockholm Genomic Study"
Description: "Core GenomicStudy profile representing a genomic case and connecting the patient, laboratory process steps, and analysis phase in one clinical context."
* ^version = "1.0.0-alpha.1"
* ^status = #draft
* ^purpose = "Represents a genomic study case and links it to the patient, laboratory process procedures, and organizations involved in performing and requesting the analysis."

* extension contains $StockholmGenomicProcedureLaboratoryProcessExtension named genomic-laboratory-process 0..*
* extension[genomic-laboratory-process] MS
  * ^short = "Laboratory process links for this case"
  * ^definition = "References one or more laboratory process procedures that belong to this genomic study case."

// Slice identifiers by type coding code to distinguish the requester and laboratory identifiers.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #closed
* identifier ^requirements = "The case is identified by one identifier assigned by the requester and one assigned by the performing laboratory."
* identifier contains
    requester-case-identifier 1..1 MS and
    laboratory-case-identifier 1..1 MS
* identifier ^short = "Case identifiers from requester and laboratory"
* identifier ^definition = "Business identifiers used to track one genomic case across the requester and performing laboratory systems."
* identifier[requester-case-identifier].system 1..1
* identifier[requester-case-identifier].value 1..1
* identifier[requester-case-identifier].type = $v2-0203#PLAC
* identifier[requester-case-identifier].type.coding.display = "Placer Identifier" (exactly)
* identifier[requester-case-identifier] ^definition = "Business identifier assigned to this procedure by the requester."
* identifier[laboratory-case-identifier].system 1..1
* identifier[laboratory-case-identifier].value 1..1
* identifier[laboratory-case-identifier].type = $v2-0203#FILL
* identifier[laboratory-case-identifier].type.coding.display = "Filler Identifier" (exactly)
* identifier[laboratory-case-identifier] ^definition = "Business identifier assigned to this procedure by the performing laboratory."

* instantiatesCanonical ..0
  * ^requirements = "No current need for this element has been identified for GDR."
* instantiatesUri ..0
  * ^requirements = "No current need for this element has been identified for GDR."
* basedOn ^comment = "Reserved for future use. It may reference a ServiceRequest or provide a logical reference to the referral or referrals associated with this case."
  * ^requirements = "No current need has been identified for GDR; this element is retained as a placeholder for future use."

* status MS
* status ^short = "Lifecycle status for the genomic case"
* status from StockholmGenomicProcedureStatusVS (required)
  * ^comment = "The status value set should include the applicable lifecycle statuses, such as in-progress and completed."
* code MS
* code from StockholmGenomicStudyTypeVS (required)
  * ^short = "Type of genomic study performed"
  * ^comment = "Use this element to represent the type of genomic study performed."
  * ^requirements = "Identifies the type of analysis, such as whole-genome sequencing, exome sequencing, or a panel."
  * ^definition = "The specific genomic procedure performed. Use text when the procedure cannot be represented by a code."

* subject MS
* subject only Reference(Patient)
  * ^short = "Patient or proband for the genomic case"
  * ^requirements = "A genomic study must be linked to a Patient resource."
  * ^comment = "Reference the proband Patient resource, preferably in the Stockholm demographic server when available."
* encounter ..1
  * ^comment = "May link the analysis to the healthcare encounter in which it was ordered. The encounter may carry the Stockholm PAS/contact identifier, care unit, and relevant time."
* performed[x] MS
  * ^short = "When the genomic study was performed"
  * ^requirements = "The time of the procedure must be recordable. Use a dateTime or Period, depending on the use case and available detail."

* performer 1..*
  * actor MS
  * actor only Reference(Organization)
    * ^requirements = "The genomic study must identify the organization that performed the analysis, typically a laboratory."
    * ^definition = "The organization responsible for performing the genomic analysis."
    * type = "Organization" (exactly)
    * identifier
      * ^comment = "Use an identifier when a reference to an Organization resource is not available."
      * system 1..1
      * value 1..1
      * system ^comment = "A local system URL may be used for the laboratory identifier (for example, http://gmck.se/clarity-lims). When an approved HSA-ID or equivalent identifier is available, use its corresponding system URI."
    * display ^comment = "May be populated from the Organization resource when available; otherwise it may be omitted."
  * onBehalfOf MS
  * onBehalfOf only Reference(Organization)
    * ^requirements = "When available, identify the organization that requested the analysis."
    * ^definition = "The organization on whose behalf the performer is acting."
    * ^comment = "Use this element to identify the requester when there is no structured referral. If a ServiceRequest is referenced, use the requester on that resource as the source of truth."
    * type = "Organization" (exactly)
    * identifier
      * ^comment = "Use an identifier when a reference to an Organization resource is not available."
      * system 1..1
      * value 1..1
      * system ^comment = "The requester may be identified by its assigned serial number (for example, cust001). Use the system URI that identifies the requester namespace."
    * display ^comment = "May contain the requester's organization name when available."
