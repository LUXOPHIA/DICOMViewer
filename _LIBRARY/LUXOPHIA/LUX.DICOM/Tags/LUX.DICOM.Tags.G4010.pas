unit LUX.DICOM.Tags.G4010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.VRs, LUX.DICOM.Tags;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4010

     TdcmGrup4010 = class( TdcmGrup )
     private
     protected
     public
       class procedure AddBook( const Book_:TdcmBookTag );
       constructor Create( const Book_:TdcmBookTag; const Code_:THex4 );
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

class procedure TdcmGrup4010.AddBook( const Book_:TdcmBookTag );
begin
     Create( Book_, $4010 );
end;

//------------------------------------------------------------------------------

constructor TdcmGrup4010.Create( const Book_:TdcmBookTag; const Code_:THex4 );
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LowEnergyDetectors', [TKindVR.vrCS], 'Low Energy Detectors' );
     Add( $0002, 'HighEnergyDetectors', [TKindVR.vrCS], 'High Energy Detectors' );
     Add( $0004, 'DetectorGeometrySequence', [TKindVR.vrSQ], 'Detector Geometry Sequence' );
     Add( $1001, 'ThreatROIVoxelSequence', [TKindVR.vrSQ], 'Threat ROI Voxel Sequence' );
     Add( $1004, 'ThreatROIBase', [TKindVR.vrFL], 'Threat ROI Base' );
     Add( $1005, 'ThreatROIExtents', [TKindVR.vrFL], 'Threat ROI Extents' );
     Add( $1006, 'ThreatROIBitmap', [TKindVR.vrOB], 'Threat ROI Bitmap' );
     Add( $1007, 'RouteSegmentID', [TKindVR.vrSH], 'Route Segment ID' );
     Add( $1008, 'GantryType', [TKindVR.vrCS], 'Gantry Type' );
     Add( $1009, 'OOIOwnerType', [TKindVR.vrCS], 'OOI Owner Type' );
     Add( $100A, 'RouteSegmentSequence', [TKindVR.vrSQ], 'Route Segment Sequence' );
     Add( $1010, 'PotentialThreatObjectID', [TKindVR.vrUS], 'Potential Threat Object ID' );
     Add( $1011, 'ThreatSequence', [TKindVR.vrSQ], 'Threat Sequence' );
     Add( $1012, 'ThreatCategory', [TKindVR.vrCS], 'Threat Category' );
     Add( $1013, 'ThreatCategoryDescription', [TKindVR.vrLT], 'Threat Category Description' );
     Add( $1014, 'ATDAbilityAssessment', [TKindVR.vrCS], 'ATD Ability Assessment' );
     Add( $1015, 'ATDAssessmentFlag', [TKindVR.vrCS], 'ATD Assessment Flag' );
     Add( $1016, 'ATDAssessmentProbability', [TKindVR.vrFL], 'ATD Assessment Probability' );
     Add( $1017, 'Mass', [TKindVR.vrFL], 'Mass' );
     Add( $1018, 'Density', [TKindVR.vrFL], 'Density' );
     Add( $1019, 'ZEffective', [TKindVR.vrFL], 'Z Effective' );
     Add( $101A, 'BoardingPassID', [TKindVR.vrSH], 'Boarding Pass ID' );
     Add( $101B, 'CenterOfMass', [TKindVR.vrFL], 'Center of Mass' );
     Add( $101C, 'CenterOfPTO', [TKindVR.vrFL], 'Center of PTO' );
     Add( $101D, 'BoundingPolygon', [TKindVR.vrFL], 'Bounding Polygon' );
     Add( $101E, 'RouteSegmentStartLocationID', [TKindVR.vrSH], 'Route Segment Start Location ID' );
     Add( $101F, 'RouteSegmentEndLocationID', [TKindVR.vrSH], 'Route Segment End Location ID' );
     Add( $1020, 'RouteSegmentLocationIDType', [TKindVR.vrCS], 'Route Segment Location ID Type' );
     Add( $1021, 'AbortReason', [TKindVR.vrCS], 'Abort Reason' );
     Add( $1023, 'VolumeOfPTO', [TKindVR.vrFL], 'Volume of PTO' );
     Add( $1024, 'AbortFlag', [TKindVR.vrCS], 'Abort Flag' );
     Add( $1025, 'RouteSegmentStartTime', [TKindVR.vrDT], 'Route Segment Start Time' );
     Add( $1026, 'RouteSegmentEndTime', [TKindVR.vrDT], 'Route Segment End Time' );
     Add( $1027, 'TDRType', [TKindVR.vrCS], 'TDR Type' );
     Add( $1028, 'InternationalRouteSegment', [TKindVR.vrCS], 'International Route Segment' );
     Add( $1029, 'ThreatDetectionAlgorithmandVersion', [TKindVR.vrLO], 'Threat Detection Algorithm and Version' );
     Add( $102A, 'AssignedLocation', [TKindVR.vrSH], 'Assigned Location' );
     Add( $102B, 'AlarmDecisionTime', [TKindVR.vrDT], 'Alarm Decision Time' );
     Add( $1031, 'AlarmDecision', [TKindVR.vrCS], 'Alarm Decision' );
     Add( $1033, 'NumberOfTotalObjects', [TKindVR.vrUS], 'Number of Total Objects' );
     Add( $1034, 'NumberOfAlarmObjects', [TKindVR.vrUS], 'Number of Alarm Objects' );
     Add( $1037, 'PTORepresentationSequence', [TKindVR.vrSQ], 'PTO Representation Sequence' );
     Add( $1038, 'ATDAssessmentSequence', [TKindVR.vrSQ], 'ATD Assessment Sequence' );
     Add( $1039, 'TIPType', [TKindVR.vrCS], 'TIP Type' );
     Add( $103A, 'DICOSVersion', [TKindVR.vrCS], 'DICOS Version' );
     Add( $1041, 'OOIOwnerCreationTime', [TKindVR.vrDT], 'OOI Owner Creation Time' );
     Add( $1042, 'OOIType', [TKindVR.vrCS], 'OOI Type' );
     Add( $1043, 'OOISize', [TKindVR.vrFL], 'OOI Size' );
     Add( $1044, 'AcquisitionStatus', [TKindVR.vrCS], 'Acquisition Status' );
     Add( $1045, 'BasisMaterialsCodeSequence', [TKindVR.vrSQ], 'Basis Materials Code Sequence' );
     Add( $1046, 'PhantomType', [TKindVR.vrCS], 'Phantom Type' );
     Add( $1047, 'OOIOwnerSequence', [TKindVR.vrSQ], 'OOI Owner Sequence' );
     Add( $1048, 'ScanType', [TKindVR.vrCS], 'Scan Type' );
     Add( $1051, 'ItineraryID', [TKindVR.vrLO], 'Itinerary ID' );
     Add( $1052, 'ItineraryIDType', [TKindVR.vrSH], 'Itinerary ID Type' );
     Add( $1053, 'ItineraryIDAssigningAuthority', [TKindVR.vrLO], 'Itinerary ID Assigning Authority' );
     Add( $1054, 'RouteID', [TKindVR.vrSH], 'Route ID' );
     Add( $1055, 'RouteIDAssigningAuthority', [TKindVR.vrSH], 'Route ID Assigning Authority' );
     Add( $1056, 'InboundArrivalType', [TKindVR.vrCS], 'Inbound Arrival Type' );
     Add( $1058, 'CarrierID', [TKindVR.vrSH], 'Carrier ID' );
     Add( $1059, 'CarrierIDAssigningAuthority', [TKindVR.vrCS], 'Carrier ID Assigning Authority' );
     Add( $1060, 'SourceOrientation', [TKindVR.vrFL], 'Source Orientation' );
     Add( $1061, 'SourcePosition', [TKindVR.vrFL], 'Source Position' );
     Add( $1062, 'BeltHeight', [TKindVR.vrFL], 'Belt Height' );
     Add( $1064, 'AlgorithmRoutingCodeSequence', [TKindVR.vrSQ], 'Algorithm Routing Code Sequence' );
     Add( $1067, 'TransportClassification', [TKindVR.vrCS], 'Transport Classification' );
     Add( $1068, 'OOITypeDescriptor', [TKindVR.vrLT], 'OOI Type Descriptor' );
     Add( $1069, 'TotalProcessingTime', [TKindVR.vrFL], 'Total Processing Time' );
     Add( $106C, 'DetectorCalibrationData', [TKindVR.vrOB], 'Detector Calibration Data' );
     Add( $106D, 'AdditionalScreeningPerformed', [TKindVR.vrCS], 'Additional Screening Performed' );
     Add( $106E, 'AdditionalInspectionSelectionCriteria', [TKindVR.vrCS], 'Additional Inspection Selection Criteria' );
     Add( $106F, 'AdditionalInspectionMethodSequence', [TKindVR.vrSQ], 'Additional Inspection Method Sequence' );
     Add( $1070, 'AITDeviceType', [TKindVR.vrCS], 'AIT Device Type' );
     Add( $1071, 'QRMeasurementsSequence', [TKindVR.vrSQ], 'QR Measurements Sequence' );
     Add( $1072, 'TargetMaterialSequence', [TKindVR.vrSQ], 'Target Material Sequence' );
     Add( $1073, 'SNRThreshold', [TKindVR.vrFD], 'SNR Threshold' );
     Add( $1075, 'ImageScaleRepresentation', [TKindVR.vrDS], 'Image Scale Representation' );
     Add( $1076, 'ReferencedPTOSequence', [TKindVR.vrSQ], 'Referenced PTO Sequence' );
     Add( $1077, 'ReferencedTDRInstanceSequence', [TKindVR.vrSQ], 'Referenced TDR Instance Sequence' );
     Add( $1078, 'PTOLocationDescription', [TKindVR.vrST], 'PTO Location Description' );
     Add( $1079, 'AnomalyLocatorIndicatorSequence', [TKindVR.vrSQ], 'Anomaly Locator Indicator Sequence' );
     Add( $107A, 'AnomalyLocatorIndicator', [TKindVR.vrFL], 'Anomaly Locator Indicator' );
     Add( $107B, 'PTORegionSequence', [TKindVR.vrSQ], 'PTO Region Sequence' );
     Add( $107C, 'InspectionSelectionCriteria', [TKindVR.vrCS], 'Inspection Selection Criteria' );
     Add( $107D, 'SecondaryInspectionMethodSequence', [TKindVR.vrSQ], 'Secondary Inspection Method Sequence' );
     Add( $107E, 'PRCSToRCSOrientation', [TKindVR.vrDS], 'PRCS to RCS Orientation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
