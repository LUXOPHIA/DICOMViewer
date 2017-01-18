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
     Add( $0004, 'WaveformOriginality', [TTypeVR.vrCS], 'Waveform Originality' );
     Add( $0005, 'NumberOfWaveformChannels', [TTypeVR.vrUS], 'Number of Waveform Channels' );
     Add( $0010, 'NumberOfWaveformSamples', [TTypeVR.vrUL], 'Number of Waveform Samples' );
     Add( $001A, 'SamplingFrequency', [TTypeVR.vrDS], 'Sampling Frequency' );
     Add( $0020, 'MultiplexGroupLabel', [TTypeVR.vrSH], 'Multiplex Group Label' );
     Add( $0200, 'ChannelDefinitionSequence', [TTypeVR.vrSQ], 'Channel Definition Sequence' );
     Add( $0202, 'WaveformChannelNumber', [TTypeVR.vrIS], 'Waveform Channel Number' );
     Add( $0203, 'ChannelLabel', [TTypeVR.vrSH], 'Channel Label' );
     Add( $0205, 'ChannelStatus', [TTypeVR.vrCS], 'Channel Status' );
     Add( $0208, 'ChannelSourceSequence', [TTypeVR.vrSQ], 'Channel Source Sequence' );
     Add( $0209, 'ChannelSourceModifiersSequence', [TTypeVR.vrSQ], 'Channel Source Modifiers Sequence' );
     Add( $020A, 'SourceWaveformSequence', [TTypeVR.vrSQ], 'Source Waveform Sequence' );
     Add( $020C, 'ChannelDerivationDescription', [TTypeVR.vrLO], 'Channel Derivation Description' );
     Add( $0210, 'ChannelSensitivity', [TTypeVR.vrDS], 'Channel Sensitivity' );
     Add( $0211, 'ChannelSensitivityUnitsSequence', [TTypeVR.vrSQ], 'Channel Sensitivity Units Sequence' );
     Add( $0212, 'ChannelSensitivityCorrectionFactor', [TTypeVR.vrDS], 'Channel Sensitivity Correction Factor' );
     Add( $0213, 'ChannelBaseline', [TTypeVR.vrDS], 'Channel Baseline' );
     Add( $0214, 'ChannelTimeSkew', [TTypeVR.vrDS], 'Channel Time Skew' );
     Add( $0215, 'ChannelSampleSkew', [TTypeVR.vrDS], 'Channel Sample Skew' );
     Add( $0218, 'ChannelOffset', [TTypeVR.vrDS], 'Channel Offset' );
     Add( $021A, 'WaveformBitsStored', [TTypeVR.vrUS], 'Waveform Bits Stored' );
     Add( $0220, 'FilterLowFrequency', [TTypeVR.vrDS], 'Filter Low Frequency' );
     Add( $0221, 'FilterHighFrequency', [TTypeVR.vrDS], 'Filter High Frequency' );
     Add( $0222, 'NotchFilterFrequency', [TTypeVR.vrDS], 'Notch Filter Frequency' );
     Add( $0223, 'NotchFilterBandwidth', [TTypeVR.vrDS], 'Notch Filter Bandwidth' );
     Add( $0230, 'WaveformDataDisplayScale', [TTypeVR.vrFL], 'Waveform Data Display Scale' );
     Add( $0231, 'WaveformDisplayBackgroundCIELabValue', [TTypeVR.vrUS], 'Waveform Display Background CIELab Value' );
     Add( $0240, 'WaveformPresentationGroupSequence', [TTypeVR.vrSQ], 'Waveform Presentation Group Sequence' );
     Add( $0241, 'PresentationGroupNumber', [TTypeVR.vrUS], 'Presentation Group Number' );
     Add( $0242, 'ChannelDisplaySequence', [TTypeVR.vrSQ], 'Channel Display Sequence' );
     Add( $0244, 'ChannelRecommendedDisplayCIELabValue', [TTypeVR.vrUS], 'Channel Recommended Display CIELab Value' );
     Add( $0245, 'ChannelPosition', [TTypeVR.vrFL], 'Channel Position' );
     Add( $0246, 'DisplayShadingFlag', [TTypeVR.vrCS], 'Display Shading Flag' );
     Add( $0247, 'FractionalChannelDisplayScale', [TTypeVR.vrFL], 'Fractional Channel Display Scale' );
     Add( $0248, 'AbsoluteChannelDisplayScale', [TTypeVR.vrFL], 'Absolute Channel Display Scale' );
     Add( $0300, 'MultiplexedAudioChannelsDescriptionCodeSequence', [TTypeVR.vrSQ], 'Multiplexed Audio Channels Description Code Sequence' );
     Add( $0301, 'ChannelIdentificationCode', [TTypeVR.vrIS], 'Channel Identification Code' );
     Add( $0302, 'ChannelMode', [TTypeVR.vrCS], 'Channel Mode' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
