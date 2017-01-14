unit LUX.DICOM.Tags.G0040;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0040

     TDICOMElems0040 = class( TDICOMElems )
     private
     protected
     public
       constructor Create;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0040

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0040.Create;
begin
     inherited;

     Add( $0000, TKindVR.vrUL, 'Modality Worklist Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrAE, 'Scheduled Station AE Title' );
     Add( $0002, TKindVR.vrDA, 'Scheduled Procedure Step Start Date' );
     Add( $0003, TKindVR.vrTM, 'Scheduled Procedure Step Start Time' );
     Add( $0004, TKindVR.vrDA, 'Scheduled Procedure Step End Date' );
     Add( $0005, TKindVR.vrTM, 'Scheduled Procedure Step End Time' );
     Add( $0006, TKindVR.vrPN, 'Scheduled Performing Physician''s Name' );
     Add( $0007, TKindVR.vrLO, 'Scheduled Procedure Step Description' );
     Add( $0008, TKindVR.vrSQ, 'Scheduled Protocol Code Sequence' );
     Add( $0009, TKindVR.vrSH, 'Scheduled Procedure Step ID' );
     Add( $000A, TKindVR.vrSQ, 'Stage Code Sequence' );
     Add( $000B, TKindVR.vrSQ, 'Scheduled Performing Physician Identification Sequence' );
     Add( $0010, TKindVR.vrSH, 'Scheduled Station Name' );
     Add( $0011, TKindVR.vrSH, 'Scheduled Procedure Step Location' );
     Add( $0012, TKindVR.vrLO, 'Pre-Medication' );
     Add( $0020, TKindVR.vrCS, 'Scheduled Procedure Step Status' );
     Add( $0026, TKindVR.vrSQ, 'Order Placer Identifier Sequence' );
     Add( $0027, TKindVR.vrSQ, 'Order Filler Identifier Sequence' );
     Add( $0031, TKindVR.vrUT, 'Local Namespace Entity ID' );
     Add( $0032, TKindVR.vrUT, 'Universal Entity ID' );
     Add( $0033, TKindVR.vrCS, 'Universal Entity ID Type' );
     Add( $0035, TKindVR.vrCS, 'Identifier Type Code' );
     Add( $0036, TKindVR.vrSQ, 'Assigning Facility Sequence' );
     Add( $0039, TKindVR.vrSQ, 'Assigning Jurisdiction Code Sequence' );
     Add( $003A, TKindVR.vrSQ, 'Assigning Agency or Department Code Sequence' );
     Add( $0100, TKindVR.vrSQ, 'Scheduled Procedure Step Sequence' );
     Add( $0220, TKindVR.vrSQ, 'Referenced Non-Image Composite SOP Instance Sequence' );
     Add( $0241, TKindVR.vrAE, 'Performed Station AE Title' );
     Add( $0242, TKindVR.vrSH, 'Performed Station Name' );
     Add( $0243, TKindVR.vrSH, 'Performed Location' );
     Add( $0244, TKindVR.vrDA, 'Performed Procedure Step Start Date' );
     Add( $0245, TKindVR.vrTM, 'Performed Procedure Step Start Time' );
     Add( $0250, TKindVR.vrDA, 'Performed Procedure Step End Date' );
     Add( $0251, TKindVR.vrTM, 'Performed Procedure Step End Time' );
     Add( $0252, TKindVR.vrCS, 'Performed Procedure Step Status' );
     Add( $0253, TKindVR.vrSH, 'Performed Procedure Step ID' );
     Add( $0254, TKindVR.vrLO, 'Performed Procedure Step Description' );
     Add( $0255, TKindVR.vrLO, 'Performed Procedure Type Description' );
     Add( $0260, TKindVR.vrSQ, 'Performed Protocol Code Sequence' );
     Add( $0261, TKindVR.vrCS, 'Performed Protocol Type' );
     Add( $0270, TKindVR.vrSQ, 'Scheduled Step Attributes Sequence' );
     Add( $0275, TKindVR.vrSQ, 'Request Attributes Sequence' );
     Add( $0280, TKindVR.vrST, 'Comments on the Performed Procedure Step' );
     Add( $0281, TKindVR.vrSQ, 'Performed Procedure Step Discontinuation Reason Code Sequence' );
     Add( $0293, TKindVR.vrSQ, 'Quantity Sequence' );
     Add( $0294, TKindVR.vrDS, 'Quantity' );
     Add( $0295, TKindVR.vrSQ, 'Measuring Units Sequence' );
     Add( $0296, TKindVR.vrSQ, 'Billing Item Sequence' );
     Add( $0300, TKindVR.vrUS, 'Total Time of Fluoroscopy' );
     Add( $0301, TKindVR.vrUS, 'Total Number of Exposures' );
     Add( $0302, TKindVR.vrUS, 'Entrance Dose' );
     Add( $0303, TKindVR.vrUS, 'Exposed Area' );
     Add( $0306, TKindVR.vrDS, 'Distance Source to Entrance' );
     Add( $0307, TKindVR.vrDS, 'Distance Source to Support' );
     Add( $030E, TKindVR.vrSQ, 'Exposure Dose Sequence' );
     Add( $0310, TKindVR.vrST, 'Comments on Radiation Dose' );
     Add( $0312, TKindVR.vrDS, 'X-Ray Output' );
     Add( $0314, TKindVR.vrDS, 'Half Value Layer' );
     Add( $0316, TKindVR.vrDS, 'Organ Dose' );
     Add( $0318, TKindVR.vrCS, 'Organ Exposed' );
     Add( $0320, TKindVR.vrSQ, 'Billing Procedure Step Sequence' );
     Add( $0321, TKindVR.vrSQ, 'Film Consumption Sequence' );
     Add( $0324, TKindVR.vrSQ, 'Billing Supplies and Devices Sequence' );
     Add( $0330, TKindVR.vrSQ, 'Referenced Procedure Step Sequence' );
     Add( $0340, TKindVR.vrSQ, 'Performed Series Sequence' );
     Add( $0400, TKindVR.vrLT, 'Comments on the Scheduled Procedure Step' );
     Add( $0440, TKindVR.vrSQ, 'Protocol Context Sequence' );
     Add( $0441, TKindVR.vrSQ, 'Content Item Modifier Sequence' );
     Add( $0500, TKindVR.vrSQ, 'Scheduled Specimen Sequence' );
     Add( $050A, TKindVR.vrLO, 'Specimen Accession Number' );
     Add( $0512, TKindVR.vrLO, 'Container Identifier' );
     Add( $0513, TKindVR.vrSQ, 'Issuer of the Container Identifier Sequence' );
     Add( $0515, TKindVR.vrSQ, 'Alternate Container Identifier Sequence' );
     Add( $0518, TKindVR.vrSQ, 'Container Type Code Sequence' );
     Add( $051A, TKindVR.vrLO, 'Container Description' );
     Add( $0520, TKindVR.vrSQ, 'Container Component Sequence' );
     Add( $0550, TKindVR.vrSQ, 'Specimen Sequence' );
     Add( $0551, TKindVR.vrLO, 'Specimen Identifier' );
     Add( $0552, TKindVR.vrSQ, 'Specimen Description Sequence (Trial)' );
     Add( $0553, TKindVR.vrST, 'Specimen Description (Trial)' );
     Add( $0554, TKindVR.vrUI, 'Specimen UID' );
     Add( $0555, TKindVR.vrSQ, 'Acquisition Context Sequence' );
     Add( $0556, TKindVR.vrST, 'Acquisition Context Description' );
     Add( $059A, TKindVR.vrSQ, 'Specimen Type Code Sequence' );
     Add( $0560, TKindVR.vrSQ, 'Specimen Description Sequence' );
     Add( $0562, TKindVR.vrSQ, 'Issuer of the Specimen Identifier Sequence' );
     Add( $0600, TKindVR.vrLO, 'Specimen Short Description' );
     Add( $0602, TKindVR.vrUT, 'Specimen Detailed Description' );
     Add( $0610, TKindVR.vrSQ, 'Specimen Preparation Sequence' );
     Add( $0612, TKindVR.vrSQ, 'Specimen Preparation Step Content Item Sequence' );
     Add( $0620, TKindVR.vrSQ, 'Specimen Localization Content Item Sequence' );
     Add( $06FA, TKindVR.vrLO, 'Slide Identifier' );
     Add( $071A, TKindVR.vrSQ, 'Image Center Point Coordinates Sequence' );
     Add( $072A, TKindVR.vrDS, 'X Offset in Slide Coordinate System' );
     Add( $073A, TKindVR.vrDS, 'Y Offset in Slide Coordinate System' );
     Add( $074A, TKindVR.vrDS, 'Z Offset in Slide Coordinate System' );
     Add( $08D8, TKindVR.vrSQ, 'Pixel Spacing Sequence' );
     Add( $08DA, TKindVR.vrSQ, 'Coordinate System Axis Code Sequence' );
     Add( $08EA, TKindVR.vrSQ, 'Measurement Units Code Sequence' );
     Add( $09F8, TKindVR.vrSQ, 'Vital Stain Code Sequence (Trial)' );
     Add( $1001, TKindVR.vrSH, 'Requested Procedure ID' );
     Add( $1002, TKindVR.vrLO, 'Reason for the Requested Procedure' );
     Add( $1003, TKindVR.vrSH, 'Requested Procedure Priority' );
     Add( $1004, TKindVR.vrLO, 'Patient Transport Arrangements' );
     Add( $1005, TKindVR.vrLO, 'Requested Procedure Location' );
     Add( $1006, TKindVR.vrSH, 'Placer Order Number / Procedure' );
     Add( $1007, TKindVR.vrSH, 'Filler Order Number / Procedure' );
     Add( $1008, TKindVR.vrLO, 'Confidentiality Code' );
     Add( $1009, TKindVR.vrSH, 'Reporting Priority' );
     Add( $100A, TKindVR.vrSQ, 'Reason for Requested Procedure Code Sequence' );
     Add( $1010, TKindVR.vrPN, 'Names of Intended Recipients of Results' );
     Add( $1011, TKindVR.vrSQ, 'Intended Recipients of Results Identification Sequence' );
     Add( $1012, TKindVR.vrSQ, 'Reason For Performed Procedure Code Sequence' );
     Add( $1060, TKindVR.vrLO, 'Requested Procedure Description (Trial)' );
     Add( $1101, TKindVR.vrSQ, 'Person Identification Code Sequence' );
     Add( $1102, TKindVR.vrST, 'Person''s Address' );
     Add( $1103, TKindVR.vrLO, 'Person''s Telephone Numbers' );
     Add( $1104, TKindVR.vrLT, 'Person''s Telecom Information' );
     Add( $1400, TKindVR.vrLT, 'Requested Procedure Comments' );
     Add( $2001, TKindVR.vrLO, 'Reason for the Imaging Service Request' );
     Add( $2004, TKindVR.vrDA, 'Issue Date of Imaging Service Request' );
     Add( $2005, TKindVR.vrTM, 'Issue Time of Imaging Service Request' );
     Add( $2006, TKindVR.vrSH, 'Placer Order Number / Imaging Service Request (Retired)' );
     Add( $2007, TKindVR.vrSH, 'Filler Order Number / Imaging Service Request (Retired)' );
     Add( $2008, TKindVR.vrPN, 'Order Entered By' );
     Add( $2009, TKindVR.vrSH, 'Order Enterer''s Location' );
     Add( $2010, TKindVR.vrSH, 'Order Callback Phone Number' );
     Add( $2011, TKindVR.vrLT, 'Order Callback Telecom Information' );
     Add( $2016, TKindVR.vrLO, 'Placer Order Number / Imaging Service Request' );
     Add( $2017, TKindVR.vrLO, 'Filler Order Number / Imaging Service Request' );
     Add( $2400, TKindVR.vrLT, 'Imaging Service Request Comments' );
     Add( $3001, TKindVR.vrLO, 'Confidentiality Constraint on Patient Data Description' );
     Add( $4001, TKindVR.vrCS, 'General Purpose Scheduled Procedure Step Status' );
     Add( $4002, TKindVR.vrCS, 'General Purpose Performed Procedure Step Status' );
     Add( $4003, TKindVR.vrCS, 'General Purpose Scheduled Procedure Step Priority' );
     Add( $4004, TKindVR.vrSQ, 'Scheduled Processing Applications Code Sequence' );
     Add( $4005, TKindVR.vrDT, 'Scheduled Procedure Step Start DateTime' );
     Add( $4006, TKindVR.vrCS, 'Multiple Copies Flag' );
     Add( $4007, TKindVR.vrSQ, 'Performed Processing Applications Code Sequence' );
     Add( $4009, TKindVR.vrSQ, 'Human Performer Code Sequence' );
     Add( $4010, TKindVR.vrDT, 'Scheduled Procedure Step Modification DateTime' );
     Add( $4011, TKindVR.vrDT, 'Expected Completion DateTime' );
     Add( $4015, TKindVR.vrSQ, 'Resulting General Purpose Performed Procedure Steps Sequence' );
     Add( $4016, TKindVR.vrSQ, 'Referenced General Purpose Scheduled Procedure Step Sequence' );
     Add( $4018, TKindVR.vrSQ, 'Scheduled Workitem Code Sequence' );
     Add( $4019, TKindVR.vrSQ, 'Performed Workitem Code Sequence' );
     Add( $4020, TKindVR.vrCS, 'Input Availability Flag' );
     Add( $4021, TKindVR.vrSQ, 'Input Information Sequence' );
     Add( $4022, TKindVR.vrSQ, 'Relevant Information Sequence' );
     Add( $4023, TKindVR.vrUI, 'Referenced General Purpose Scheduled Procedure Step Transaction UID' );
     Add( $4025, TKindVR.vrSQ, 'Scheduled Station Name Code Sequence' );
     Add( $4026, TKindVR.vrSQ, 'Scheduled Station Class Code Sequence' );
     Add( $4027, TKindVR.vrSQ, 'Scheduled Station Geographic Location Code Sequence' );
     Add( $4028, TKindVR.vrSQ, 'Performed Station Name Code Sequence' );
     Add( $4029, TKindVR.vrSQ, 'Performed Station Class Code Sequence' );
     Add( $4030, TKindVR.vrSQ, 'Performed Station Geographic Location Code Sequence' );
     Add( $4031, TKindVR.vrSQ, 'Requested Subsequent Workitem Code Sequence' );
     Add( $4032, TKindVR.vrSQ, 'Non-DICOM Output Code Sequence' );
     Add( $4033, TKindVR.vrSQ, 'Output Information Sequence' );
     Add( $4034, TKindVR.vrSQ, 'Scheduled Human Performers Sequence' );
     Add( $4035, TKindVR.vrSQ, 'Actual Human Performers Sequence' );
     Add( $4036, TKindVR.vrLO, 'Human Performer''s Organization' );
     Add( $4037, TKindVR.vrPN, 'Human Performer''s Name' );
     Add( $4040, TKindVR.vrCS, 'Raw Data Handling' );
     Add( $4041, TKindVR.vrCS, 'Input Readiness State' );
     Add( $4050, TKindVR.vrDT, 'Performed Procedure Step Start DateTime' );
     Add( $4051, TKindVR.vrDT, 'Performed Procedure Step End DateTime' );
     Add( $4052, TKindVR.vrDT, 'Procedure Step Cancellation DateTime' );
     Add( $4070, TKindVR.vrSQ, 'Output Destination Sequence' );
     Add( $4071, TKindVR.vrSQ, 'DICOM Storage Sequence' );
     Add( $4072, TKindVR.vrSQ, 'STOW-RS Storage Sequence' );
     Add( $4073, TKindVR.vrUR, 'Storage URL' );
     Add( $4074, TKindVR.vrSQ, 'XDS Storage Sequence' );
     Add( $8302, TKindVR.vrDS, 'Entrance Dose in mGy' );
     Add( $9092, TKindVR.vrSQ, 'Parametric Map Frame Type Sequence' );
     Add( $9094, TKindVR.vrSQ, 'Referenced Image Real World Value Mapping Sequence' );
     Add( $9096, TKindVR.vrSQ, 'Real World Value Mapping Sequence' );
     Add( $9098, TKindVR.vrSQ, 'Pixel Value Mapping Code Sequence' );
     Add( $9210, TKindVR.vrSH, 'LUT Label' );
     Add( $9211, TKindVR.vrUSSS, 'Real World Value Last Value Mapped' );
     Add( $9212, TKindVR.vrFD, 'Real World Value LUT Data' );
     Add( $9213, TKindVR.vrFD, 'Double Float Real World Value Last Value Mapped' );
     Add( $9214, TKindVR.vrFD, 'Double Float Real World Value First Value Mapped' );
     Add( $9216, TKindVR.vrUSSS, 'Real World Value First Value Mapped' );
     Add( $9220, TKindVR.vrSQ, 'Quantity Definition Sequence' );
     Add( $9224, TKindVR.vrFD, 'Real World Value Intercept' );
     Add( $9225, TKindVR.vrFD, 'Real World Value Slope' );
     Add( $A007, TKindVR.vrCS, 'Findings Flag (Trial)' );
     Add( $A010, TKindVR.vrCS, 'Relationship Type' );
     Add( $A020, TKindVR.vrSQ, 'Findings Sequence (Trial)' );
     Add( $A021, TKindVR.vrUI, 'Findings Group UID (Trial)' );
     Add( $A022, TKindVR.vrUI, 'Referenced Findings Group UID (Trial)' );
     Add( $A023, TKindVR.vrDA, 'Findings Group Recording Date (Trial)' );
     Add( $A024, TKindVR.vrTM, 'Findings Group Recording Time (Trial)' );
     Add( $A026, TKindVR.vrSQ, 'Findings Source Category Code Sequence (Trial)' );
     Add( $A027, TKindVR.vrLO, 'Verifying Organization' );
     Add( $A028, TKindVR.vrSQ, 'Documenting Organization Identifier Code Sequence (Trial)' );
     Add( $A030, TKindVR.vrDT, 'Verification DateTime' );
     Add( $A032, TKindVR.vrDT, 'Observation DateTime' );
     Add( $A040, TKindVR.vrCS, 'Value Type' );
     Add( $A043, TKindVR.vrSQ, 'Concept Name Code Sequence' );
     Add( $A047, TKindVR.vrLO, 'Measurement Precision Description (Trial)' );
     Add( $A050, TKindVR.vrCS, 'Continuity Of Content' );
     Add( $A057, TKindVR.vrCS, 'Urgency or Priority Alerts (Trial)' );
     Add( $A060, TKindVR.vrLO, 'Sequencing Indicator (Trial)' );
     Add( $A066, TKindVR.vrSQ, 'Document Identifier Code Sequence (Trial)' );
     Add( $A067, TKindVR.vrPN, 'Document Author (Trial)' );
     Add( $A068, TKindVR.vrSQ, 'Document Author Identifier Code Sequence (Trial)' );
     Add( $A070, TKindVR.vrSQ, 'Identifier Code Sequence (Trial)' );
     Add( $A073, TKindVR.vrSQ, 'Verifying Observer Sequence' );
     Add( $A074, TKindVR.vrOB, 'Object Binary Identifier (Trial)' );
     Add( $A075, TKindVR.vrPN, 'Verifying Observer Name' );
     Add( $A076, TKindVR.vrSQ, 'Documenting Observer Identifier Code Sequence (Trial)' );
     Add( $A078, TKindVR.vrSQ, 'Author Observer Sequence' );
     Add( $A07A, TKindVR.vrSQ, 'Participant Sequence' );
     Add( $A07C, TKindVR.vrSQ, 'Custodial Organization Sequence' );
     Add( $A080, TKindVR.vrCS, 'Participation Type' );
     Add( $A082, TKindVR.vrDT, 'Participation DateTime' );
     Add( $A084, TKindVR.vrCS, 'Observer Type' );
     Add( $A085, TKindVR.vrSQ, 'Procedure Identifier Code Sequence (Trial)' );
     Add( $A088, TKindVR.vrSQ, 'Verifying Observer Identification Code Sequence' );
     Add( $A089, TKindVR.vrOB, 'Object Directory Binary Identifier (Trial)' );
     Add( $A090, TKindVR.vrSQ, 'Equivalent CDA Document Sequence' );
     Add( $A0B0, TKindVR.vrUS, 'Referenced Waveform Channels' );
     Add( $A110, TKindVR.vrDA, 'Date of Document or Verbal Transaction (Trial)' );
     Add( $A112, TKindVR.vrTM, 'Time of Document Creation or Verbal Transaction (Trial)' );
     Add( $A120, TKindVR.vrDT, 'DateTime' );
     Add( $A121, TKindVR.vrDA, 'Date' );
     Add( $A122, TKindVR.vrTM, 'Time' );
     Add( $A123, TKindVR.vrPN, 'Person Name' );
     Add( $A124, TKindVR.vrUI, 'UID' );
     Add( $A125, TKindVR.vrCS, 'Report Status ID (Trial)' );
     Add( $A130, TKindVR.vrCS, 'Temporal Range Type' );
     Add( $A132, TKindVR.vrUL, 'Referenced Sample Positions' );
     Add( $A136, TKindVR.vrUS, 'Referenced Frame Numbers' );
     Add( $A138, TKindVR.vrDS, 'Referenced Time Offsets' );
     Add( $A13A, TKindVR.vrDT, 'Referenced DateTime' );
     Add( $A160, TKindVR.vrUT, 'Text Value' );
     Add( $A161, TKindVR.vrFD, 'Floating Point Value' );
     Add( $A162, TKindVR.vrSL, 'Rational Numerator Value' );
     Add( $A163, TKindVR.vrUL, 'Rational Denominator Value' );
     Add( $A167, TKindVR.vrSQ, 'Observation Category Code Sequence (Trial)' );
     Add( $A168, TKindVR.vrSQ, 'Concept Code Sequence' );
     Add( $A16A, TKindVR.vrST, 'Bibliographic Citation (Trial)' );
     Add( $A170, TKindVR.vrSQ, 'Purpose of Reference Code Sequence' );  //Tag (0040,A170) was defined as Observation Class with a VR of "CS" in the Frozen Draft version of Supplement 23 "Structured Reporting" (from November 20, 1997). Implementers of the standard should be warned that old objects of the associated SOP Classes exist and that they use this VR instead of "SQ". In particular, when reading objects with Implicit VR Little Endian transfer syntax, this inconsistency might result in parsing errors if not handled appropriately.
     Add( $A171, TKindVR.vrUI, 'Observation UID' );
     Add( $A172, TKindVR.vrUI, 'Referenced Observation UID (Trial)' );
     Add( $A173, TKindVR.vrCS, 'Referenced Observation Class (Trial)' );
     Add( $A174, TKindVR.vrCS, 'Referenced Object Observation Class (Trial)' );
     Add( $A180, TKindVR.vrUS, 'Annotation Group Number' );
     Add( $A192, TKindVR.vrDA, 'Observation Date (Trial)' );
     Add( $A193, TKindVR.vrTM, 'Observation Time (Trial)' );
     Add( $A194, TKindVR.vrCS, 'Measurement Automation (Trial)' );
     Add( $A195, TKindVR.vrSQ, 'Modifier Code Sequence' );
     Add( $A224, TKindVR.vrST, 'Identification Description (Trial)' );
     Add( $A290, TKindVR.vrCS, 'Coordinates Set Geometric Type (Trial)' );
     Add( $A296, TKindVR.vrSQ, 'Algorithm Code Sequence (Trial)' );
     Add( $A297, TKindVR.vrST, 'Algorithm Description (Trial)' );
     Add( $A29A, TKindVR.vrSL, 'Pixel Coordinates Set (Trial)' );
     Add( $A300, TKindVR.vrSQ, 'Measured Value Sequence' );
     Add( $A301, TKindVR.vrSQ, 'Numeric Value Qualifier Code Sequence' );
     Add( $A307, TKindVR.vrPN, 'Current Observer (Trial)' );
     Add( $A30A, TKindVR.vrDS, 'Numeric Value' );
     Add( $A313, TKindVR.vrSQ, 'Referenced Accession Sequence (Trial)' );
     Add( $A33A, TKindVR.vrST, 'Report Status Comment (Trial)' );
     Add( $A340, TKindVR.vrSQ, 'Procedure Context Sequence (Trial)' );
     Add( $A352, TKindVR.vrPN, 'Verbal Source (Trial)' );
     Add( $A353, TKindVR.vrST, 'Address (Trial)' );
     Add( $A354, TKindVR.vrLO, 'Telephone Number (Trial)' );
     Add( $A358, TKindVR.vrSQ, 'Verbal Source Identifier Code Sequence (Trial)' );
     Add( $A360, TKindVR.vrSQ, 'Predecessor Documents Sequence' );
     Add( $A370, TKindVR.vrSQ, 'Referenced Request Sequence' );
     Add( $A372, TKindVR.vrSQ, 'Performed Procedure Code Sequence' );
     Add( $A375, TKindVR.vrSQ, 'Current Requested Procedure Evidence Sequence' );
     Add( $A380, TKindVR.vrSQ, 'Report Detail Sequence (Trial)' );
     Add( $A385, TKindVR.vrSQ, 'Pertinent Other Evidence Sequence' );
     Add( $A390, TKindVR.vrSQ, 'HL7 Structured Document Reference Sequence' );
     Add( $A402, TKindVR.vrUI, 'Observation Subject UID (Trial)' );
     Add( $A403, TKindVR.vrCS, 'Observation Subject Class (Trial)' );
     Add( $A404, TKindVR.vrSQ, 'Observation Subject Type Code Sequence (Trial)' );
     Add( $A491, TKindVR.vrCS, 'Completion Flag' );
     Add( $A492, TKindVR.vrLO, 'Completion Flag Description' );
     Add( $A493, TKindVR.vrCS, 'Verification Flag' );
     Add( $A494, TKindVR.vrCS, 'Archive Requested' );
     Add( $A496, TKindVR.vrCS, 'Preliminary Flag' );
     Add( $A504, TKindVR.vrSQ, 'Content Template Sequence' );
     Add( $A525, TKindVR.vrSQ, 'Identical Documents Sequence' );
     Add( $A600, TKindVR.vrCS, 'Observation Subject Context Flag (Trial)' );
     Add( $A601, TKindVR.vrCS, 'Observer Context Flag (Trial)' );
     Add( $A603, TKindVR.vrCS, 'Procedure Context Flag (Trial)' );
     Add( $A730, TKindVR.vrSQ, 'Content Sequence' );
     Add( $A731, TKindVR.vrSQ, 'Relationship Sequence (Trial)' );
     Add( $A732, TKindVR.vrSQ, 'Relationship Type Code Sequence (Trial)' );
     Add( $A744, TKindVR.vrSQ, 'Language Code Sequence (Trial)' );
     Add( $A992, TKindVR.vrST, 'Uniform Resource Locator (Trial)' );
     Add( $B020, TKindVR.vrSQ, 'Waveform Annotation Sequence' );
     Add( $DB00, TKindVR.vrCS, 'Template Identifier' );
     Add( $DB06, TKindVR.vrDT, 'Template Version' );
     Add( $DB07, TKindVR.vrDT, 'Template Local Version' );
     Add( $DB0B, TKindVR.vrCS, 'Template Extension Flag' );
     Add( $DB0C, TKindVR.vrUI, 'Template Extension Organization UID' );
     Add( $DB0D, TKindVR.vrUI, 'Template Extension Creator UID' );
     Add( $DB73, TKindVR.vrUL, 'Referenced Content Item Identifier' );
     Add( $E001, TKindVR.vrST, 'HL7 Instance Identifier' );
     Add( $E004, TKindVR.vrDT, 'HL7 Document Effective Time' );
     Add( $E006, TKindVR.vrSQ, 'HL7 Document Type Code Sequence' );
     Add( $E008, TKindVR.vrSQ, 'Document Class Code Sequence' );
     Add( $E010, TKindVR.vrUR, 'Retrieve URI' );
     Add( $E011, TKindVR.vrUI, 'Retrieve Location UID' );
     Add( $E020, TKindVR.vrCS, 'Type of Instances' );
     Add( $E021, TKindVR.vrSQ, 'DICOM Retrieval Sequence' );
     Add( $E022, TKindVR.vrSQ, 'DICOM Media Retrieval Sequence' );
     Add( $E023, TKindVR.vrSQ, 'WADO Retrieval Sequence' );
     Add( $E024, TKindVR.vrSQ, 'XDS Retrieval Sequence' );
     Add( $E025, TKindVR.vrSQ, 'WADO-RS Retrieval Sequence' );
     Add( $E030, TKindVR.vrUI, 'Repository Unique ID' );
     Add( $E031, TKindVR.vrUI, 'Home Community ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
