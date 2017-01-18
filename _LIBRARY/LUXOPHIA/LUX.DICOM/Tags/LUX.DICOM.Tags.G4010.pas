unit LUX.DICOM.Tags.G4010;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4010

     TdcmGrup4010 = class( TdcmGrup )
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

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TdcmGrup4010

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TdcmGrup4010.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $0001, 'LowEnergyDetectors', [TTypeVR.vrCS], 'Low Energy Detectors' );
     Add( $0002, 'HighEnergyDetectors', [TTypeVR.vrCS], 'High Energy Detectors' );
     Add( $0004, 'DetectorGeometrySequence', [TTypeVR.vrSQ], 'Detector Geometry Sequence' );
     Add( $1001, 'ThreatROIVoxelSequence', [TTypeVR.vrSQ], 'Threat ROI Voxel Sequence' );
     Add( $1004, 'ThreatROIBase', [TTypeVR.vrFL], 'Threat ROI Base' );
     Add( $1005, 'ThreatROIExtents', [TTypeVR.vrFL], 'Threat ROI Extents' );
     Add( $1006, 'ThreatROIBitmap', [TTypeVR.vrOB], 'Threat ROI Bitmap' );
     Add( $1007, 'RouteSegmentID', [TTypeVR.vrSH], 'Route Segment ID' );
     Add( $1008, 'GantryType', [TTypeVR.vrCS], 'Gantry Type' );
     Add( $1009, 'OOIOwnerType', [TTypeVR.vrCS], 'OOI Owner Type' );
     Add( $100A, 'RouteSegmentSequence', [TTypeVR.vrSQ], 'Route Segment Sequence' );
     Add( $1010, 'PotentialThreatObjectID', [TTypeVR.vrUS], 'Potential Threat Object ID' );
     Add( $1011, 'ThreatSequence', [TTypeVR.vrSQ], 'Threat Sequence' );
     Add( $1012, 'ThreatCategory', [TTypeVR.vrCS], 'Threat Category' );
     Add( $1013, 'ThreatCategoryDescription', [TTypeVR.vrLT], 'Threat Category Description' );
     Add( $1014, 'ATDAbilityAssessment', [TTypeVR.vrCS], 'ATD Ability Assessment' );
     Add( $1015, 'ATDAssessmentFlag', [TTypeVR.vrCS], 'ATD Assessment Flag' );
     Add( $1016, 'ATDAssessmentProbability', [TTypeVR.vrFL], 'ATD Assessment Probability' );
     Add( $1017, 'Mass', [TTypeVR.vrFL], 'Mass' );
     Add( $1018, 'Density', [TTypeVR.vrFL], 'Density' );
     Add( $1019, 'ZEffective', [TTypeVR.vrFL], 'Z Effective' );
     Add( $101A, 'BoardingPassID', [TTypeVR.vrSH], 'Boarding Pass ID' );
     Add( $101B, 'CenterOfMass', [TTypeVR.vrFL], 'Center of Mass' );
     Add( $101C, 'CenterOfPTO', [TTypeVR.vrFL], 'Center of PTO' );
     Add( $101D, 'BoundingPolygon', [TTypeVR.vrFL], 'Bounding Polygon' );
     Add( $101E, 'RouteSegmentStartLocationID', [TTypeVR.vrSH], 'Route Segment Start Location ID' );
     Add( $101F, 'RouteSegmentEndLocationID', [TTypeVR.vrSH], 'Route Segment End Location ID' );
     Add( $1020, 'RouteSegmentLocationIDType', [TTypeVR.vrCS], 'Route Segment Location ID Type' );
     Add( $1021, 'AbortReason', [TTypeVR.vrCS], 'Abort Reason' );
     Add( $1023, 'VolumeOfPTO', [TTypeVR.vrFL], 'Volume of PTO' );
     Add( $1024, 'AbortFlag', [TTypeVR.vrCS], 'Abort Flag' );
     Add( $1025, 'RouteSegmentStartTime', [TTypeVR.vrDT], 'Route Segment Start Time' );
     Add( $1026, 'RouteSegmentEndTime', [TTypeVR.vrDT], 'Route Segment End Time' );
     Add( $1027, 'TDRType', [TTypeVR.vrCS], 'TDR Type' );
     Add( $1028, 'InternationalRouteSegment', [TTypeVR.vrCS], 'International Route Segment' );
     Add( $1029, 'ThreatDetectionAlgorithmandVersion', [TTypeVR.vrLO], 'Threat Detection Algorithm and Version' );
     Add( $102A, 'AssignedLocation', [TTypeVR.vrSH], 'Assigned Location' );
     Add( $102B, 'AlarmDecisionTime', [TTypeVR.vrDT], 'Alarm Decision Time' );
     Add( $1031, 'AlarmDecision', [TTypeVR.vrCS], 'Alarm Decision' );
     Add( $1033, 'NumberOfTotalObjects', [TTypeVR.vrUS], 'Number of Total Objects' );
     Add( $1034, 'NumberOfAlarmObjects', [TTypeVR.vrUS], 'Number of Alarm Objects' );
     Add( $1037, 'PTORepresentationSequence', [TTypeVR.vrSQ], 'PTO Representation Sequence' );
     Add( $1038, 'ATDAssessmentSequence', [TTypeVR.vrSQ], 'ATD Assessment Sequence' );
     Add( $1039, 'TIPType', [TTypeVR.vrCS], 'TIP Type' );
     Add( $103A, 'DICOSVersion', [TTypeVR.vrCS], 'DICOS Version' );
     Add( $1041, 'OOIOwnerCreationTime', [TTypeVR.vrDT], 'OOI Owner Creation Time' );
     Add( $1042, 'OOIType', [TTypeVR.vrCS], 'OOI Type' );
     Add( $1043, 'OOISize', [TTypeVR.vrFL], 'OOI Size' );
     Add( $1044, 'AcquisitionStatus', [TTypeVR.vrCS], 'Acquisition Status' );
     Add( $1045, 'BasisMaterialsCodeSequence', [TTypeVR.vrSQ], 'Basis Materials Code Sequence' );
     Add( $1046, 'PhantomType', [TTypeVR.vrCS], 'Phantom Type' );
     Add( $1047, 'OOIOwnerSequence', [TTypeVR.vrSQ], 'OOI Owner Sequence' );
     Add( $1048, 'ScanType', [TTypeVR.vrCS], 'Scan Type' );
     Add( $1051, 'ItineraryID', [TTypeVR.vrLO], 'Itinerary ID' );
     Add( $1052, 'ItineraryIDType', [TTypeVR.vrSH], 'Itinerary ID Type' );
     Add( $1053, 'ItineraryIDAssigningAuthority', [TTypeVR.vrLO], 'Itinerary ID Assigning Authority' );
     Add( $1054, 'RouteID', [TTypeVR.vrSH], 'Route ID' );
     Add( $1055, 'RouteIDAssigningAuthority', [TTypeVR.vrSH], 'Route ID Assigning Authority' );
     Add( $1056, 'InboundArrivalType', [TTypeVR.vrCS], 'Inbound Arrival Type' );
     Add( $1058, 'CarrierID', [TTypeVR.vrSH], 'Carrier ID' );
     Add( $1059, 'CarrierIDAssigningAuthority', [TTypeVR.vrCS], 'Carrier ID Assigning Authority' );
     Add( $1060, 'SourceOrientation', [TTypeVR.vrFL], 'Source Orientation' );
     Add( $1061, 'SourcePosition', [TTypeVR.vrFL], 'Source Position' );
     Add( $1062, 'BeltHeight', [TTypeVR.vrFL], 'Belt Height' );
     Add( $1064, 'AlgorithmRoutingCodeSequence', [TTypeVR.vrSQ], 'Algorithm Routing Code Sequence' );
     Add( $1067, 'TransportClassification', [TTypeVR.vrCS], 'Transport Classification' );
     Add( $1068, 'OOITypeDescriptor', [TTypeVR.vrLT], 'OOI Type Descriptor' );
     Add( $1069, 'TotalProcessingTime', [TTypeVR.vrFL], 'Total Processing Time' );
     Add( $106C, 'DetectorCalibrationData', [TTypeVR.vrOB], 'Detector Calibration Data' );
     Add( $106D, 'AdditionalScreeningPerformed', [TTypeVR.vrCS], 'Additional Screening Performed' );
     Add( $106E, 'AdditionalInspectionSelectionCriteria', [TTypeVR.vrCS], 'Additional Inspection Selection Criteria' );
     Add( $106F, 'AdditionalInspectionMethodSequence', [TTypeVR.vrSQ], 'Additional Inspection Method Sequence' );
     Add( $1070, 'AITDeviceType', [TTypeVR.vrCS], 'AIT Device Type' );
     Add( $1071, 'QRMeasurementsSequence', [TTypeVR.vrSQ], 'QR Measurements Sequence' );
     Add( $1072, 'TargetMaterialSequence', [TTypeVR.vrSQ], 'Target Material Sequence' );
     Add( $1073, 'SNRThreshold', [TTypeVR.vrFD], 'SNR Threshold' );
     Add( $1075, 'ImageScaleRepresentation', [TTypeVR.vrDS], 'Image Scale Representation' );
     Add( $1076, 'ReferencedPTOSequence', [TTypeVR.vrSQ], 'Referenced PTO Sequence' );
     Add( $1077, 'ReferencedTDRInstanceSequence', [TTypeVR.vrSQ], 'Referenced TDR Instance Sequence' );
     Add( $1078, 'PTOLocationDescription', [TTypeVR.vrST], 'PTO Location Description' );
     Add( $1079, 'AnomalyLocatorIndicatorSequence', [TTypeVR.vrSQ], 'Anomaly Locator Indicator Sequence' );
     Add( $107A, 'AnomalyLocatorIndicator', [TTypeVR.vrFL], 'Anomaly Locator Indicator' );
     Add( $107B, 'PTORegionSequence', [TTypeVR.vrSQ], 'PTO Region Sequence' );
     Add( $107C, 'InspectionSelectionCriteria', [TTypeVR.vrCS], 'Inspection Selection Criteria' );
     Add( $107D, 'SecondaryInspectionMethodSequence', [TTypeVR.vrSQ], 'Secondary Inspection Method Sequence' );
     Add( $107E, 'PRCSToRCSOrientation', [TTypeVR.vrDS], 'PRCS to RCS Orientation' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
