unit LUX.DICOM.Tags.G003A;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems003A

     TDICOMElems003A = class( TDICOMElems )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems003A

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems003A.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0004, TKindVR.vrCS, 'Waveform Originality' );
     Add( $0005, TKindVR.vrUS, 'Number of Waveform Channels' );
     Add( $0010, TKindVR.vrUL, 'Number of Waveform Samples' );
     Add( $001A, TKindVR.vrDS, 'Sampling Frequency' );
     Add( $0020, TKindVR.vrSH, 'Multiplex Group Label' );
     Add( $0200, TKindVR.vrSQ, 'Channel Definition Sequence' );
     Add( $0202, TKindVR.vrIS, 'Waveform Channel Number' );
     Add( $0203, TKindVR.vrSH, 'Channel Label' );
     Add( $0205, TKindVR.vrCS, 'Channel Status' );
     Add( $0208, TKindVR.vrSQ, 'Channel Source Sequence' );
     Add( $0209, TKindVR.vrSQ, 'Channel Source Modifiers Sequence' );
     Add( $020A, TKindVR.vrSQ, 'Source Waveform Sequence' );
     Add( $020C, TKindVR.vrLO, 'Channel Derivation Description' );
     Add( $0210, TKindVR.vrDS, 'Channel Sensitivity' );
     Add( $0211, TKindVR.vrSQ, 'Channel Sensitivity Units Sequence' );
     Add( $0212, TKindVR.vrDS, 'Channel Sensitivity Correction Factor' );
     Add( $0213, TKindVR.vrDS, 'Channel Baseline' );
     Add( $0214, TKindVR.vrDS, 'Channel Time Skew' );
     Add( $0215, TKindVR.vrDS, 'Channel Sample Skew' );
     Add( $0218, TKindVR.vrDS, 'Channel Offset' );
     Add( $021A, TKindVR.vrUS, 'Waveform Bits Stored' );
     Add( $0220, TKindVR.vrDS, 'Filter Low Frequency' );
     Add( $0221, TKindVR.vrDS, 'Filter High Frequency' );
     Add( $0222, TKindVR.vrDS, 'Notch Filter Frequency' );
     Add( $0223, TKindVR.vrDS, 'Notch Filter Bandwidth' );
     Add( $0230, TKindVR.vrFL, 'Waveform Data Display Scale' );
     Add( $0231, TKindVR.vrUS, 'Waveform Display Background CIELab Value' );
     Add( $0240, TKindVR.vrSQ, 'Waveform Presentation Group Sequence' );
     Add( $0241, TKindVR.vrUS, 'Presentation Group Number' );
     Add( $0242, TKindVR.vrSQ, 'Channel Display Sequence' );
     Add( $0244, TKindVR.vrUS, 'Channel Recommended Display CIELab Value' );
     Add( $0245, TKindVR.vrFL, 'Channel Position' );
     Add( $0246, TKindVR.vrCS, 'Display Shading Flag' );
     Add( $0247, TKindVR.vrFL, 'Fractional Channel Display Scale' );
     Add( $0248, TKindVR.vrFL, 'Absolute Channel Display Scale' );
     Add( $0300, TKindVR.vrSQ, 'Multiplexed Audio Channels Description Code Sequence' );
     Add( $0301, TKindVR.vrIS, 'Channel Identification Code' );
     Add( $0302, TKindVR.vrCS, 'Channel Mode' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
