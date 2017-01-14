unit LUX.DICOM.Tags.G0008;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0008

     TDICOMElems0008 = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0008

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0008.Create;
begin
     inherited;

     Add( $0000, TKindVR.vrUL, 'Identifying Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, TKindVR.vrUL, 'Length to End' );
     Add( $0005, TKindVR.vrCS, 'Specific Character Set' );
     Add( $0006, TKindVR.vrSQ, 'Language Code Sequence' );
     Add( $0008, TKindVR.vrCS, 'Image Type' );
     Add( $0010, TKindVR.vrSH, 'Recognition Code' );
     Add( $0012, TKindVR.vrDA, 'Instance Creation Date' );
     Add( $0013, TKindVR.vrTM, 'Instance Creation Time' );
     Add( $0014, TKindVR.vrUI, 'Instance Creator UID' );
     Add( $0015, TKindVR.vrDT, 'Instance Coercion DateTime' );
     Add( $0016, TKindVR.vrUI, 'SOP Class UID' );
     Add( $0018, TKindVR.vrUI, 'SOP Instance UID' );
     Add( $001A, TKindVR.vrUI, 'Related General SOP Class UID' );
     Add( $001B, TKindVR.vrUI, 'Original Specialized SOP Class UID' );
     Add( $0020, TKindVR.vrDA, 'Study Date' );
     Add( $0021, TKindVR.vrDA, 'Series Date' );
     Add( $0022, TKindVR.vrDA, 'Acquisition Date' );
     Add( $0023, TKindVR.vrDA, 'Content Date' );
     Add( $0024, TKindVR.vrDA, 'Overlay Date' );
     Add( $0025, TKindVR.vrDA, 'Curve Date' );
     Add( $002A, TKindVR.vrDT, 'Acquisition DateTime' );
     Add( $0030, TKindVR.vrTM, 'Study Time' );
     Add( $0031, TKindVR.vrTM, 'Series Time' );
     Add( $0032, TKindVR.vrTM, 'Acquisition Time' );
     Add( $0033, TKindVR.vrTM, 'Content Time' );
     Add( $0034, TKindVR.vrTM, 'Overlay Time' );
     Add( $0035, TKindVR.vrTM, 'Curve Time' );
     Add( $0040, TKindVR.vrUS, 'Data Set Type' );
     Add( $0041, TKindVR.vrLO, 'Data Set Subtype' );
     Add( $0042, TKindVR.vrCS, 'Nuclear Medicine Series Type' );
     Add( $0050, TKindVR.vrSH, 'Accession Number' );
     Add( $0051, TKindVR.vrSQ, 'Issuer of Accession Number Sequence' );
     Add( $0052, TKindVR.vrCS, 'Query/Retrieve Level' );
     Add( $0053, TKindVR.vrCS, 'Query/Retrieve View' );
     Add( $0054, TKindVR.vrAE, 'Retrieve AE Title' );
     Add( $0055, TKindVR.vrAE, 'Station AE Title' );
     Add( $0056, TKindVR.vrCS, 'Instance Availability' );
     Add( $0058, TKindVR.vrUI, 'Failed SOP Instance UID List' );
     Add( $0060, TKindVR.vrCS, 'Modality' );
     Add( $0061, TKindVR.vrCS, 'Modalities in Study' );
     Add( $0062, TKindVR.vrUI, 'SOP Classes in Study' );
     Add( $0064, TKindVR.vrCS, 'Conversion Type' );
     Add( $0068, TKindVR.vrCS, 'Presentation Intent Type' );
     Add( $0070, TKindVR.vrLO, 'Manufacturer' );
     Add( $0080, TKindVR.vrLO, 'Institution Name' );
     Add( $0081, TKindVR.vrST, 'Institution Address' );
     Add( $0082, TKindVR.vrSQ, 'Institution Code Sequence' );
     Add( $0090, TKindVR.vrPN, 'Referring Physician''s Name' );
     Add( $0092, TKindVR.vrST, 'Referring Physician''s Address' );
     Add( $0094, TKindVR.vrSH, 'Referring Physician''s Telephone Numbers' );
     Add( $0096, TKindVR.vrSQ, 'Referring Physician Identification Sequence' );
     Add( $009C, TKindVR.vrPN, 'Consulting Physician''s Name' );
     Add( $009D, TKindVR.vrSQ, 'Consulting Physician Identification Sequence' );
     Add( $0100, TKindVR.vrSH, 'Code Value' );
     Add( $0101, TKindVR.vrLO, 'Extended Code Value' );
     Add( $0102, TKindVR.vrSH, 'Coding Scheme Designator' );
     Add( $0103, TKindVR.vrSH, 'Coding Scheme Version' );
     Add( $0104, TKindVR.vrLO, 'Code Meaning' );
     Add( $0105, TKindVR.vrCS, 'Mapping Resource' );
     Add( $0106, TKindVR.vrDT, 'Context Group Version' );
     Add( $0107, TKindVR.vrDT, 'Context Group Local Version' );
     Add( $0108, TKindVR.vrLT, 'Extended Code Meaning' );
     Add( $010B, TKindVR.vrCS, 'Context Group Extension Flag' );
     Add( $010C, TKindVR.vrUI, 'Coding Scheme UID' );
     Add( $010D, TKindVR.vrUI, 'Context Group Extension Creator UID' );
     Add( $010F, TKindVR.vrCS, 'Context Identifier' );
     Add( $0110, TKindVR.vrSQ, 'Coding Scheme Identification Sequence' );
     Add( $0112, TKindVR.vrLO, 'Coding Scheme Registry' );
     Add( $0114, TKindVR.vrST, 'Coding Scheme External ID' );
     Add( $0115, TKindVR.vrST, 'Coding Scheme Name' );
     Add( $0116, TKindVR.vrST, 'Coding Scheme Responsible Organization' );
     Add( $0117, TKindVR.vrUI, 'Context UID' );
     Add( $0118, TKindVR.vrUI, 'Mapping Resource UID' );
     Add( $0119, TKindVR.vrUC, 'Long Code Value' );
     Add( $0120, TKindVR.vrUR, 'URN Code Value' );
     Add( $0121, TKindVR.vrSQ, 'Equivalent Code Sequence' );
     Add( $0122, TKindVR.vrLO, 'Mapping Resource Name' );
     Add( $0123, TKindVR.vrSQ, 'Context Group Identification Sequence' );
     Add( $0124, TKindVR.vrSQ, 'Mapping Resource Identification Sequence' );
     Add( $0201, TKindVR.vrSH, 'Timezone Offset From UTC' );
     Add( $0220, TKindVR.vrSQ, 'Responsible Group Code Sequence' );
     Add( $0221, TKindVR.vrCS, 'Equipment Modality' );
     Add( $0222, TKindVR.vrLO, 'Manufacturer''s Related Model Group' );
     Add( $0300, TKindVR.vrSQ, 'Private Data Element Characteristics Sequence' );
     Add( $0301, TKindVR.vrUS, 'Private Group Reference' );
     Add( $0302, TKindVR.vrLO, 'Private Creator Reference' );
     Add( $0303, TKindVR.vrCS, 'Block Identifying Information Status' );
     Add( $0304, TKindVR.vrUS, 'Nonidentifying Private Elements' );
     Add( $0306, TKindVR.vrUS, 'Identifying Private Elements' );
     Add( $0305, TKindVR.vrSQ, 'Deidentification Action Sequence' );
     Add( $0307, TKindVR.vrCS, 'Deidentification Action' );
     Add( $0308, TKindVR.vrUS, 'Private Data Element' );
     Add( $0309, TKindVR.vrUL, 'Private Data Element Value Multiplicity' );
     Add( $030A, TKindVR.vrCS, 'Private Data Element Value Representation' );
     Add( $030B, TKindVR.vrUL, 'Private Data Element Number of Items' );
     Add( $030C, TKindVR.vrUC, 'Private Data Element Name' );
     Add( $030D, TKindVR.vrUC, 'Private Data Element Keyword' );
     Add( $030E, TKindVR.vrUT, 'Private Data Element Description' );
     Add( $030F, TKindVR.vrUT, 'Private Data Element Encoding' );
     Add( $0310, TKindVR.vrSQ, 'Private Data Element Definition Sequence' );
     Add( $1000, TKindVR.vrAE, 'Network ID' );
     Add( $1010, TKindVR.vrSH, 'Station Name' );
     Add( $1030, TKindVR.vrLO, 'Study Description' );
     Add( $1032, TKindVR.vrSQ, 'Procedure Code Sequence' );
     Add( $103E, TKindVR.vrLO, 'Series Description' );
     Add( $103F, TKindVR.vrSQ, 'Series Description Code Sequence' );
     Add( $1040, TKindVR.vrLO, 'Institutional Department Name' );
     Add( $1048, TKindVR.vrPN, 'Physician(s) of Record' );
     Add( $1049, TKindVR.vrSQ, 'Physician(s) of Record Identification Sequence' );
     Add( $1050, TKindVR.vrPN, 'Performing Physician''s Name' );
     Add( $1052, TKindVR.vrSQ, 'Performing Physician Identification Sequence' );
     Add( $1060, TKindVR.vrPN, 'Name of Physician(s) Reading Study' );
     Add( $1062, TKindVR.vrSQ, 'Physician(s) Reading Study Identification Sequence' );
     Add( $1070, TKindVR.vrPN, 'Operators'' Name' );
     Add( $1072, TKindVR.vrSQ, 'Operator Identification Sequence' );
     Add( $1080, TKindVR.vrLO, 'Admitting Diagnoses Description' );
     Add( $1084, TKindVR.vrSQ, 'Admitting Diagnoses Code Sequence' );
     Add( $1090, TKindVR.vrLO, 'Manufacturer''s Model Name' );
     Add( $1100, TKindVR.vrSQ, 'Referenced Results Sequence' );
     Add( $1110, TKindVR.vrSQ, 'Referenced Study Sequence' );
     Add( $1111, TKindVR.vrSQ, 'Referenced Performed Procedure Step Sequence' );
     Add( $1115, TKindVR.vrSQ, 'Referenced Series Sequence' );
     Add( $1120, TKindVR.vrSQ, 'Referenced Patient Sequence' );
     Add( $1125, TKindVR.vrSQ, 'Referenced Visit Sequence' );
     Add( $1130, TKindVR.vrSQ, 'Referenced Overlay Sequence' );
     Add( $1134, TKindVR.vrSQ, 'Referenced Stereometric Instance Sequence' );
     Add( $113A, TKindVR.vrSQ, 'Referenced Waveform Sequence' );
     Add( $1140, TKindVR.vrSQ, 'Referenced Image Sequence' );
     Add( $1145, TKindVR.vrSQ, 'Referenced Curve Sequence' );
     Add( $114A, TKindVR.vrSQ, 'Referenced Instance Sequence' );
     Add( $114B, TKindVR.vrSQ, 'Referenced Real World Value Mapping Instance Sequence' );
     Add( $1150, TKindVR.vrUI, 'Referenced SOP Class UID' );
     Add( $1155, TKindVR.vrUI, 'Referenced SOP Instance UID' );
     Add( $115A, TKindVR.vrUI, 'SOP Classes Supported' );
     Add( $1160, TKindVR.vrIS, 'Referenced Frame Number' );
     Add( $1161, TKindVR.vrUL, 'Simple Frame List' );
     Add( $1162, TKindVR.vrUL, 'Calculated Frame List' );
     Add( $1163, TKindVR.vrFD, 'Time Range' );
     Add( $1164, TKindVR.vrSQ, 'Frame Extraction Sequence' );
     Add( $1167, TKindVR.vrUI, 'Multi-frame Source SOP Instance UID' );
     Add( $1190, TKindVR.vrUR, 'Retrieve URL' );
     Add( $1195, TKindVR.vrUI, 'Transaction UID' );
     Add( $1196, TKindVR.vrUS, 'Warning Reason' );
     Add( $1197, TKindVR.vrUS, 'Failure Reason' );
     Add( $1198, TKindVR.vrSQ, 'Failed SOP Sequence' );
     Add( $1199, TKindVR.vrSQ, 'Referenced SOP Sequence' );
     Add( $119A, TKindVR.vrSQ, 'Other Failures Sequence' );
     Add( $1200, TKindVR.vrSQ, 'Studies Containing Other Referenced Instances Sequence' );
     Add( $1250, TKindVR.vrSQ, 'Related Series Sequence' );
     Add( $2110, TKindVR.vrCS, 'Lossy Image Compression (Retired)' );
     Add( $2111, TKindVR.vrST, 'Derivation Description' );
     Add( $2112, TKindVR.vrSQ, 'Source Image Sequence' );
     Add( $2120, TKindVR.vrSH, 'Stage Name' );
     Add( $2122, TKindVR.vrIS, 'Stage Number' );
     Add( $2124, TKindVR.vrIS, 'Number of Stages' );
     Add( $2127, TKindVR.vrSH, 'View Name' );
     Add( $2128, TKindVR.vrIS, 'View Number' );
     Add( $2129, TKindVR.vrIS, 'Number of Event Timers' );
     Add( $212A, TKindVR.vrIS, 'Number of Views in Stage' );
     Add( $2130, TKindVR.vrDS, 'Event Elapsed Time(s)' );
     Add( $2132, TKindVR.vrLO, 'Event Timer Name(s)' );
     Add( $2133, TKindVR.vrSQ, 'Event Timer Sequence' );
     Add( $2134, TKindVR.vrFD, 'Event Time Offset' );
     Add( $2135, TKindVR.vrSQ, 'Event Code Sequence' );
     Add( $2142, TKindVR.vrIS, 'Start Trim' );
     Add( $2143, TKindVR.vrIS, 'Stop Trim' );
     Add( $2144, TKindVR.vrIS, 'Recommended Display Frame Rate' );
     Add( $2200, TKindVR.vrCS, 'Transducer Position' );
     Add( $2204, TKindVR.vrCS, 'Transducer Orientation' );
     Add( $2208, TKindVR.vrCS, 'Anatomic Structure' );
     Add( $2218, TKindVR.vrSQ, 'Anatomic Region Sequence' );
     Add( $2220, TKindVR.vrSQ, 'Anatomic Region Modifier Sequence' );
     Add( $2228, TKindVR.vrSQ, 'Primary Anatomic Structure Sequence' );
     Add( $2229, TKindVR.vrSQ, 'Anatomic Structure, Space or Region Sequence' );
     Add( $2230, TKindVR.vrSQ, 'Primary Anatomic Structure Modifier Sequence' );
     Add( $2240, TKindVR.vrSQ, 'Transducer Position Sequence' );
     Add( $2242, TKindVR.vrSQ, 'Transducer Position Modifier Sequence' );
     Add( $2244, TKindVR.vrSQ, 'Transducer Orientation Sequence' );
     Add( $2246, TKindVR.vrSQ, 'Transducer Orientation Modifier Sequence' );
     Add( $2251, TKindVR.vrSQ, 'Anatomic Structure Space Or Region Code Sequence (Trial)' );
     Add( $2253, TKindVR.vrSQ, 'Anatomic Portal Of Entrance Code Sequence (Trial)' );
     Add( $2255, TKindVR.vrSQ, 'Anatomic Approach Direction Code Sequence (Trial)' );
     Add( $2256, TKindVR.vrST, 'Anatomic Perspective Description (Trial)' );
     Add( $2257, TKindVR.vrSQ, 'Anatomic Perspective Code Sequence (Trial)' );
     Add( $2258, TKindVR.vrST, 'Anatomic Location Of Examining Instrument Description (Trial)' );
     Add( $2259, TKindVR.vrSQ, 'Anatomic Location Of Examining Instrument Code Sequence (Trial)' );
     Add( $225A, TKindVR.vrSQ, 'Anatomic Structure Space Or Region Modifier Code Sequence (Trial)' );
     Add( $225C, TKindVR.vrSQ, 'On Axis Background Anatomic Structure Code Sequence (Trial)' );
     Add( $3001, TKindVR.vrSQ, 'Alternate Representation Sequence' );
     Add( $3010, TKindVR.vrUI, 'Irradiation Event UID' );
     Add( $3011, TKindVR.vrSQ, 'Source Irradiation Event Sequence' );
     Add( $3012, TKindVR.vrUI, 'Radiopharmaceutical Administration Event UID' );
     Add( $4000, TKindVR.vrLT, 'Identifying Comments' );
     Add( $9007, TKindVR.vrCS, 'Frame Type' );
     Add( $9092, TKindVR.vrSQ, 'Referenced Image Evidence Sequence' );
     Add( $9121, TKindVR.vrSQ, 'Referenced Raw Data Sequence' );
     Add( $9123, TKindVR.vrUI, 'Creator-Version UID' );
     Add( $9124, TKindVR.vrSQ, 'Derivation Image Sequence' );
     Add( $9154, TKindVR.vrSQ, 'Source Image Evidence Sequence' );
     Add( $9205, TKindVR.vrCS, 'Pixel Presentation' );
     Add( $9206, TKindVR.vrCS, 'Volumetric Properties' );
     Add( $9207, TKindVR.vrCS, 'Volume Based Calculation Technique' );
     Add( $9208, TKindVR.vrCS, 'Complex Image Component' );
     Add( $9209, TKindVR.vrCS, 'Acquisition Contrast' );
     Add( $9215, TKindVR.vrSQ, 'Derivation Code Sequence' );
     Add( $9237, TKindVR.vrSQ, 'Referenced Presentation State Sequence' );
     Add( $9410, TKindVR.vrSQ, 'Referenced Other Plane Sequence' );
     Add( $9458, TKindVR.vrSQ, 'Frame Display Sequence' );
     Add( $9459, TKindVR.vrFL, 'Recommended Display Frame Rate in Float' );
     Add( $9460, TKindVR.vrCS, 'Skip Frame Range Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
