Profile: StockholmGenomicProcedureLaboratoryProcess
Parent: Procedure
Id: stockholm-genomic-procedure-laboratory-process
Title: "Stockholm Genomic ProcedureLaboratory Process"
Description: "Represents the laboratory phase of a genomic case and ties together library preparation and nucleic acid sequencing for a specimen. A single genomic study can include multiple laboratory process instances."
* ^version = "1.0.0-alpha.1"
* ^status = #draft
* ^purpose = "The purpse of this profile is to link and represent the laboratory phase of the genomic study together, which includes the library preparation and Nucleic Acid Sequencing."
//Lägg till dessa * extension 3..*
//Lägg till dessa * extension contains
  //Lägg till dessa   StockholmGenomicProcedureExtensionLibraryPreparation named genomic-library-preparation 1..1 and
  //Lägg till dessa   StockholmGenomicProcedureExtensionNucleicAcidSequencing named nucleic-acid-sequencing 1..1 and
   //Lägg till dessa  StockholmGenomicProcedureExtensionFocus named focus 1..1    
//Lägg till dessa * extension[genomic-library-preparation] MS
 //Lägg till dessa * ^short = "Reference to the linked library preparation procedure"
 //Lägg till dessa * ^definition = "Points to the procedure instance that describes library preparation for this laboratory process."
//Lägg till dessa* extension[nucleic-acid-sequencing] MS
//Lägg till dessa  * ^short = "Reference to the linked sequencing procedure"
//Lägg till dessa  * ^definition = "Points to the nucleic acid sequencing procedure associated with this laboratory process."
//Lägg till dessa* extension[focus] MS
//Lägg till dessa  * ^short = "Specimen in focus for this process"
//Lägg till dessa  * ^definition = "Identifies the specimen that this laboratory process applies to."
//Lägg till dessa* partOf only Reference(StockholmGenomicStudyProcedure or Procedure)
//Lägg till dessa* status MS
//Lägg till dessa  * ^short = "Lifecycle status of the laboratory process"
//Lägg till dessa  * ^definition = "Indicates whether the process is in progress or completed for reporting and follow-up."
//Lägg till dessa* status from StockholmGenomicProcedureStatusVS (required) 
 //Lägg till dessa * ^comment = "The following statuses can be used: in-progress, completed."
* instantiatesCanonical ..0 //This attribute is removed in future releases.
* instantiatesUri ..0 //This attribute is removed in future releases.
//* partOf only Reference(StockholmGenomicStudyProcedure or Procedure)
* category.coding MS
  * system 1..
  * system = "http://snomed.info/sct" (exactly)
  * code 1..1
  * code = #108252007 (exactly)
  * display 1..1
  * display = "Laboratory procedure (procedure)" (exactly)
* subject MS
* subject only Reference(Patient)
* performer
  * actor MS
    * ^requirements = "The procedure must be linked to the organization that performed the analysis, typically a laboratory. This can be done with a reference to an Organization resource or with an identifier for the organization if a reference is not possible."
    * ^definition = "The performer is the organization that is responsible for the procedure. In this case, the laboratory that performs the laboratory process." 
    * type = "Organization" (exactly)
    * identifier ^comment = "Identifier must be used when a reference to an organisation resource is not possible"
      * system 1..1
      * value 1..1
      * system ^comment = "Currently, a local system URL (e.g. http://gmck.se/clarity-lims) is used as the identifier for the laboratory. When HSA-ID/kombika is available, e.g. urn:oid:1.2.752.29.4.71 should be used."
    * display ^comment = "Can be set automatically to the laboratory's organization when possible. Otherwise, it may be left blank."
  * onBehalfOf MS
    * ^requirements = "The procedure should be linked to the organization that requested the laboratory process, typically another diagnostic unit. This can be done with a reference to an Organization resource or with an identifier for the organization if a reference is not possible."
    * ^definition = "The organization the device or practitioner was acting on behalf of. Note that if this element is empty, the perfomer procedure profile is used."
    * ^comment = "onBehalfOf should be used to point to the requester of the laboratory process, as long as no structured referral is available. If there is a reference to a serviceRequest, then the requester should be described in the serviceRequest instead."
    * type = "Organization" (exactly)
    * identifier
      * ^comment = "Identifier must be used when a reference to an organisation resource is not possible"
      * system 1..1
      * value 1..1
      * system ^comment = "The requester is assigned a serial number (cust001 and upwards) which is specified as text. A system URL representing the requester should be used"
    * display ^comment = "Can be used if a display name of the requester organisation is available"
