unit LUX.DICOM.Tags.G0040;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0040

     TdcmGrup0040 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup0040

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup0040.Create;
begin
     inherited;

     Add( $0000, [TTypeVR.vrUL], 'Modality Worklist Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrAE], 'Scheduled Station AE Title' );
     Add( $0002, [TTypeVR.vrDA], 'Scheduled Procedure Step Start Date' );
     Add( $0003, [TTypeVR.vrTM], 'Scheduled Procedure Step Start Time' );
     Add( $0004, [TTypeVR.vrDA], 'Scheduled Procedure Step End Date' );
     Add( $0005, [TTypeVR.vrTM], 'Scheduled Procedure Step End Time' );
     Add( $0006, [TTypeVR.vrPN], 'Scheduled Performing Physician''s Name' );
     Add( $0007, [TTypeVR.vrLO], 'Scheduled Procedure Step Description' );
     Add( $0008, [TTypeVR.vrSQ], 'Scheduled Protocol Code Sequence' );
     Add( $0009, [TTypeVR.vrSH], 'Scheduled Procedure Step ID' );
     Add( $000A, [TTypeVR.vrSQ], 'Stage Code Sequence' );
     Add( $000B, [TTypeVR.vrSQ], 'Scheduled Performing Physician Identification Sequence' );
     Add( $0010, [TTypeVR.vrSH], 'Scheduled Station Name' );
     Add( $0011, [TTypeVR.vrSH], 'Scheduled Procedure Step Location' );
     Add( $0012, [TTypeVR.vrLO], 'Pre-Medication' );
     Add( $0020, [TTypeVR.vrCS], 'Scheduled Procedure Step Status' );
     Add( $0026, [TTypeVR.vrSQ], 'Order Placer Identifier Sequence' );
     Add( $0027, [TTypeVR.vrSQ], 'Order Filler Identifier Sequence' );
     Add( $0031, [TTypeVR.vrUT], 'Local Namespace Entity ID' );
     Add( $0032, [TTypeVR.vrUT], 'Universal Entity ID' );
     Add( $0033, [TTypeVR.vrCS], 'Universal Entity ID Type' );
     Add( $0035, [TTypeVR.vrCS], 'Identifier Type Code' );
     Add( $0036, [TTypeVR.vrSQ], 'Assigning Facility Sequence' );
     Add( $0039, [TTypeVR.vrSQ], 'Assigning Jurisdiction Code Sequence' );
     Add( $003A, [TTypeVR.vrSQ], 'Assigning Agency or Department Code Sequence' );
     Add( $0100, [TTypeVR.vrSQ], 'Scheduled Procedure Step Sequence' );
     Add( $0220, [TTypeVR.vrSQ], 'Referenced Non-Image Composite SOP Instance Sequence' );
     Add( $0241, [TTypeVR.vrAE], 'Performed Station AE Title' );
     Add( $0242, [TTypeVR.vrSH], 'Performed Station Name' );
     Add( $0243, [TTypeVR.vrSH], 'Performed Location' );
     Add( $0244, [TTypeVR.vrDA], 'Performed Procedure Step Start Date' );
     Add( $0245, [TTypeVR.vrTM], 'Performed Procedure Step Start Time' );
     Add( $0250, [TTypeVR.vrDA], 'Performed Procedure Step End Date' );
     Add( $0251, [TTypeVR.vrTM], 'Performed Procedure Step End Time' );
     Add( $0252, [TTypeVR.vrCS], 'Performed Procedure Step Status' );
     Add( $0253, [TTypeVR.vrSH], 'Performed Procedure Step ID' );
     Add( $0254, [TTypeVR.vrLO], 'Performed Procedure Step Description' );
     Add( $0255, [TTypeVR.vrLO], 'Performed Procedure Type Description' );
     Add( $0260, [TTypeVR.vrSQ], 'Performed Protocol Code Sequence' );
     Add( $0261, [TTypeVR.vrCS], 'Performed Protocol Type' );
     Add( $0270, [TTypeVR.vrSQ], 'Scheduled Step Attributes Sequence' );
     Add( $0275, [TTypeVR.vrSQ], 'Request Attributes Sequence' );
     Add( $0280, [TTypeVR.vrST], 'Comments on the Performed Procedure Step' );
     Add( $0281, [TTypeVR.vrSQ], 'Performed Procedure Step Discontinuation Reason Code Sequence' );
     Add( $0293, [TTypeVR.vrSQ], 'Quantity Sequence' );
     Add( $0294, [TTypeVR.vrDS], 'Quantity' );
     Add( $0295, [TTypeVR.vrSQ], 'Measuring Units Sequence' );
     Add( $0296, [TTypeVR.vrSQ], 'Billing Item Sequence' );
     Add( $0300, [TTypeVR.vrUS], 'Total Time of Fluoroscopy' );
     Add( $0301, [TTypeVR.vrUS], 'Total Number of Exposures' );
     Add( $0302, [TTypeVR.vrUS], 'Entrance Dose' );
     Add( $0303, [TTypeVR.vrUS], 'Exposed Area' );
     Add( $0306, [TTypeVR.vrDS], 'Distance Source to Entrance' );
     Add( $0307, [TTypeVR.vrDS], 'Distance Source to Support' );
     Add( $030E, [TTypeVR.vrSQ], 'Exposure Dose Sequence' );
     Add( $0310, [TTypeVR.vrST], 'Comments on Radiation Dose' );
     Add( $0312, [TTypeVR.vrDS], 'X-Ray Output' );
     Add( $0314, [TTypeVR.vrDS], 'Half Value Layer' );
     Add( $0316, [TTypeVR.vrDS], 'Organ Dose' );
     Add( $0318, [TTypeVR.vrCS], 'Organ Exposed' );
     Add( $0320, [TTypeVR.vrSQ], 'Billing Procedure Step Sequence' );
     Add( $0321, [TTypeVR.vrSQ], 'Film Consumption Sequence' );
     Add( $0324, [TTypeVR.vrSQ], 'Billing Supplies and Devices Sequence' );
     Add( $0330, [TTypeVR.vrSQ], 'Referenced Procedure Step Sequence' );
     Add( $0340, [TTypeVR.vrSQ], 'Performed Series Sequence' );
     Add( $0400, [TTypeVR.vrLT], 'Comments on the Scheduled Procedure Step' );
     Add( $0440, [TTypeVR.vrSQ], 'Protocol Context Sequence' );
     Add( $0441, [TTypeVR.vrSQ], 'Content Item Modifier Sequence' );
     Add( $0500, [TTypeVR.vrSQ], 'Scheduled Specimen Sequence' );
     Add( $050A, [TTypeVR.vrLO], 'Specimen Accession Number' );
     Add( $0512, [TTypeVR.vrLO], 'Container Identifier' );
     Add( $0513, [TTypeVR.vrSQ], 'Issuer of the Container Identifier Sequence' );
     Add( $0515, [TTypeVR.vrSQ], 'Alternate Container Identifier Sequence' );
     Add( $0518, [TTypeVR.vrSQ], 'Container Type Code Sequence' );
     Add( $051A, [TTypeVR.vrLO], 'Container Description' );
     Add( $0520, [TTypeVR.vrSQ], 'Container Component Sequence' );
     Add( $0550, [TTypeVR.vrSQ], 'Specimen Sequence' );
     Add( $0551, [TTypeVR.vrLO], 'Specimen Identifier' );
     Add( $0552, [TTypeVR.vrSQ], 'Specimen Description Sequence (Trial)' );
     Add( $0553, [TTypeVR.vrST], 'Specimen Description (Trial)' );
     Add( $0554, [TTypeVR.vrUI], 'Specimen UID' );
     Add( $0555, [TTypeVR.vrSQ], 'Acquisition Context Sequence' );
     Add( $0556, [TTypeVR.vrST], 'Acquisition Context Description' );
     Add( $059A, [TTypeVR.vrSQ], 'Specimen Type Code Sequence' );
     Add( $0560, [TTypeVR.vrSQ], 'Specimen Description Sequence' );
     Add( $0562, [TTypeVR.vrSQ], 'Issuer of the Specimen Identifier Sequence' );
     Add( $0600, [TTypeVR.vrLO], 'Specimen Short Description' );
     Add( $0602, [TTypeVR.vrUT], 'Specimen Detailed Description' );
     Add( $0610, [TTypeVR.vrSQ], 'Specimen Preparation Sequence' );
     Add( $0612, [TTypeVR.vrSQ], 'Specimen Preparation Step Content Item Sequence' );
     Add( $0620, [TTypeVR.vrSQ], 'Specimen Localization Content Item Sequence' );
     Add( $06FA, [TTypeVR.vrLO], 'Slide Identifier' );
     Add( $071A, [TTypeVR.vrSQ], 'Image Center Point Coordinates Sequence' );
     Add( $072A, [TTypeVR.vrDS], 'X Offset in Slide Coordinate System' );
     Add( $073A, [TTypeVR.vrDS], 'Y Offset in Slide Coordinate System' );
     Add( $074A, [TTypeVR.vrDS], 'Z Offset in Slide Coordinate System' );
     Add( $08D8, [TTypeVR.vrSQ], 'Pixel Spacing Sequence' );
     Add( $08DA, [TTypeVR.vrSQ], 'Coordinate System Axis Code Sequence' );
     Add( $08EA, [TTypeVR.vrSQ], 'Measurement Units Code Sequence' );
     Add( $09F8, [TTypeVR.vrSQ], 'Vital Stain Code Sequence (Trial)' );
     Add( $1001, [TTypeVR.vrSH], 'Requested Procedure ID' );
     Add( $1002, [TTypeVR.vrLO], 'Reason for the Requested Procedure' );
     Add( $1003, [TTypeVR.vrSH], 'Requested Procedure Priority' );
     Add( $1004, [TTypeVR.vrLO], 'Patient Transport Arrangements' );
     Add( $1005, [TTypeVR.vrLO], 'Requested Procedure Location' );
     Add( $1006, [TTypeVR.vrSH], 'Placer Order Number / Procedure' );
     Add( $1007, [TTypeVR.vrSH], 'Filler Order Number / Procedure' );
     Add( $1008, [TTypeVR.vrLO], 'Confidentiality Code' );
     Add( $1009, [TTypeVR.vrSH], 'Reporting Priority' );
     Add( $100A, [TTypeVR.vrSQ], 'Reason for Requested Procedure Code Sequence' );
     Add( $1010, [TTypeVR.vrPN], 'Names of Intended Recipients of Results' );
     Add( $1011, [TTypeVR.vrSQ], 'Intended Recipients of Results Identification Sequence' );
     Add( $1012, [TTypeVR.vrSQ], 'Reason For Performed Procedure Code Sequence' );
     Add( $1060, [TTypeVR.vrLO], 'Requested Procedure Description (Trial)' );
     Add( $1101, [TTypeVR.vrSQ], 'Person Identification Code Sequence' );
     Add( $1102, [TTypeVR.vrST], 'Person''s Address' );
     Add( $1103, [TTypeVR.vrLO], 'Person''s Telephone Numbers' );
     Add( $1104, [TTypeVR.vrLT], 'Person''s Telecom Information' );
     Add( $1400, [TTypeVR.vrLT], 'Requested Procedure Comments' );
     Add( $2001, [TTypeVR.vrLO], 'Reason for the Imaging Service Request' );
     Add( $2004, [TTypeVR.vrDA], 'Issue Date of Imaging Service Request' );
     Add( $2005, [TTypeVR.vrTM], 'Issue Time of Imaging Service Request' );
     Add( $2006, [TTypeVR.vrSH], 'Placer Order Number / Imaging Service Request (Retired)' );
     Add( $2007, [TTypeVR.vrSH], 'Filler Order Number / Imaging Service Request (Retired)' );
     Add( $2008, [TTypeVR.vrPN], 'Order Entered By' );
     Add( $2009, [TTypeVR.vrSH], 'Order Enterer''s Location' );
     Add( $2010, [TTypeVR.vrSH], 'Order Callback Phone Number' );
     Add( $2011, [TTypeVR.vrLT], 'Order Callback Telecom Information' );
     Add( $2016, [TTypeVR.vrLO], 'Placer Order Number / Imaging Service Request' );
     Add( $2017, [TTypeVR.vrLO], 'Filler Order Number / Imaging Service Request' );
     Add( $2400, [TTypeVR.vrLT], 'Imaging Service Request Comments' );
     Add( $3001, [TTypeVR.vrLO], 'Confidentiality Constraint on Patient Data Description' );
     Add( $4001, [TTypeVR.vrCS], 'General Purpose Scheduled Procedure Step Status' );
     Add( $4002, [TTypeVR.vrCS], 'General Purpose Performed Procedure Step Status' );
     Add( $4003, [TTypeVR.vrCS], 'General Purpose Scheduled Procedure Step Priority' );
     Add( $4004, [TTypeVR.vrSQ], 'Scheduled Processing Applications Code Sequence' );
     Add( $4005, [TTypeVR.vrDT], 'Scheduled Procedure Step Start DateTime' );
     Add( $4006, [TTypeVR.vrCS], 'Multiple Copies Flag' );
     Add( $4007, [TTypeVR.vrSQ], 'Performed Processing Applications Code Sequence' );
     Add( $4009, [TTypeVR.vrSQ], 'Human Performer Code Sequence' );
     Add( $4010, [TTypeVR.vrDT], 'Scheduled Procedure Step Modification DateTime' );
     Add( $4011, [TTypeVR.vrDT], 'Expected Completion DateTime' );
     Add( $4015, [TTypeVR.vrSQ], 'Resulting General Purpose Performed Procedure Steps Sequence' );
     Add( $4016, [TTypeVR.vrSQ], 'Referenced General Purpose Scheduled Procedure Step Sequence' );
     Add( $4018, [TTypeVR.vrSQ], 'Scheduled Workitem Code Sequence' );
     Add( $4019, [TTypeVR.vrSQ], 'Performed Workitem Code Sequence' );
     Add( $4020, [TTypeVR.vrCS], 'Input Availability Flag' );
     Add( $4021, [TTypeVR.vrSQ], 'Input Information Sequence' );
     Add( $4022, [TTypeVR.vrSQ], 'Relevant Information Sequence' );
     Add( $4023, [TTypeVR.vrUI], 'Referenced General Purpose Scheduled Procedure Step Transaction UID' );
     Add( $4025, [TTypeVR.vrSQ], 'Scheduled Station Name Code Sequence' );
     Add( $4026, [TTypeVR.vrSQ], 'Scheduled Station Class Code Sequence' );
     Add( $4027, [TTypeVR.vrSQ], 'Scheduled Station Geographic Location Code Sequence' );
     Add( $4028, [TTypeVR.vrSQ], 'Performed Station Name Code Sequence' );
     Add( $4029, [TTypeVR.vrSQ], 'Performed Station Class Code Sequence' );
     Add( $4030, [TTypeVR.vrSQ], 'Performed Station Geographic Location Code Sequence' );
     Add( $4031, [TTypeVR.vrSQ], 'Requested Subsequent Workitem Code Sequence' );
     Add( $4032, [TTypeVR.vrSQ], 'Non-DICOM Output Code Sequence' );
     Add( $4033, [TTypeVR.vrSQ], 'Output Information Sequence' );
     Add( $4034, [TTypeVR.vrSQ], 'Scheduled Human Performers Sequence' );
     Add( $4035, [TTypeVR.vrSQ], 'Actual Human Performers Sequence' );
     Add( $4036, [TTypeVR.vrLO], 'Human Performer''s Organization' );
     Add( $4037, [TTypeVR.vrPN], 'Human Performer''s Name' );
     Add( $4040, [TTypeVR.vrCS], 'Raw Data Handling' );
     Add( $4041, [TTypeVR.vrCS], 'Input Readiness State' );
     Add( $4050, [TTypeVR.vrDT], 'Performed Procedure Step Start DateTime' );
     Add( $4051, [TTypeVR.vrDT], 'Performed Procedure Step End DateTime' );
     Add( $4052, [TTypeVR.vrDT], 'Procedure Step Cancellation DateTime' );
     Add( $4070, [TTypeVR.vrSQ], 'Output Destination Sequence' );
     Add( $4071, [TTypeVR.vrSQ], 'DICOM Storage Sequence' );
     Add( $4072, [TTypeVR.vrSQ], 'STOW-RS Storage Sequence' );
     Add( $4073, [TTypeVR.vrUR], 'Storage URL' );
     Add( $4074, [TTypeVR.vrSQ], 'XDS Storage Sequence' );
     Add( $8302, [TTypeVR.vrDS], 'Entrance Dose in mGy' );
     Add( $9092, [TTypeVR.vrSQ], 'Parametric Map Frame Type Sequence' );
     Add( $9094, [TTypeVR.vrSQ], 'Referenced Image Real World Value Mapping Sequence' );
     Add( $9096, [TTypeVR.vrSQ], 'Real World Value Mapping Sequence' );
     Add( $9098, [TTypeVR.vrSQ], 'Pixel Value Mapping Code Sequence' );
     Add( $9210, [TTypeVR.vrSH], 'LUT Label' );
     Add( $9211, [TTypeVR.vrUS,TTypeVR.vrSS], 'Real World Value Last Value Mapped' );
     Add( $9212, [TTypeVR.vrFD], 'Real World Value LUT Data' );
     Add( $9213, [TTypeVR.vrFD], 'Double Float Real World Value Last Value Mapped' );
     Add( $9214, [TTypeVR.vrFD], 'Double Float Real World Value First Value Mapped' );
     Add( $9216, [TTypeVR.vrUS,TTypeVR.vrSS], 'Real World Value First Value Mapped' );
     Add( $9220, [TTypeVR.vrSQ], 'Quantity Definition Sequence' );
     Add( $9224, [TTypeVR.vrFD], 'Real World Value Intercept' );
     Add( $9225, [TTypeVR.vrFD], 'Real World Value Slope' );
     Add( $A007, [TTypeVR.vrCS], 'Findings Flag (Trial)' );
     Add( $A010, [TTypeVR.vrCS], 'Relationship Type' );
     Add( $A020, [TTypeVR.vrSQ], 'Findings Sequence (Trial)' );
     Add( $A021, [TTypeVR.vrUI], 'Findings Group UID (Trial)' );
     Add( $A022, [TTypeVR.vrUI], 'Referenced Findings Group UID (Trial)' );
     Add( $A023, [TTypeVR.vrDA], 'Findings Group Recording Date (Trial)' );
     Add( $A024, [TTypeVR.vrTM], 'Findings Group Recording Time (Trial)' );
     Add( $A026, [TTypeVR.vrSQ], 'Findings Source Category Code Sequence (Trial)' );
     Add( $A027, [TTypeVR.vrLO], 'Verifying Organization' );
     Add( $A028, [TTypeVR.vrSQ], 'Documenting Organization Identifier Code Sequence (Trial)' );
     Add( $A030, [TTypeVR.vrDT], 'Verification DateTime' );
     Add( $A032, [TTypeVR.vrDT], 'Observation DateTime' );
     Add( $A040, [TTypeVR.vrCS], 'Value Type' );
     Add( $A043, [TTypeVR.vrSQ], 'Concept Name Code Sequence' );
     Add( $A047, [TTypeVR.vrLO], 'Measurement Precision Description (Trial)' );
     Add( $A050, [TTypeVR.vrCS], 'Continuity Of Content' );
     Add( $A057, [TTypeVR.vrCS], 'Urgency or Priority Alerts (Trial)' );
     Add( $A060, [TTypeVR.vrLO], 'Sequencing Indicator (Trial)' );
     Add( $A066, [TTypeVR.vrSQ], 'Document Identifier Code Sequence (Trial)' );
     Add( $A067, [TTypeVR.vrPN], 'Document Author (Trial)' );
     Add( $A068, [TTypeVR.vrSQ], 'Document Author Identifier Code Sequence (Trial)' );
     Add( $A070, [TTypeVR.vrSQ], 'Identifier Code Sequence (Trial)' );
     Add( $A073, [TTypeVR.vrSQ], 'Verifying Observer Sequence' );
     Add( $A074, [TTypeVR.vrOB], 'Object Binary Identifier (Trial)' );
     Add( $A075, [TTypeVR.vrPN], 'Verifying Observer Name' );
     Add( $A076, [TTypeVR.vrSQ], 'Documenting Observer Identifier Code Sequence (Trial)' );
     Add( $A078, [TTypeVR.vrSQ], 'Author Observer Sequence' );
     Add( $A07A, [TTypeVR.vrSQ], 'Participant Sequence' );
     Add( $A07C, [TTypeVR.vrSQ], 'Custodial Organization Sequence' );
     Add( $A080, [TTypeVR.vrCS], 'Participation Type' );
     Add( $A082, [TTypeVR.vrDT], 'Participation DateTime' );
     Add( $A084, [TTypeVR.vrCS], 'Observer Type' );
     Add( $A085, [TTypeVR.vrSQ], 'Procedure Identifier Code Sequence (Trial)' );
     Add( $A088, [TTypeVR.vrSQ], 'Verifying Observer Identification Code Sequence' );
     Add( $A089, [TTypeVR.vrOB], 'Object Directory Binary Identifier (Trial)' );
     Add( $A090, [TTypeVR.vrSQ], 'Equivalent CDA Document Sequence' );
     Add( $A0B0, [TTypeVR.vrUS], 'Referenced Waveform Channels' );
     Add( $A110, [TTypeVR.vrDA], 'Date of Document or Verbal Transaction (Trial)' );
     Add( $A112, [TTypeVR.vrTM], 'Time of Document Creation or Verbal Transaction (Trial)' );
     Add( $A120, [TTypeVR.vrDT], 'DateTime' );
     Add( $A121, [TTypeVR.vrDA], 'Date' );
     Add( $A122, [TTypeVR.vrTM], 'Time' );
     Add( $A123, [TTypeVR.vrPN], 'Person Name' );
     Add( $A124, [TTypeVR.vrUI], 'UID' );
     Add( $A125, [TTypeVR.vrCS], 'Report Status ID (Trial)' );
     Add( $A130, [TTypeVR.vrCS], 'Temporal Range Type' );
     Add( $A132, [TTypeVR.vrUL], 'Referenced Sample Positions' );
     Add( $A136, [TTypeVR.vrUS], 'Referenced Frame Numbers' );
     Add( $A138, [TTypeVR.vrDS], 'Referenced Time Offsets' );
     Add( $A13A, [TTypeVR.vrDT], 'Referenced DateTime' );
     Add( $A160, [TTypeVR.vrUT], 'Text Value' );
     Add( $A161, [TTypeVR.vrFD], 'Floating Point Value' );
     Add( $A162, [TTypeVR.vrSL], 'Rational Numerator Value' );
     Add( $A163, [TTypeVR.vrUL], 'Rational Denominator Value' );
     Add( $A167, [TTypeVR.vrSQ], 'Observation Category Code Sequence (Trial)' );
     Add( $A168, [TTypeVR.vrSQ], 'Concept Code Sequence' );
     Add( $A16A, [TTypeVR.vrST], 'Bibliographic Citation (Trial)' );
     Add( $A170, [TTypeVR.vrSQ], 'Purpose of Reference Code Sequence' );  //Tag (0040,A170) was defined as Observation Class with a VR of "CS" in the Frozen Draft version of Supplement 23 "Structured Reporting" (from November 20, 1997). Implementers of the standard should be warned that old objects of the associated SOP Classes exist and that they use this VR instead of "SQ". In particular, when reading objects with Implicit VR Little Endian transfer syntax, this inconsistency might result in parsing errors if not handled appropriately.
     Add( $A171, [TTypeVR.vrUI], 'Observation UID' );
     Add( $A172, [TTypeVR.vrUI], 'Referenced Observation UID (Trial)' );
     Add( $A173, [TTypeVR.vrCS], 'Referenced Observation Class (Trial)' );
     Add( $A174, [TTypeVR.vrCS], 'Referenced Object Observation Class (Trial)' );
     Add( $A180, [TTypeVR.vrUS], 'Annotation Group Number' );
     Add( $A192, [TTypeVR.vrDA], 'Observation Date (Trial)' );
     Add( $A193, [TTypeVR.vrTM], 'Observation Time (Trial)' );
     Add( $A194, [TTypeVR.vrCS], 'Measurement Automation (Trial)' );
     Add( $A195, [TTypeVR.vrSQ], 'Modifier Code Sequence' );
     Add( $A224, [TTypeVR.vrST], 'Identification Description (Trial)' );
     Add( $A290, [TTypeVR.vrCS], 'Coordinates Set Geometric Type (Trial)' );
     Add( $A296, [TTypeVR.vrSQ], 'Algorithm Code Sequence (Trial)' );
     Add( $A297, [TTypeVR.vrST], 'Algorithm Description (Trial)' );
     Add( $A29A, [TTypeVR.vrSL], 'Pixel Coordinates Set (Trial)' );
     Add( $A300, [TTypeVR.vrSQ], 'Measured Value Sequence' );
     Add( $A301, [TTypeVR.vrSQ], 'Numeric Value Qualifier Code Sequence' );
     Add( $A307, [TTypeVR.vrPN], 'Current Observer (Trial)' );
     Add( $A30A, [TTypeVR.vrDS], 'Numeric Value' );
     Add( $A313, [TTypeVR.vrSQ], 'Referenced Accession Sequence (Trial)' );
     Add( $A33A, [TTypeVR.vrST], 'Report Status Comment (Trial)' );
     Add( $A340, [TTypeVR.vrSQ], 'Procedure Context Sequence (Trial)' );
     Add( $A352, [TTypeVR.vrPN], 'Verbal Source (Trial)' );
     Add( $A353, [TTypeVR.vrST], 'Address (Trial)' );
     Add( $A354, [TTypeVR.vrLO], 'Telephone Number (Trial)' );
     Add( $A358, [TTypeVR.vrSQ], 'Verbal Source Identifier Code Sequence (Trial)' );
     Add( $A360, [TTypeVR.vrSQ], 'Predecessor Documents Sequence' );
     Add( $A370, [TTypeVR.vrSQ], 'Referenced Request Sequence' );
     Add( $A372, [TTypeVR.vrSQ], 'Performed Procedure Code Sequence' );
     Add( $A375, [TTypeVR.vrSQ], 'Current Requested Procedure Evidence Sequence' );
     Add( $A380, [TTypeVR.vrSQ], 'Report Detail Sequence (Trial)' );
     Add( $A385, [TTypeVR.vrSQ], 'Pertinent Other Evidence Sequence' );
     Add( $A390, [TTypeVR.vrSQ], 'HL7 Structured Document Reference Sequence' );
     Add( $A402, [TTypeVR.vrUI], 'Observation Subject UID (Trial)' );
     Add( $A403, [TTypeVR.vrCS], 'Observation Subject Class (Trial)' );
     Add( $A404, [TTypeVR.vrSQ], 'Observation Subject Type Code Sequence (Trial)' );
     Add( $A491, [TTypeVR.vrCS], 'Completion Flag' );
     Add( $A492, [TTypeVR.vrLO], 'Completion Flag Description' );
     Add( $A493, [TTypeVR.vrCS], 'Verification Flag' );
     Add( $A494, [TTypeVR.vrCS], 'Archive Requested' );
     Add( $A496, [TTypeVR.vrCS], 'Preliminary Flag' );
     Add( $A504, [TTypeVR.vrSQ], 'Content Template Sequence' );
     Add( $A525, [TTypeVR.vrSQ], 'Identical Documents Sequence' );
     Add( $A600, [TTypeVR.vrCS], 'Observation Subject Context Flag (Trial)' );
     Add( $A601, [TTypeVR.vrCS], 'Observer Context Flag (Trial)' );
     Add( $A603, [TTypeVR.vrCS], 'Procedure Context Flag (Trial)' );
     Add( $A730, [TTypeVR.vrSQ], 'Content Sequence' );
     Add( $A731, [TTypeVR.vrSQ], 'Relationship Sequence (Trial)' );
     Add( $A732, [TTypeVR.vrSQ], 'Relationship Type Code Sequence (Trial)' );
     Add( $A744, [TTypeVR.vrSQ], 'Language Code Sequence (Trial)' );
     Add( $A992, [TTypeVR.vrST], 'Uniform Resource Locator (Trial)' );
     Add( $B020, [TTypeVR.vrSQ], 'Waveform Annotation Sequence' );
     Add( $DB00, [TTypeVR.vrCS], 'Template Identifier' );
     Add( $DB06, [TTypeVR.vrDT], 'Template Version' );
     Add( $DB07, [TTypeVR.vrDT], 'Template Local Version' );
     Add( $DB0B, [TTypeVR.vrCS], 'Template Extension Flag' );
     Add( $DB0C, [TTypeVR.vrUI], 'Template Extension Organization UID' );
     Add( $DB0D, [TTypeVR.vrUI], 'Template Extension Creator UID' );
     Add( $DB73, [TTypeVR.vrUL], 'Referenced Content Item Identifier' );
     Add( $E001, [TTypeVR.vrST], 'HL7 Instance Identifier' );
     Add( $E004, [TTypeVR.vrDT], 'HL7 Document Effective Time' );
     Add( $E006, [TTypeVR.vrSQ], 'HL7 Document Type Code Sequence' );
     Add( $E008, [TTypeVR.vrSQ], 'Document Class Code Sequence' );
     Add( $E010, [TTypeVR.vrUR], 'Retrieve URI' );
     Add( $E011, [TTypeVR.vrUI], 'Retrieve Location UID' );
     Add( $E020, [TTypeVR.vrCS], 'Type of Instances' );
     Add( $E021, [TTypeVR.vrSQ], 'DICOM Retrieval Sequence' );
     Add( $E022, [TTypeVR.vrSQ], 'DICOM Media Retrieval Sequence' );
     Add( $E023, [TTypeVR.vrSQ], 'WADO Retrieval Sequence' );
     Add( $E024, [TTypeVR.vrSQ], 'XDS Retrieval Sequence' );
     Add( $E025, [TTypeVR.vrSQ], 'WADO-RS Retrieval Sequence' );
     Add( $E030, [TTypeVR.vrUI], 'Repository Unique ID' );
     Add( $E031, [TTypeVR.vrUI], 'Home Community ID' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
