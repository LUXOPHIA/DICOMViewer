unit LUX.DICOM.Tags.G003A;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup003A

     TdcmGrup003A = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup003A

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup003A.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0004, [TTypeVR.vrCS], 'Waveform Originality' );
     Add( $0005, [TTypeVR.vrUS], 'Number of Waveform Channels' );
     Add( $0010, [TTypeVR.vrUL], 'Number of Waveform Samples' );
     Add( $001A, [TTypeVR.vrDS], 'Sampling Frequency' );
     Add( $0020, [TTypeVR.vrSH], 'Multiplex Group Label' );
     Add( $0200, [TTypeVR.vrSQ], 'Channel Definition Sequence' );
     Add( $0202, [TTypeVR.vrIS], 'Waveform Channel Number' );
     Add( $0203, [TTypeVR.vrSH], 'Channel Label' );
     Add( $0205, [TTypeVR.vrCS], 'Channel Status' );
     Add( $0208, [TTypeVR.vrSQ], 'Channel Source Sequence' );
     Add( $0209, [TTypeVR.vrSQ], 'Channel Source Modifiers Sequence' );
     Add( $020A, [TTypeVR.vrSQ], 'Source Waveform Sequence' );
     Add( $020C, [TTypeVR.vrLO], 'Channel Derivation Description' );
     Add( $0210, [TTypeVR.vrDS], 'Channel Sensitivity' );
     Add( $0211, [TTypeVR.vrSQ], 'Channel Sensitivity Units Sequence' );
     Add( $0212, [TTypeVR.vrDS], 'Channel Sensitivity Correction Factor' );
     Add( $0213, [TTypeVR.vrDS], 'Channel Baseline' );
     Add( $0214, [TTypeVR.vrDS], 'Channel Time Skew' );
     Add( $0215, [TTypeVR.vrDS], 'Channel Sample Skew' );
     Add( $0218, [TTypeVR.vrDS], 'Channel Offset' );
     Add( $021A, [TTypeVR.vrUS], 'Waveform Bits Stored' );
     Add( $0220, [TTypeVR.vrDS], 'Filter Low Frequency' );
     Add( $0221, [TTypeVR.vrDS], 'Filter High Frequency' );
     Add( $0222, [TTypeVR.vrDS], 'Notch Filter Frequency' );
     Add( $0223, [TTypeVR.vrDS], 'Notch Filter Bandwidth' );
     Add( $0230, [TTypeVR.vrFL], 'Waveform Data Display Scale' );
     Add( $0231, [TTypeVR.vrUS], 'Waveform Display Background CIELab Value' );
     Add( $0240, [TTypeVR.vrSQ], 'Waveform Presentation Group Sequence' );
     Add( $0241, [TTypeVR.vrUS], 'Presentation Group Number' );
     Add( $0242, [TTypeVR.vrSQ], 'Channel Display Sequence' );
     Add( $0244, [TTypeVR.vrUS], 'Channel Recommended Display CIELab Value' );
     Add( $0245, [TTypeVR.vrFL], 'Channel Position' );
     Add( $0246, [TTypeVR.vrCS], 'Display Shading Flag' );
     Add( $0247, [TTypeVR.vrFL], 'Fractional Channel Display Scale' );
     Add( $0248, [TTypeVR.vrFL], 'Absolute Channel Display Scale' );
     Add( $0300, [TTypeVR.vrSQ], 'Multiplexed Audio Channels Description Code Sequence' );
     Add( $0301, [TTypeVR.vrIS], 'Channel Identification Code' );
     Add( $0302, [TTypeVR.vrCS], 'Channel Mode' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
