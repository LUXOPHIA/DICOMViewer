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
     Add( $0004, 'WaveformOriginality', [TKindVR.vrCS], 'Waveform Originality' );
     Add( $0005, 'NumberOfWaveformChannels', [TKindVR.vrUS], 'Number of Waveform Channels' );
     Add( $0010, 'NumberOfWaveformSamples', [TKindVR.vrUL], 'Number of Waveform Samples' );
     Add( $001A, 'SamplingFrequency', [TKindVR.vrDS], 'Sampling Frequency' );
     Add( $0020, 'MultiplexGroupLabel', [TKindVR.vrSH], 'Multiplex Group Label' );
     Add( $0200, 'ChannelDefinitionSequence', [TKindVR.vrSQ], 'Channel Definition Sequence' );
     Add( $0202, 'WaveformChannelNumber', [TKindVR.vrIS], 'Waveform Channel Number' );
     Add( $0203, 'ChannelLabel', [TKindVR.vrSH], 'Channel Label' );
     Add( $0205, 'ChannelStatus', [TKindVR.vrCS], 'Channel Status' );
     Add( $0208, 'ChannelSourceSequence', [TKindVR.vrSQ], 'Channel Source Sequence' );
     Add( $0209, 'ChannelSourceModifiersSequence', [TKindVR.vrSQ], 'Channel Source Modifiers Sequence' );
     Add( $020A, 'SourceWaveformSequence', [TKindVR.vrSQ], 'Source Waveform Sequence' );
     Add( $020C, 'ChannelDerivationDescription', [TKindVR.vrLO], 'Channel Derivation Description' );
     Add( $0210, 'ChannelSensitivity', [TKindVR.vrDS], 'Channel Sensitivity' );
     Add( $0211, 'ChannelSensitivityUnitsSequence', [TKindVR.vrSQ], 'Channel Sensitivity Units Sequence' );
     Add( $0212, 'ChannelSensitivityCorrectionFactor', [TKindVR.vrDS], 'Channel Sensitivity Correction Factor' );
     Add( $0213, 'ChannelBaseline', [TKindVR.vrDS], 'Channel Baseline' );
     Add( $0214, 'ChannelTimeSkew', [TKindVR.vrDS], 'Channel Time Skew' );
     Add( $0215, 'ChannelSampleSkew', [TKindVR.vrDS], 'Channel Sample Skew' );
     Add( $0218, 'ChannelOffset', [TKindVR.vrDS], 'Channel Offset' );
     Add( $021A, 'WaveformBitsStored', [TKindVR.vrUS], 'Waveform Bits Stored' );
     Add( $0220, 'FilterLowFrequency', [TKindVR.vrDS], 'Filter Low Frequency' );
     Add( $0221, 'FilterHighFrequency', [TKindVR.vrDS], 'Filter High Frequency' );
     Add( $0222, 'NotchFilterFrequency', [TKindVR.vrDS], 'Notch Filter Frequency' );
     Add( $0223, 'NotchFilterBandwidth', [TKindVR.vrDS], 'Notch Filter Bandwidth' );
     Add( $0230, 'WaveformDataDisplayScale', [TKindVR.vrFL], 'Waveform Data Display Scale' );
     Add( $0231, 'WaveformDisplayBackgroundCIELabValue', [TKindVR.vrUS], 'Waveform Display Background CIELab Value' );
     Add( $0240, 'WaveformPresentationGroupSequence', [TKindVR.vrSQ], 'Waveform Presentation Group Sequence' );
     Add( $0241, 'PresentationGroupNumber', [TKindVR.vrUS], 'Presentation Group Number' );
     Add( $0242, 'ChannelDisplaySequence', [TKindVR.vrSQ], 'Channel Display Sequence' );
     Add( $0244, 'ChannelRecommendedDisplayCIELabValue', [TKindVR.vrUS], 'Channel Recommended Display CIELab Value' );
     Add( $0245, 'ChannelPosition', [TKindVR.vrFL], 'Channel Position' );
     Add( $0246, 'DisplayShadingFlag', [TKindVR.vrCS], 'Display Shading Flag' );
     Add( $0247, 'FractionalChannelDisplayScale', [TKindVR.vrFL], 'Fractional Channel Display Scale' );
     Add( $0248, 'AbsoluteChannelDisplayScale', [TKindVR.vrFL], 'Absolute Channel Display Scale' );
     Add( $0300, 'MultiplexedAudioChannelsDescriptionCodeSequence', [TKindVR.vrSQ], 'Multiplexed Audio Channels Description Code Sequence' );
     Add( $0301, 'ChannelIdentificationCode', [TKindVR.vrIS], 'Channel Identification Code' );
     Add( $0302, 'ChannelMode', [TKindVR.vrCS], 'Channel Mode' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
