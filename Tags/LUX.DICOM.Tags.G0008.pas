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

     Add( $0000, [TTypeVR.vrUL], 'Identifying Group Length' );

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, [TTypeVR.vrUL], 'Length to End' );
     Add( $0005, [TTypeVR.vrCS], 'Specific Character Set' );
     Add( $0006, [TTypeVR.vrSQ], 'Language Code Sequence' );
     Add( $0008, [TTypeVR.vrCS], 'Image Type' );
     Add( $0010, [TTypeVR.vrSH], 'Recognition Code' );
     Add( $0012, [TTypeVR.vrDA], 'Instance Creation Date' );
     Add( $0013, [TTypeVR.vrTM], 'Instance Creation Time' );
     Add( $0014, [TTypeVR.vrUI], 'Instance Creator UID' );
     Add( $0015, [TTypeVR.vrDT], 'Instance Coercion DateTime' );
     Add( $0016, [TTypeVR.vrUI], 'SOP Class UID' );
     Add( $0018, [TTypeVR.vrUI], 'SOP Instance UID' );
     Add( $001A, [TTypeVR.vrUI], 'Related General SOP Class UID' );
     Add( $001B, [TTypeVR.vrUI], 'Original Specialized SOP Class UID' );
     Add( $0020, [TTypeVR.vrDA], 'Study Date' );
     Add( $0021, [TTypeVR.vrDA], 'Series Date' );
     Add( $0022, [TTypeVR.vrDA], 'Acquisition Date' );
     Add( $0023, [TTypeVR.vrDA], 'Content Date' );
     Add( $0024, [TTypeVR.vrDA], 'Overlay Date' );
     Add( $0025, [TTypeVR.vrDA], 'Curve Date' );
     Add( $002A, [TTypeVR.vrDT], 'Acquisition DateTime' );
     Add( $0030, [TTypeVR.vrTM], 'Study Time' );
     Add( $0031, [TTypeVR.vrTM], 'Series Time' );
     Add( $0032, [TTypeVR.vrTM], 'Acquisition Time' );
     Add( $0033, [TTypeVR.vrTM], 'Content Time' );
     Add( $0034, [TTypeVR.vrTM], 'Overlay Time' );
     Add( $0035, [TTypeVR.vrTM], 'Curve Time' );
     Add( $0040, [TTypeVR.vrUS], 'Data Set Type' );
     Add( $0041, [TTypeVR.vrLO], 'Data Set Subtype' );
     Add( $0042, [TTypeVR.vrCS], 'Nuclear Medicine Series Type' );
     Add( $0050, [TTypeVR.vrSH], 'Accession Number' );
     Add( $0051, [TTypeVR.vrSQ], 'Issuer of Accession Number Sequence' );
     Add( $0052, [TTypeVR.vrCS], 'Query/Retrieve Level' );
     Add( $0053, [TTypeVR.vrCS], 'Query/Retrieve View' );
     Add( $0054, [TTypeVR.vrAE], 'Retrieve AE Title' );
     Add( $0055, [TTypeVR.vrAE], 'Station AE Title' );
     Add( $0056, [TTypeVR.vrCS], 'Instance Availability' );
     Add( $0058, [TTypeVR.vrUI], 'Failed SOP Instance UID List' );
     Add( $0060, [TTypeVR.vrCS], 'Modality' );
     Add( $0061, [TTypeVR.vrCS], 'Modalities in Study' );
     Add( $0062, [TTypeVR.vrUI], 'SOP Classes in Study' );
     Add( $0064, [TTypeVR.vrCS], 'Conversion Type' );
     Add( $0068, [TTypeVR.vrCS], 'Presentation Intent Type' );
     Add( $0070, [TTypeVR.vrLO], 'Manufacturer' );
     Add( $0080, [TTypeVR.vrLO], 'Institution Name' );
     Add( $0081, [TTypeVR.vrST], 'Institution Address' );
     Add( $0082, [TTypeVR.vrSQ], 'Institution Code Sequence' );
     Add( $0090, [TTypeVR.vrPN], 'Referring Physician''s Name' );
     Add( $0092, [TTypeVR.vrST], 'Referring Physician''s Address' );
     Add( $0094, [TTypeVR.vrSH], 'Referring Physician''s Telephone Numbers' );
     Add( $0096, [TTypeVR.vrSQ], 'Referring Physician Identification Sequence' );
     Add( $009C, [TTypeVR.vrPN], 'Consulting Physician''s Name' );
     Add( $009D, [TTypeVR.vrSQ], 'Consulting Physician Identification Sequence' );
     Add( $0100, [TTypeVR.vrSH], 'Code Value' );
     Add( $0101, [TTypeVR.vrLO], 'Extended Code Value' );
     Add( $0102, [TTypeVR.vrSH], 'Coding Scheme Designator' );
     Add( $0103, [TTypeVR.vrSH], 'Coding Scheme Version' );
     Add( $0104, [TTypeVR.vrLO], 'Code Meaning' );
     Add( $0105, [TTypeVR.vrCS], 'Mapping Resource' );
     Add( $0106, [TTypeVR.vrDT], 'Context Group Version' );
     Add( $0107, [TTypeVR.vrDT], 'Context Group Local Version' );
     Add( $0108, [TTypeVR.vrLT], 'Extended Code Meaning' );
     Add( $010B, [TTypeVR.vrCS], 'Context Group Extension Flag' );
     Add( $010C, [TTypeVR.vrUI], 'Coding Scheme UID' );
     Add( $010D, [TTypeVR.vrUI], 'Context Group Extension Creator UID' );
     Add( $010F, [TTypeVR.vrCS], 'Context Identifier' );
     Add( $0110, [TTypeVR.vrSQ], 'Coding Scheme Identification Sequence' );
     Add( $0112, [TTypeVR.vrLO], 'Coding Scheme Registry' );
     Add( $0114, [TTypeVR.vrST], 'Coding Scheme External ID' );
     Add( $0115, [TTypeVR.vrST], 'Coding Scheme Name' );
     Add( $0116, [TTypeVR.vrST], 'Coding Scheme Responsible Organization' );
     Add( $0117, [TTypeVR.vrUI], 'Context UID' );
     Add( $0118, [TTypeVR.vrUI], 'Mapping Resource UID' );
     Add( $0119, [TTypeVR.vrUC], 'Long Code Value' );
     Add( $0120, [TTypeVR.vrUR], 'URN Code Value' );
     Add( $0121, [TTypeVR.vrSQ], 'Equivalent Code Sequence' );
     Add( $0122, [TTypeVR.vrLO], 'Mapping Resource Name' );
     Add( $0123, [TTypeVR.vrSQ], 'Context Group Identification Sequence' );
     Add( $0124, [TTypeVR.vrSQ], 'Mapping Resource Identification Sequence' );
     Add( $0201, [TTypeVR.vrSH], 'Timezone Offset From UTC' );
     Add( $0220, [TTypeVR.vrSQ], 'Responsible Group Code Sequence' );
     Add( $0221, [TTypeVR.vrCS], 'Equipment Modality' );
     Add( $0222, [TTypeVR.vrLO], 'Manufacturer''s Related Model Group' );
     Add( $0300, [TTypeVR.vrSQ], 'Private Data Element Characteristics Sequence' );
     Add( $0301, [TTypeVR.vrUS], 'Private Group Reference' );
     Add( $0302, [TTypeVR.vrLO], 'Private Creator Reference' );
     Add( $0303, [TTypeVR.vrCS], 'Block Identifying Information Status' );
     Add( $0304, [TTypeVR.vrUS], 'Nonidentifying Private Elements' );
     Add( $0306, [TTypeVR.vrUS], 'Identifying Private Elements' );
     Add( $0305, [TTypeVR.vrSQ], 'Deidentification Action Sequence' );
     Add( $0307, [TTypeVR.vrCS], 'Deidentification Action' );
     Add( $0308, [TTypeVR.vrUS], 'Private Data Element' );
     Add( $0309, [TTypeVR.vrUL], 'Private Data Element Value Multiplicity' );
     Add( $030A, [TTypeVR.vrCS], 'Private Data Element Value Representation' );
     Add( $030B, [TTypeVR.vrUL], 'Private Data Element Number of Items' );
     Add( $030C, [TTypeVR.vrUC], 'Private Data Element Name' );
     Add( $030D, [TTypeVR.vrUC], 'Private Data Element Keyword' );
     Add( $030E, [TTypeVR.vrUT], 'Private Data Element Description' );
     Add( $030F, [TTypeVR.vrUT], 'Private Data Element Encoding' );
     Add( $0310, [TTypeVR.vrSQ], 'Private Data Element Definition Sequence' );
     Add( $1000, [TTypeVR.vrAE], 'Network ID' );
     Add( $1010, [TTypeVR.vrSH], 'Station Name' );
     Add( $1030, [TTypeVR.vrLO], 'Study Description' );
     Add( $1032, [TTypeVR.vrSQ], 'Procedure Code Sequence' );
     Add( $103E, [TTypeVR.vrLO], 'Series Description' );
     Add( $103F, [TTypeVR.vrSQ], 'Series Description Code Sequence' );
     Add( $1040, [TTypeVR.vrLO], 'Institutional Department Name' );
     Add( $1048, [TTypeVR.vrPN], 'Physician(s) of Record' );
     Add( $1049, [TTypeVR.vrSQ], 'Physician(s) of Record Identification Sequence' );
     Add( $1050, [TTypeVR.vrPN], 'Performing Physician''s Name' );
     Add( $1052, [TTypeVR.vrSQ], 'Performing Physician Identification Sequence' );
     Add( $1060, [TTypeVR.vrPN], 'Name of Physician(s) Reading Study' );
     Add( $1062, [TTypeVR.vrSQ], 'Physician(s) Reading Study Identification Sequence' );
     Add( $1070, [TTypeVR.vrPN], 'Operators'' Name' );
     Add( $1072, [TTypeVR.vrSQ], 'Operator Identification Sequence' );
     Add( $1080, [TTypeVR.vrLO], 'Admitting Diagnoses Description' );
     Add( $1084, [TTypeVR.vrSQ], 'Admitting Diagnoses Code Sequence' );
     Add( $1090, [TTypeVR.vrLO], 'Manufacturer''s Model Name' );
     Add( $1100, [TTypeVR.vrSQ], 'Referenced Results Sequence' );
     Add( $1110, [TTypeVR.vrSQ], 'Referenced Study Sequence' );
     Add( $1111, [TTypeVR.vrSQ], 'Referenced Performed Procedure Step Sequence' );
     Add( $1115, [TTypeVR.vrSQ], 'Referenced Series Sequence' );
     Add( $1120, [TTypeVR.vrSQ], 'Referenced Patient Sequence' );
     Add( $1125, [TTypeVR.vrSQ], 'Referenced Visit Sequence' );
     Add( $1130, [TTypeVR.vrSQ], 'Referenced Overlay Sequence' );
     Add( $1134, [TTypeVR.vrSQ], 'Referenced Stereometric Instance Sequence' );
     Add( $113A, [TTypeVR.vrSQ], 'Referenced Waveform Sequence' );
     Add( $1140, [TTypeVR.vrSQ], 'Referenced Image Sequence' );
     Add( $1145, [TTypeVR.vrSQ], 'Referenced Curve Sequence' );
     Add( $114A, [TTypeVR.vrSQ], 'Referenced Instance Sequence' );
     Add( $114B, [TTypeVR.vrSQ], 'Referenced Real World Value Mapping Instance Sequence' );
     Add( $1150, [TTypeVR.vrUI], 'Referenced SOP Class UID' );
     Add( $1155, [TTypeVR.vrUI], 'Referenced SOP Instance UID' );
     Add( $115A, [TTypeVR.vrUI], 'SOP Classes Supported' );
     Add( $1160, [TTypeVR.vrIS], 'Referenced Frame Number' );
     Add( $1161, [TTypeVR.vrUL], 'Simple Frame List' );
     Add( $1162, [TTypeVR.vrUL], 'Calculated Frame List' );
     Add( $1163, [TTypeVR.vrFD], 'Time Range' );
     Add( $1164, [TTypeVR.vrSQ], 'Frame Extraction Sequence' );
     Add( $1167, [TTypeVR.vrUI], 'Multi-frame Source SOP Instance UID' );
     Add( $1190, [TTypeVR.vrUR], 'Retrieve URL' );
     Add( $1195, [TTypeVR.vrUI], 'Transaction UID' );
     Add( $1196, [TTypeVR.vrUS], 'Warning Reason' );
     Add( $1197, [TTypeVR.vrUS], 'Failure Reason' );
     Add( $1198, [TTypeVR.vrSQ], 'Failed SOP Sequence' );
     Add( $1199, [TTypeVR.vrSQ], 'Referenced SOP Sequence' );
     Add( $119A, [TTypeVR.vrSQ], 'Other Failures Sequence' );
     Add( $1200, [TTypeVR.vrSQ], 'Studies Containing Other Referenced Instances Sequence' );
     Add( $1250, [TTypeVR.vrSQ], 'Related Series Sequence' );
     Add( $2110, [TTypeVR.vrCS], 'Lossy Image Compression (Retired)' );
     Add( $2111, [TTypeVR.vrST], 'Derivation Description' );
     Add( $2112, [TTypeVR.vrSQ], 'Source Image Sequence' );
     Add( $2120, [TTypeVR.vrSH], 'Stage Name' );
     Add( $2122, [TTypeVR.vrIS], 'Stage Number' );
     Add( $2124, [TTypeVR.vrIS], 'Number of Stages' );
     Add( $2127, [TTypeVR.vrSH], 'View Name' );
     Add( $2128, [TTypeVR.vrIS], 'View Number' );
     Add( $2129, [TTypeVR.vrIS], 'Number of Event Timers' );
     Add( $212A, [TTypeVR.vrIS], 'Number of Views in Stage' );
     Add( $2130, [TTypeVR.vrDS], 'Event Elapsed Time(s)' );
     Add( $2132, [TTypeVR.vrLO], 'Event Timer Name(s)' );
     Add( $2133, [TTypeVR.vrSQ], 'Event Timer Sequence' );
     Add( $2134, [TTypeVR.vrFD], 'Event Time Offset' );
     Add( $2135, [TTypeVR.vrSQ], 'Event Code Sequence' );
     Add( $2142, [TTypeVR.vrIS], 'Start Trim' );
     Add( $2143, [TTypeVR.vrIS], 'Stop Trim' );
     Add( $2144, [TTypeVR.vrIS], 'Recommended Display Frame Rate' );
     Add( $2200, [TTypeVR.vrCS], 'Transducer Position' );
     Add( $2204, [TTypeVR.vrCS], 'Transducer Orientation' );
     Add( $2208, [TTypeVR.vrCS], 'Anatomic Structure' );
     Add( $2218, [TTypeVR.vrSQ], 'Anatomic Region Sequence' );
     Add( $2220, [TTypeVR.vrSQ], 'Anatomic Region Modifier Sequence' );
     Add( $2228, [TTypeVR.vrSQ], 'Primary Anatomic Structure Sequence' );
     Add( $2229, [TTypeVR.vrSQ], 'Anatomic Structure, Space or Region Sequence' );
     Add( $2230, [TTypeVR.vrSQ], 'Primary Anatomic Structure Modifier Sequence' );
     Add( $2240, [TTypeVR.vrSQ], 'Transducer Position Sequence' );
     Add( $2242, [TTypeVR.vrSQ], 'Transducer Position Modifier Sequence' );
     Add( $2244, [TTypeVR.vrSQ], 'Transducer Orientation Sequence' );
     Add( $2246, [TTypeVR.vrSQ], 'Transducer Orientation Modifier Sequence' );
     Add( $2251, [TTypeVR.vrSQ], 'Anatomic Structure Space Or Region Code Sequence (Trial)' );
     Add( $2253, [TTypeVR.vrSQ], 'Anatomic Portal Of Entrance Code Sequence (Trial)' );
     Add( $2255, [TTypeVR.vrSQ], 'Anatomic Approach Direction Code Sequence (Trial)' );
     Add( $2256, [TTypeVR.vrST], 'Anatomic Perspective Description (Trial)' );
     Add( $2257, [TTypeVR.vrSQ], 'Anatomic Perspective Code Sequence (Trial)' );
     Add( $2258, [TTypeVR.vrST], 'Anatomic Location Of Examining Instrument Description (Trial)' );
     Add( $2259, [TTypeVR.vrSQ], 'Anatomic Location Of Examining Instrument Code Sequence (Trial)' );
     Add( $225A, [TTypeVR.vrSQ], 'Anatomic Structure Space Or Region Modifier Code Sequence (Trial)' );
     Add( $225C, [TTypeVR.vrSQ], 'On Axis Background Anatomic Structure Code Sequence (Trial)' );
     Add( $3001, [TTypeVR.vrSQ], 'Alternate Representation Sequence' );
     Add( $3010, [TTypeVR.vrUI], 'Irradiation Event UID' );
     Add( $3011, [TTypeVR.vrSQ], 'Source Irradiation Event Sequence' );
     Add( $3012, [TTypeVR.vrUI], 'Radiopharmaceutical Administration Event UID' );
     Add( $4000, [TTypeVR.vrLT], 'Identifying Comments' );
     Add( $9007, [TTypeVR.vrCS], 'Frame Type' );
     Add( $9092, [TTypeVR.vrSQ], 'Referenced Image Evidence Sequence' );
     Add( $9121, [TTypeVR.vrSQ], 'Referenced Raw Data Sequence' );
     Add( $9123, [TTypeVR.vrUI], 'Creator-Version UID' );
     Add( $9124, [TTypeVR.vrSQ], 'Derivation Image Sequence' );
     Add( $9154, [TTypeVR.vrSQ], 'Source Image Evidence Sequence' );
     Add( $9205, [TTypeVR.vrCS], 'Pixel Presentation' );
     Add( $9206, [TTypeVR.vrCS], 'Volumetric Properties' );
     Add( $9207, [TTypeVR.vrCS], 'Volume Based Calculation Technique' );
     Add( $9208, [TTypeVR.vrCS], 'Complex Image Component' );
     Add( $9209, [TTypeVR.vrCS], 'Acquisition Contrast' );
     Add( $9215, [TTypeVR.vrSQ], 'Derivation Code Sequence' );
     Add( $9237, [TTypeVR.vrSQ], 'Referenced Presentation State Sequence' );
     Add( $9410, [TTypeVR.vrSQ], 'Referenced Other Plane Sequence' );
     Add( $9458, [TTypeVR.vrSQ], 'Frame Display Sequence' );
     Add( $9459, [TTypeVR.vrFL], 'Recommended Display Frame Rate in Float' );
     Add( $9460, [TTypeVR.vrCS], 'Skip Frame Range Flag' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
