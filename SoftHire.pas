unit SoftHire;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase, IBQuery, IBSQL,
  IBTable, Strutils, Graphics, Dialogs, ADODB, Math, DBTables, DateUtils, variants, StdCtrls,
  IBStoredProc, Forms, JPEG;

type
  TDM = class(TDataModule)
    IBTransaction1: TIBTransaction;
    IBDataSetClienti: TIBDataSet;
    DSClienti: TDataSource;
    IBDataSetClientiCLI_NO: TFloatField;
    IBDataSetClientiEANCODE: TIBStringField;
    IBDataSetClientiINTRODATE: TDateTimeField;
    IBDataSetClientiCOGNRAGSOC: TIBStringField;
    IBDataSetClientiNOME: TIBStringField;
    IBDataSetClientiINDIRIZZO: TIBStringField;
    IBDataSetClientiCITTA: TIBStringField;
    IBDataSetClientiPAESE: TIBStringField;
    IBDataSetClientiCAP: TIBStringField;
    IBDataSetClientiCELLULARE: TIBStringField;
    IBDataSetClientiTELEFONO1: TIBStringField;
    IBDataSetClientiTELEFONO2: TIBStringField;
    IBDataSetClientiEMAIL: TIBStringField;
    IBDataSetClientiNOTE: TMemoField;
    IBDataSetClientiIMAGE: TBlobField;
    IBDataSetClientiTIPODOC: TIBStringField;
    IBDataSetClientiN_DOC: TIBStringField;
    DSArticolo: TDataSource;
    IBDataSetArticolo: TIBDataSet;
    IBDataSetArticoloART_NO: TFloatField;
    IBDataSetArticoloEANCODE: TIBStringField;
    IBDataSetArticoloINTRODATE: TDateTimeField;
    IBDataSetArticoloEXPIREDATE: TDateTimeField;
    IBDataSetArticoloSTAGIONE: TIBStringField;
    IBDataSetArticoloDESCRIZIONE: TIBStringField;
    IBDataSetArticoloBRAND: TIBStringField;
    IBDataSetArticoloTIPO: TIBStringField;
    IBDataSetArticoloMISURA: TIBStringField;
    IBDataSetArticoloCOLORE: TIBStringField;
    IBDataSetArticoloPREZZOPUB: TFloatField;
    IBDataSetArticoloPREZZORIS: TFloatField;
    IBDataSetArticoloPREZZOSCONT: TFloatField;
    IBDataSetArticoloINCVENDITA: TFloatField;
    IBDataSetArticoloINCNOLO: TFloatField;
    IBDataSetArticoloNOTE: TMemoField;
    DSTipo: TDataSource;
    DSStagione: TDataSource;
    IBDataSetStagione: TIBDataSet;
    IBDataSetStagioneSTAGIONE: TIBStringField;
    DSBrand: TDataSource;
    IBDataSetBrand: TIBDataSet;
    IBDataSetBrandBRANDS: TIBStringField;
    IBTransaction2: TIBTransaction;
    IBTransaction3: TIBTransaction;
    IBTableTipo: TIBTable;
    IBTableTipoTYPE_ART: TIBStringField;
    IBTransaction4: TIBTransaction;
    IBTransaction5: TIBTransaction;
    DSRented: TDataSource;
    IBDataSetRented: TIBDataSet;
    IBTransaction6: TIBTransaction;
    IBTransaction7: TIBTransaction;
    DSSchedule: TDataSource;
    IBDataSetSchedule: TIBDataSet;
    IBDataSetScheduleSCHED_NO: TFloatField;
    IBDataSetScheduleCLI_NO: TFloatField;
    IBDataSetScheduleEANCODE: TIBStringField;
    IBDataSetScheduleDATAINTRO: TDateTimeField;
    IBDataSetScheduleDATASTARTRENT: TDateTimeField;
    IBDataSetScheduleDATATAKEBACK: TDateTimeField;
    IBDataSetScheduleDATACLOSESCHD: TDateTimeField;
    IBDataSetScheduleDAYUSE: TIntegerField;
    IBDataSetScheduleSUBTOTALE: TFloatField;
    IBDataSetScheduleDISCOUNT: TFloatField;
    IBDataSetScheduleNETPRICE: TFloatField;
    IBDataSetScheduleFEEDAYLATE: TFloatField;
    IBDataSetScheduleOWNER: TIBStringField;
    IBDataSetScheduleNOTE: TMemoField;
    IBQueryArtRented: TIBQuery;
    DSQueryArtRented: TDataSource;
    IBTransaction8: TIBTransaction;
    IBQueryArticolo: TIBQuery;
    DSQueryArticolo: TDataSource;
    IBTransaction9: TIBTransaction;
    IBDataSetArticoloMANUALCODE: TIBStringField;
    IBDataSetArticoloAVAILABLE: TIBStringField;
    IBQueryArticoloTIPO: TIBStringField;
    IBQueryArticoloBRAND: TIBStringField;
    IBQueryArticoloDESCRIZIONE: TIBStringField;
    IBQueryArticoloMISURA: TIBStringField;
    IBQueryArticoloSTAGIONE: TIBStringField;
    IBQueryArticoloCOLORE: TIBStringField;
    IBQueryArticoloINTRODATE: TDateTimeField;
    IBQueryArticoloART_NO: TFloatField;
    IBQueryArtRentedART_NO: TFloatField;
    IBQueryTemp: TIBQuery;
    DSQueryTemp: TDataSource;
    IBTransaction10: TIBTransaction;
    IBDataSetRentedCLI_NO: TFloatField;
    IBDataSetRentedART_NO: TFloatField;
    IBDataSetRentedSCHED_NO: TFloatField;
    IBDataSetRentedSTATO: TIBStringField;
    IBDataSetRentedSTAGIONE: TIBStringField;
    IBDataSetRentedDESCRIZIONE: TIBStringField;
    IBDataSetRentedBRAND: TIBStringField;
    IBDataSetRentedTIPO: TIBStringField;
    IBDataSetRentedMISURA: TIBStringField;
    IBDataSetRentedAVAILABLE: TIBStringField;
    DSListino: TDataSource;
    IBDataSetListino: TIBDataSet;
    IBTransaction11: TIBTransaction;
    IBDataSetScheduleSTATO: TIBStringField;
    IBDataSetScheduleCOGNRAGSOC: TIBStringField;
    IBDataSetScheduleNOME: TIBStringField;
    IBDataSetScheduleSTATO_CONS: TIBStringField;
    IBDataSetSchedulePAGATO: TSmallintField;
    IBDataSetOp: TIBDataSet;
    DSOp: TDataSource;
    IBTransaction12: TIBTransaction;
    IBDataSetOpDIP_NO: TFloatField;
    IBDataSetOpEANCODE: TIBStringField;
    IBDataSetOpNOME: TIBStringField;
    IBDataSetOpCOGNOME: TIBStringField;
    IBDataSetOpTELEFONO: TIBStringField;
    IBDataSetOpREPARTO: TIBStringField;
    IBDataSetOpCODICE: TIntegerField;
    IBDataSetOpDATAINTRO: TDateTimeField;
    IBDataSetOpNOTE: TMemoField;
    IBDataSetOpIMAGE: TBlobField;
    IBDataSetArticoloRIPARAZIONI: TIntegerField;
    IBDataSetArticoloRIPDATA: TDateTimeField;
    IBDataSetArticoloEANCODE2: TIBStringField;
    IBDataSetParam: TIBDataSet;
    DSParametri: TDataSource;
    IBTransaction13: TIBTransaction;
    IBDataSetParamPARAM_NO: TFloatField;
    IBDataSetParamRAGSOC: TIBStringField;
    IBDataSetParamADMINPSW: TIBStringField;
    IBDataSetParamEANTOSCAN: TIBStringField;
    IBDataSetParamTAXFEELATE: TFloatField;
    IBDataSetParamLOGO: TBlobField;
    IBDataSetClientiSTATOTESSERA: TIBStringField;
    IBDataSetOpTESSERA: TSmallintField;
    IBDataSetRentedEANCODE: TIBStringField;
    IBDataSetParamNOTE: TMemoField;
    IBDataSetParamNUMSCHEDPRN: TIntegerField;
    IBDataSetParamADDRESS: TMemoField;
    IBDataSetParamSERVERDB: TIBStringField;
    IBDataSetParamROOT: TIBStringField;
    IBDataSetParamNOTE1: TMemoField;
    IBDatabase2: TIBDatabase;
    IBDataSetArticoloFLAGREPLAY: TSmallintField;
    DSEtichette: TDataSource;
    IBTransaction16: TIBTransaction;
    IBDataSetEtichette: TIBDataSet;
    IBDataSetEtichetteEANCODE: TIBStringField;
    IBDataSetEtichetteMANUALCODE: TIBStringField;
    IBDataSetEtichetteEANCODE2: TIBStringField;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    IBTransaction17: TIBTransaction;
    DSQueryZFact: TDataSource;
    IBQueryZFact: TIBQuery;
    IBDataSetRentedETA: TIBStringField;
    IBDataSetRentedPESO: TIBStringField;
    IBDataSetRentedALTEZZA: TIBStringField;
    IBDataSetRentedSESSO: TIBStringField;
    IBDataSetRentedCMSUOLA: TIBStringField;
    IBDataSetRentedLIVELLO: TIBStringField;
    IBDataSetRentedZFACTOR: TIBStringField;
    IBDataSetRentedCODICE: TIBStringField;
    IBDataSetParamPREF_ART_NO: TIBStringField;
    IBDataSetParamPREF_CLI_NO: TIBStringField;
    IBDataSetParamPRE_SCHED_NO: TIBStringField;
    IBDataSetParamPRE_OP_NO: TIBStringField;
    IBDataSetParamPRE_CV_NO: TIBStringField;
    IBDataSetClientiEANCODE2: TIBStringField;
    IBDataSetScheduleEANCODE2: TIBStringField;
    IBDataSetOpEANCODE2: TIBStringField;
    IBDataSetArticoloBRAND01: TIBStringField;
    IBDataSetArticoloDATASALDOCLI: TDateTimeField;
    IBDataSetArticoloTIPOSALDOCLI: TIBStringField;
    IBDataSetArticoloOWNER: TIBStringField;
    IBDataSetArticoloVENDUTODA: TIBStringField;
    IBDataSetParamRICUSATO: TIntegerField;
    IBDataSetArticoloCLI_NO: TFloatField;
    IBDatabase1: TIBDatabase;
    IBTransaction14: TIBTransaction;
    IBDataSetRip: TIBDataSet;
    DSRiparazione: TDataSource;
    IBDataSetParamPREF_RIP_NO: TIBStringField;
    IBDataSetParamPRINTER_ETIC: TIBStringField;
    IBDataSetParamPRINTER_FORM: TIBStringField;
    IBDataSetArticoloTENSH: TFloatField;
    IBDataSetArticoloTENSV: TFloatField;
    IBQuerySchTennis: TIBQuery;
    DSQuerySchTennis: TDataSource;
    IBQuerySchTennisSCHED_NO: TFloatField;
    IBQuerySchTennisCLI_NO: TFloatField;
    IBQuerySchTennisEANCODE: TIBStringField;
    IBQuerySchTennisDATASTARTRENT: TDateTimeField;
    IBQuerySchTennisDATATAKEBACK: TDateTimeField;
    IBQuerySchTennisDATACLOSESCHD: TDateTimeField;
    IBQuerySchTennisOWNER: TIBStringField;
    IBQuerySchTennisNOTE: TMemoField;
    IBQuerySchTennisSTATO: TIBStringField;
    IBQuerySchTennisSTATO_CONS: TIBStringField;
    IBQuerySchTennisSUBTOTALE: TFloatField;
    IBQuerySchTennisDISCOUNT: TFloatField;
    IBQuerySchTennisNETPRICE: TFloatField;
    IBQuerySchTennisFEEDAYLATE: TFloatField;
    IBQuerySchTennisDAYUSE: TIntegerField;
    IBQuerySchTennisPAGATO: TSmallintField;
    IBQuerySchTennisDATAINTRO: TDateTimeField;
    IBQuerySchTennisEANCODE2: TIBStringField;
    IBDatasetAcq: TIBDataSet;
    DSAcq: TDataSource;
    IBTransaction15: TIBTransaction;
    IBDatasetAcqACQ_NO: TIntegerField;
    IBDatasetAcqCLI_NO: TFloatField;
    IBDatasetAcqTIPOPRODOTTO: TIBStringField;
    IBDatasetAcqBRAND: TIBStringField;
    IBDatasetAcqDESCRIZIONE: TIBStringField;
    IBDatasetAcqBARCODEART: TIBStringField;
    IBDatasetAcqDATAINTRO: TDateTimeField;
    IBDatasetAcqDATASALDO: TDateTimeField;
    IBDatasetAcqPREZZOPUB: TFloatField;
    IBDatasetAcqPREZZONET: TFloatField;
    IBDatasetAcqTAGLIA: TIBStringField;
    IBDatasetAcqDATARESO: TDateTimeField;
    IBDatasetAcqQTA: TIntegerField;
    IBDatasetAcqSCONTO: TIntegerField;
    IBDataSetScheduleINDIRIZZO: TIBStringField;
    IBDataSetScheduleN_DOC: TIBStringField;
    IBDataSetParamDAYWORKREADY: TIntegerField;
    IBTransaction18: TIBTransaction;
    IBDataSetLocalParam: TIBDataSet;
    DSLocalParam: TDataSource;
    IBDataSetRipRIP_NO: TIntegerField;
    IBDataSetRipCLI_NO: TIntegerField;
    IBDataSetRipTIPOPRODOTTO: TIBStringField;
    IBDataSetRipBRAND: TIBStringField;
    IBDataSetRipDESCRIZIONE: TIBStringField;
    IBDataSetRipFONDO: TSmallintField;
    IBDataSetRipLAMINE: TSmallintField;
    IBDataSetRipSCIOLINA: TSmallintField;
    IBDataSetRipPREPGARA: TSmallintField;
    IBDataSetRipRIPPARTIC: TSmallintField;
    IBDataSetRipRADDRIZZATURA: TSmallintField;
    IBDataSetRipCHECKATTACCHI: TSmallintField;
    IBDataSetRipPELLI: TSmallintField;
    IBDataSetRipPREZZO: TFloatField;
    IBDataSetRipNOTE1: TMemoField;
    IBDataSetRipRITIRATODA: TIBStringField;
    IBDataSetRipOWNER: TIBStringField;
    IBDataSetRipKG: TIntegerField;
    IBDataSetRipMMSUOLA: TIntegerField;
    IBDataSetRipDATAREADY: TDateTimeField;
    IBDataSetRipDATAINSERT: TDateTimeField;
    IBDataSetRipDATARITIRORICH: TDateTimeField;
    IBDataSetRipDATARITIRO: TDateTimeField;
    IBDataSetRipURGENZA: TIntegerField;
    IBDataSetRipTIPOPAGAM: TIBStringField;
    IBDataSetRipEANCODERIP: TIBStringField;
    IBDataSetRipSTANCESNOW: TIBStringField;
    IBDataSetRipBINDINGS: TIBStringField;
    IBDataSetRipSXDEG: TIBStringField;
    IBDataSetRipDXDEG: TIBStringField;
    IBDataSetRipSCHED_NO: TFloatField;
    IBDataSetRipBOOT_DX: TSmallintField;
    IBDataSetRipBOOT_SX: TSmallintField;
    IBDataSetRipALLARGPIANTA_DX: TSmallintField;
    IBDataSetRipALLARGPIANTA_SX: TSmallintField;
    IBDataSetRipALZARECOLLO_DX: TSmallintField;
    IBDataSetRipALZARECOLLO_SX: TSmallintField;
    IBDataSetRipALLUNGSCAFO_DX: TSmallintField;
    IBDataSetRipMALLEOLO_DX: TSmallintField;
    IBDataSetRipMALLEOLO_SX: TSmallintField;
    IBDataSetRipCAMBIOGANCIO_DX: TSmallintField;
    IBDataSetRipSOLETTARISC: TSmallintField;
    IBDataSetRipCAMBIOGANCIO_SX: TSmallintField;
    IBDataSetRipSOLOTAVOLA: TSmallintField;
    IBDataSetRipALLUNGASCARPONE_DX: TSmallintField;
    IBDataSetRipALLUNGASCARPONE_SX: TSmallintField;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBTransaction19: TIBTransaction;
    IBDataSetRentedRENART_NO: TFloatField;
    IBDatasetAcqDATAULTIMAMOD: TDateTimeField;
    DSMat: TDataSource;
    IBTransaction20: TIBTransaction;
    IBDataSetMat: TIBDataSet;
    IBDataSetMatIDMAT: TIntegerField;
    IBDataSetMatIDCLI: TIntegerField;
    IBDataSetMatDATAINTRO: TDateTimeField;
    IBDataSetMatDATAFINE: TDateTimeField;
    IBDataSetMatDESCRIZIONE: TIBStringField;
    IBDataSetMatBRAND: TIBStringField;
    IBDataSetMatCOLORE: TIBStringField;
    IBDataSetMatCALIBRO: TIBStringField;
    IBDataSetMatSEZIONE: TIBStringField;
    IBDataSetMatPREZZO_PUB: TFloatField;
    IBDataSetMatPAGATA: TIntegerField;
    IBDataSetMatPAYMENTWAY: TIBStringField;
    IBDataSetMatEANCODEART: TIBStringField;
    IBDatasetAcqTIPOPAGAMMATASSA: TIBStringField;
    IBDatasetAcqSEZIONE: TIBStringField;
    IBDatasetAcqDATAFINE: TDateTimeField;
    IBDatasetAcqCOLOREMATASSA: TIBStringField;
    IBTransaction21: TIBTransaction;
    DSIncord: TDataSource;
    IBDataSetIncord: TIBDataSet;
    IBDataSetIncordINC_NO: TIntegerField;
    IBDataSetIncordART_NO: TIntegerField;
    IBDataSetIncordDATAINSERT: TDateTimeField;
    IBDataSetIncordDATAREADY: TDateTimeField;
    IBDataSetIncordDATARICCONS: TDateTimeField;
    IBDataSetIncordTIPOPAGAMENTO: TIBStringField;
    IBDataSetIncordEANCODE: TIBStringField;
    IBDataSetIncordGRIPMANICO: TIBStringField;
    IBDataSetIncordANTIBOUNCHE: TIBStringField;
    IBDataSetIncordPROTEZIONETESTA: TIBStringField;
    IBDataSetIncordPIOMBATURAGR: TIBStringField;
    IBDataSetIncordNOTEPIOMBATURA: TMemoField;
    IBDataSetIncordNOTE: TMemoField;
    IBDataSetIncordCOSTO_INCORD: TFloatField;
    IBDataSetIncordCOSTOGRIP: TFloatField;
    IBDataSetIncordCOSTOPROTEZ: TFloatField;
    IBDataSetIncordCOSTOPIOMB: TFloatField;
    IBDataSetIncordMANICO: TIBStringField;
    IBDataSetIncordCOSTOMANICO: TFloatField;
    IBDataSetIncordCOSTOEXTRA: TFloatField;
    IBDataSetIncordSCONTO: TFloatField;
    IBDataSetIncordSUBTOTALE: TFloatField;
    IBDataSetIncordTOTALE: TFloatField;
    IBDataSetParamPREF_INC_NO: TIBStringField;
    IBDataSetParamENABCV: TSmallintField;
    IBDataSetParamENABFINV: TSmallintField;
    IBDataSetParamENABFINSCHE: TSmallintField;
    IBDataSetParamENABRIP: TSmallintField;
    IBDataSetParamENABOPER: TSmallintField;
    IBDataSetParamENABREP: TSmallintField;
    IBDataSetParamENABTENNIS: TSmallintField;
    IBDataSetIncordURGENTE: TIntegerField;
    IBDataSetArticoloCV: TIntegerField;
    IBDataSetIncordCOSTOANTIBOUNCHE: TFloatField;
    IBDataSetIncordEANGRIP: TIBStringField;
    IBDataSetIncordEANANTIBOUNCHE: TIBStringField;
    IBDataSetIncordEANMANICO: TIBStringField;
    IBDataSetIncordACCONTO: TFloatField;
    IBDataSetIncordDATAULTIMOD: TDateTimeField;
    IBDataSetIncordDATAACCONTO: TDateTimeField;
    IBDataSetIncordDATASALDO: TDateTimeField;
    IBDataSetIncordPIOMBPOSIZ: TIBStringField;
    IBDataSetIncordSILICONEMANICO: TIntegerField;
    IBDataSetIncordEANOVERGRIP: TIBStringField;
    IBDataSetIncordOVERGRIP: TIBStringField;
    IBDataSetIncordCOSTOOVERGRIP: TFloatField;
    IBDataSetIncordCOSTOSILICONE: TFloatField;
    IBDataSetIncordSALDO: TFloatField;
    IBDataSetIncordLAVORIEXTRA: TBlobField;
    IBDataSetIncordMOTIVOINCAZERO: TIBStringField;
    IBDataSetIncordID_MATVERT: TIntegerField;
    IBDataSetIncordID_MATHOR: TIntegerField;
    IBDataSetIncordTENSORIZ: TFloatField;
    IBDataSetIncordTENSVERT: TFloatField;
    IBDataSetIncordEANCODEMATH: TIBStringField;
    IBDataSetIncordEANCODEMATO: TIBStringField;
    IBDataSetIncordEANNASTRO: TIBStringField;
    IBDataSetIncordEANPIOMBO: TIBStringField;
    IBDataSetParamENABTREE: TSmallintField;
    IBDataSetLocalParamPOSTAZIONE: TIBStringField;
    IBDataSetLocalParamETIC_PRINTER: TIBStringField;
    IBDataSetLocalParamPAPER_PRINTER: TIBStringField;
    IBDataSetLocalParamALERTSCHEDNOLO: TIntegerField;
    IBDataSetLocalParamALERTDATICLI: TIntegerField;
    IBDataSetLocalParamDEFTIPORIP: TIBStringField;
    IBDataSetLocalParamENABCV: TSmallintField;
    IBDataSetLocalParamENABFINV: TSmallintField;
    IBDataSetLocalParamENABFINSCHE: TSmallintField;
    IBDataSetLocalParamENABRIP: TSmallintField;
    IBDataSetLocalParamENABOPER: TSmallintField;
    IBDataSetLocalParamENABREP: TSmallintField;
    IBDataSetLocalParamENABTREE: TSmallintField;
    IBDataSetLocalParamENABTENNIS: TSmallintField;
    IBDataSetLocalParamENABLABMODULE: TSmallintField;
    IBDataSetLocalParamNOLOSOFT_VER: TIBStringField;
    IBDataSetLocalParamINCORDOMAGGIO: TIntegerField;
    IBDataSetLocalParamIDSETTINGS: TFloatField;
    IBDatasetAcqINUSO: TIntegerField;
    IBDataSetLocalParamSENDNOLOTOCLI: TIntegerField;
    IBDataSetLocalParamALLARMSCHEDCLIZERO: TIntegerField;
    IBDataSetLocalParamALLARMDELETESCHEDULE: TIntegerField;
    IBDataSetLocalParamALLARMDELETECLI: TIntegerField;
    IBDataSetLocalParamALLARMDELETEART: TIntegerField;
    IBDataSetLocalParamSMSCONSEGNA: TIntegerField;
    IBDataSetLocalParamEMAILCONSEGNA: TIntegerField;
    IBDataSetLocalParamEMAILCONFERMACHIUSURA: TIntegerField;
    IBDataSetLocalParamSMSCONFERMACHIUSURA: TIntegerField;
    IBDataSetLocalParamSAVESCHEDTOPDF: TIntegerField;
    IBDataSetLocalParamPATHFILEPDFSCHED: TIBStringField;
    IBDataSetListinoPRICE_NO: TFloatField;
    IBDataSetListinoTIPO: TIBStringField;
    IBDataSetListinoDESCRIZIONE: TMemoField;
    IBDataSetListinoD1: TFloatField;
    IBDataSetListinoD2: TFloatField;
    IBDataSetListinoD3: TFloatField;
    IBDataSetListinoD4: TFloatField;
    IBDataSetListinoD5: TFloatField;
    IBDataSetListinoD6: TFloatField;
    IBDataSetListinoD7: TFloatField;
    IBDataSetListinoD8: TFloatField;
    IBDataSetListinoD9: TFloatField;
    IBDataSetListinoD10: TFloatField;
    IBDataSetListinoD11: TFloatField;
    IBDataSetListinoD12: TFloatField;
    IBDataSetListinoD13: TFloatField;
    IBDataSetListinoD14: TFloatField;
    IBDataSetListinoD15: TFloatField;
    IBDataSetListinoD16: TFloatField;
    IBDataSetListinoD17: TFloatField;
    IBDataSetListinoD18: TFloatField;
    IBDataSetListinoD19: TFloatField;
    IBDataSetListinoD20: TFloatField;
    IBDataSetListinoDA21A31: TFloatField;
    IBDataSetListinoDA32A45: TFloatField;
    IBDataSetListinoDA46A60: TFloatField;
    IBDataSetListinoWEEKEND: TFloatField;
    IBDataSetListinoSTAGIONE: TFloatField;
    IBDataSetListinoREPARTO: TIBStringField;
    IBDataSetListinoSOTTOREP: TIBStringField;
    IBDataSetScheduleDATELASTADV: TDateTimeField;
    IBDataSetScheduleSC_NUMCASSA: TIntegerField;
    IBDataSetScheduleSC_DATAORA: TDateTimeField;
    IBDataSetScheduleSC_NUMDOC: TIntegerField;
    IBDataSetScheduleSC_IMPORTO: TFloatField;
    IBDataSetParamSTRADVFRMDATA: TDateTimeField;
    IBDataSetScheduleNOADV: TIntegerField;
    IBDataSetScheduleSTOPADV: TIntegerField;
    IBDataSetArticoloMANUALCODE1: TIBStringField;
    IBDataSetParamDAYRESERVSTART: TIntegerField;
    IBDataSetParamDAYRESERVBACK: TIntegerField;
    IBDataSetLocalParamRFIDCOMPORT: TIntegerField;
    IBDataSetLocalParamRFIDBADURATE: TIntegerField;
    IBDataSetLocalParamOPNSYSTEM: TIntegerField;
    IBDataSetLocalParamCALCZFACT: TIntegerField;
    IBDataSetScheduleRECEIPTSENT: TDateTimeField;
    IBDataSetClientiDELETEDATE: TDateTimeField;
    IBDataSetLocalParamCAMERA: TIBStringField;
    IBDataSetClientiVALIDNO: TIBStringField;
    IBDataSetLocalParamCAMERAID: TIntegerField;
    IBDataSetLocalParamDOCIMAGESAVEPATH: TIBStringField;
    IBDataSetParamSOFTWARE_VERSION: TIBStringField;
    IBDataSetLocalParamENABLEADVISE: TSmallintField;
    IBDataSetParamIGNORESERVATION: TSmallintField;
    IBDataSetParamPRINTRIPNEWBARCODE: TSmallintField;
    IBDataSetRipSC_NUMCASSA: TIntegerField;
    IBDataSetRipSC_DATAORA: TDateTimeField;
    IBDataSetRipSC_NUMDOC: TIntegerField;
    IBDataSetRipSC_IMPORTO: TFloatField;
    IBDataSetRipPAGATO: TSmallintField;
    IBDataSetClientiDATAVALID_MAIL: TDateTimeField;
    IBDataSetClientiDATAVALID_CELL: TDateTimeField;
    IBDataSetParamDATA_ALLARM_LIM_SMS: TDateTimeField;
    procedure DSClientiDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetClientiBeforePost(DataSet: TDataSet);
    procedure IBDataSetClientiBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetClientiBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetClientiAfterPost(DataSet: TDataSet);
    procedure IBDataSetClientiBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetArticoloAfterPost(DataSet: TDataSet);
    procedure IBDataSetArticoloBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetArticoloBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetArticoloBeforeInsert(DataSet: TDataSet);
    procedure DSArticoloDataChange(Sender: TObject; Field: TField);
    procedure IBTableTipoAfterPost(DataSet: TDataSet);
    procedure IBTableTipoBeforeDelete(DataSet: TDataSet);
    procedure IBTableTipoBeforeEdit(DataSet: TDataSet);
    procedure IBTableTipoBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetArticoloBeforePost(DataSet: TDataSet);
    procedure IBDataSetArticoloPREZZOPUBSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetArticoloPREZZORISSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetArticoloPREZZOSCONTSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetArticoloINCVENDITASetText(Sender: TField;
      const Text: String);
    procedure DSScheduleDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetScheduleBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetScheduleAfterPost(DataSet: TDataSet);
    procedure IBDataSetScheduleBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetScheduleBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetScheduleBeforePost(DataSet: TDataSet);
    procedure IBDataSetScheduleSUBTOTALESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetScheduleNETPRICESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetScheduleFEEDAYLATESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetScheduleFEELOSTSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetRentedAfterPost(DataSet: TDataSet);
    procedure IBDataSetRentedBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetRentedBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetRentedBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetRentedBeforeInsertCalcZfact(DataSet: TDataSet);
    procedure IBDataSetListinoBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetListinoBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetListinoBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetListinoAfterPost(DataSet: TDataSet);
    procedure IBDataSetScheduleDATASTARTRENTSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetScheduleDAYUSESetText(Sender: TField;
      const Text: String);
    procedure DSRentedDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetArticoloAVAILABLEChange(Sender: TField);
    procedure IBDataSetScheduleAfterDelete(DataSet: TDataSet);
    procedure IBDataSetScheduleAfterCancel(DataSet: TDataSet);
    procedure IBTableTipoAfterInsert(DataSet: TDataSet);
    procedure IBDataSetScheduleDATASTARTRENTValidate(Sender: TField);
    procedure IBDataSetScheduleDATATAKEBACKValidate(Sender: TField);
    procedure IBDataSetScheduleAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure IBDataSetScheduleDISCOUNTSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetScheduleSUBTOTALEChange(Sender: TField);
    procedure IBDataSetScheduleNETPRICEChange(Sender: TField);
    procedure IBDataSetScheduleDAYUSEChange(Sender: TField);
    procedure IBDataSetScheduleSTATOChange(Sender: TField);
    procedure IBDataSetScheduleAfterScroll(DataSet: TDataSet);
    procedure IBDataSetScheduleBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetScheduleAfterEdit(DataSet: TDataSet);
    procedure DSOpDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetOpBeforePost(DataSet: TDataSet);
    procedure IBDataSetOpBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetOpBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetOpBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetOpAfterPost(DataSet: TDataSet);
    procedure IBDataSetOpAfterDelete(DataSet: TDataSet);
    procedure IBDataSetOpAfterCancel(DataSet: TDataSet);
    procedure IBDataSetArticoloINCVENDITAChange(Sender: TField);
    procedure IBDataSetArticoloAfterInsert(DataSet: TDataSet);
    procedure IBDataSetParamAfterDelete(DataSet: TDataSet);
    procedure IBDataSetParamAfterPost(DataSet: TDataSet);
    procedure IBDataSetParamAfterCancel(DataSet: TDataSet);
    procedure IBDataSetParamBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetParamBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetParamBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetArticoloAfterScroll(DataSet: TDataSet);
    procedure IBDatabase1BeforeConnect(Sender: TObject);
    procedure IBDatabase1AfterConnect(Sender: TObject);
    procedure IBDatabase1AfterDisconnect(Sender: TObject);
    procedure IBDataSetClientiAfterDelete(DataSet: TDataSet);
    procedure IBDataSetClientiBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetClientiAfterCancel(DataSet: TDataSet);
    procedure IBDataSetArticoloAfterDelete(DataSet: TDataSet);
    procedure IBDataSetArticoloAfterCancel(DataSet: TDataSet);
    procedure IBTableTipoBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetArticoloBeforeCancel(DataSet: TDataSet);
    procedure IBTableTipoAfterCancel(DataSet: TDataSet);
    procedure IBTableTipoAfterDelete(DataSet: TDataSet);
    procedure IBDataSetStagioneBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetStagioneBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetStagioneBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetStagioneBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetStagioneAfterCancel(DataSet: TDataSet);
    procedure IBDataSetStagioneAfterDelete(DataSet: TDataSet);
    procedure IBDataSetStagioneAfterPost(DataSet: TDataSet);
    procedure IBDataSetBrandAfterCancel(DataSet: TDataSet);
    procedure IBDataSetBrandAfterDelete(DataSet: TDataSet);
    procedure IBDataSetBrandAfterPost(DataSet: TDataSet);
    procedure IBDataSetBrandBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetBrandBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBrandBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBrandBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetListinoAfterCancel(DataSet: TDataSet);
    procedure IBDataSetListinoAfterDelete(DataSet: TDataSet);
    procedure IBDataSetListinoBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetOpBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetParamBeforeCancel(DataSet: TDataSet);
    procedure IBDataSetStagioneBeforeRefresh(DataSet: TDataSet);
    procedure IBDataSetBrandBeforeRefresh(DataSet: TDataSet);
    procedure IBDatabase2BeforeConnect(Sender: TObject);
    procedure IBDatabase2AfterDisconnect(Sender: TObject);
    procedure IBDatabase2AfterConnect(Sender: TObject);
    procedure IBDataSetScheduleAfterOpen(DataSet: TDataSet);
    procedure IBDataSetClientiAfterEdit(DataSet: TDataSet);
    procedure IBDataSetRentedAfterDelete(DataSet: TDataSet);
    procedure IBDataSetRentedAfterCancel(DataSet: TDataSet);
    procedure FilterSkiRented;
    procedure ibdatasetrentedBeforePostCalcZ(DataSet: TDataSet);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure IBDataSetArticoloTIPOSALDOCLIChange(Sender: TField);
    procedure IBDataSetParamRICUSATOSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetArticoloAfterEdit(DataSet: TDataSet);
    procedure IBDataSetArticoloEANCODE2SetText(Sender: TField;
      const Text: String);
    procedure IBDataSetParamENABCVChange(Sender: TField);
    procedure IBDataSetParamENABREPChange(Sender: TField);
    procedure IBDataSetParamENABOPERChange(Sender: TField);
    procedure IBDataSetParamENABRIPChange(Sender: TField);
    procedure IBDataSetParamENABFINVChange(Sender: TField);
    procedure IBDataSetParamENABFINSCHEChange(Sender: TField);
    procedure DSListinoDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetParamAfterOpen(DataSet: TDataSet);
    procedure IBDataSetParamENABTREEChange(Sender: TField);
    procedure IBDataSetRentedETAChange(Sender: TField);
    procedure IBDataSetRentedPESOChange(Sender: TField);
    procedure IBDataSetRentedALTEZZAChange(Sender: TField);
    procedure IBDataSetRentedSESSOChange(Sender: TField);
    procedure IBDataSetRentedCMSUOLAChange(Sender: TField);
    procedure IBDataSetRentedLIVELLOChange(Sender: TField);
    procedure IBDataSetArticoloINCVENDITAValidate(Sender: TField);
    procedure IBDataSetArticoloPREZZORISChange(Sender: TField);
    procedure IBDataSetArticoloEXPIREDATEChange(Sender: TField);
    procedure IBDataSetRipAfterPost(DataSet: TDataSet);
    procedure IBDataSetRipBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetRipBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetRipBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetRipAfterCancel(DataSet: TDataSet);
    procedure IBDataSetRipBeforeClose(DataSet: TDataSet);
    procedure IBDataSetRipAfterInsert(DataSet: TDataSet);
    procedure DSRiparazioneDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetRipTIPOPAGAMChange(Sender: TField);
    procedure IBDataSetRipRITIRATODAChange(Sender: TField);
    procedure IBDataSetRipAfterScroll(DataSet: TDataSet);
    procedure IBQuerySchTennisAfterScroll(DataSet: TDataSet);
    procedure IBDatasetAcqAfterInsert(DataSet: TDataSet);
    procedure IBDatasetAcqBeforeInsert(DataSet: TDataSet);
    procedure IBDatasetAcqBeforeEdit(DataSet: TDataSet);
    procedure IBDatasetAcqBeforeDelete(DataSet: TDataSet);
    procedure IBDatasetAcqAfterPost(DataSet: TDataSet);
    procedure IBDatasetAcqAfterDelete(DataSet: TDataSet);
    procedure IBDatasetAcqAfterCancel(DataSet: TDataSet);
    procedure DSAcqDataChange(Sender: TObject; Field: TField);
    procedure IBDatasetAcqAfterEdit(DataSet: TDataSet);
    procedure IBDatasetAcqSCONTOChange(Sender: TField);
    procedure IBDatasetAcqPREZZOPUBChange(Sender: TField);
    procedure IBDataSetRipAfterDelete(DataSet: TDataSet);
    procedure RefreshRentedartQuery;
    procedure DeleteRentedartQuery(RENART_NO:string);
    Function  GenID(Generator:string):string;
    Function  GenID2(Generator:string):string;
    procedure IBDataSetSchedulePAGATOValidate(Sender: TField);
    procedure IBQuery1AfterOpen(DataSet: TDataSet);
    procedure IBDataSetLocalParamBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetLocalParamBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetLocalParamBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetLocalParamAfterPost(DataSet: TDataSet);
    procedure IBDataSetLocalParamAfterCancel(DataSet: TDataSet);
    procedure IBDataSetLocalParamAfterDelete(DataSet: TDataSet);
    procedure IBDatasetAcqPREZZOPUBSetText(Sender: TField;
      const Text: String);
    procedure IBDatasetAcqPREZZONETSetText(Sender: TField;
      const Text: String);
    procedure IBDatasetAcqSCONTOSetText(Sender: TField;
      const Text: String);
    procedure IBDatasetAcqBeforePost(DataSet: TDataSet);
    procedure DSMatDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetMatBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetMatBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetMatBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetMatAfterPost(DataSet: TDataSet);
    procedure IBDataSetMatAfterDelete(DataSet: TDataSet);
    procedure IBDataSetMatAfterCancel(DataSet: TDataSet);
    procedure IBDataSetMatAfterInsert(DataSet: TDataSet);
    procedure IBDataSetMatPREZZO_PUBSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetMatBeforePost(DataSet: TDataSet);
    procedure IBDatasetAcqTIPOPAGAMMATASSAChange(Sender: TField);
    function  ArticoliNoleggiati:string;
    function  ArticoliDaConsegnare:string;
    function  ArticoliConsegnati:string;
    procedure DSIncordDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetIcordAfterInsert(DataSet: TDataSet);
    procedure IBDataSetIncordAfterCancel(DataSet: TDataSet);
    procedure IBDataSetIncordAfterDelete(DataSet: TDataSet);
    procedure IBDataSetIncordAfterPost(DataSet: TDataSet);
    procedure IBDataSetIncordBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetIncordBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetIncordBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetIncordBeforePost(DataSet: TDataSet);
    procedure IBDataSetIncordAfterScroll(DataSet: TDataSet);
    procedure IBDataSetIncordCOSTO_INCORDSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCalcFields(DataSet: TDataSet);
    procedure IBDataSetIncordSCONTOSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOGRIPSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOPROTEZSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOPIOMBSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOMANICOSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOEXTRASetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordSUBTOTALESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordTOTALESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOANTIBOUNCHESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordACCONTOSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOOVERGRIPSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordCOSTOSILICONESetText(Sender: TField;
      const Text: String);
    procedure IBDataSetIncordTOTALEChange(Sender: TField);
    procedure IBDataSetIncordID_MATVERTChange(Sender: TField);
    procedure IBDataSetIncordID_MATHORChange(Sender: TField);
    procedure IBDatasetAcqAfterScroll(DataSet: TDataSet);
    procedure IBDataSetIncordOVERGRIPChange(Sender: TField);
    procedure IBDataSetIncordEANGRIPChange(Sender: TField);
    procedure IBDataSetIncordEANMANICOChange(Sender: TField);
    procedure IBDataSetIncordMANICOChange(Sender: TField);
    procedure IBDataSetIncordEANANTIBOUNCHEChange(Sender: TField);
    procedure IBDataSetIncordANTIBOUNCHEChange(Sender: TField);
    procedure IBDataSetIncordSILICONEMANICOChange(Sender: TField);
    procedure IBDataSetIncordEANPIOMBOChange(Sender: TField);
    procedure IBDataSetIncordPIOMBPOSIZChange(Sender: TField);
    procedure IBDataSetIncordEANNASTROChange(Sender: TField);
    procedure IBDataSetIncordPROTEZIONETESTAChange(Sender: TField);
    procedure IBDataSetIncordLAVORIEXTRAChange(Sender: TField);
    procedure IBDataSetIncordEANOVERGRIPChange(Sender: TField);
    procedure IBDataSetClientiEMAILValidate(Sender: TField);
    procedure IBDataSetScheduleAfterRefresh(DataSet: TDataSet);
    procedure IBDataSetClientiAfterOpen(DataSet: TDataSet);
    procedure IBDataSetClientiAfterScroll(DataSet: TDataSet);
    procedure IBDataSetRipPREZZOChange(Sender: TField);
    procedure IBDataSetRipBeforeScroll(DataSet: TDataSet);
    procedure IBDatabase1BeforeDisconnect(Sender: TObject);
    procedure IBDatabase2BeforeDisconnect(Sender: TObject);
   private

    { Private declarations }
  public
   LockAfterScroll:boolean;
    { Public declarations }
  end;


var
  DM: TDM;
  saveplace:Tbookmark;
  ID:integer;
  Peso : String;     //tStringList;
  Altezza : String;  //tStringList;
  Eta : String;      //tStringList;
  livello : String;  //tStringList;
  suola : String;    //tStringList;
  ScheduleMode:String;




implementation
uses nolo,Ean39CodeGen,LogInDatabase,ZFact, TestOPNUnit, Riparazione, Account, TennisModule, Allertsched,
  DataIncRic, SceCliNew, ThreadEmail, CliForm, clienteform,uAppPaths;
//QForms;
{$R *.dfm}

procedure TDM.DSClientiDataChange(Sender: TObject; Field: TField);
begin
Menu.BTNSALVA1.Enabled:=DSClienti.State in [dsEdit,dsInsert];
Menu.BTNELIMINA1.Enabled:=DSClienti.State in [dsBrowse];
Menu.BTNANNULLA1.Enabled:=DSClienti.State in [dsEdit,dsInsert];
Menu.BTNMODIFICA1.Enabled:=DSClienti.State in [dsBrowse];
Menu.BTNNUOVO1.Enabled:=DSClienti.State in [dsBrowse];
Menu.GroupBox2.Enabled:=DSClienti.State in [dsEdit,dsInsert];
RentalCust.Nuovo.enabled:=DM.IBDataSetClienti.IsEmpty;
RentalCust.Modifica.enabled:=not DM.IBDataSetClienti.IsEmpty;
RentalCust.Avanti.enabled:=not DM.IBDataSetClienti.IsEmpty;
CLIFORMNEW.GroupBox1.Enabled:=DSClienti.State in [dsEdit,dsInsert];
CLIFORMNEW.BTNSALVA1.Enabled:=DSClienti.State in [dsEdit,dsInsert];
CLIFORMNEW.BTNMODIFICA1.Enabled:=not (DSClienti.State in [dsEdit,dsInsert]);
CLIFORMNEW.BTNANNULLA1.Enabled:=DSClienti.State in [dsEdit,dsInsert];
CLIFORMNEW.BTNELIMINA1.Enabled:=DSClienti.State in [dsEdit,dsInsert];
end;

//procedure TMyWorkerThread.Execute(AddrTo:string; Subject:string; Body:string; Attachfile:string; tipo:integer);
//begin

//end;







procedure TDM.DSListinoDataChange(Sender: TObject; Field: TField);
begin
Menu.DBGrid3.ReadOnly:=not (DSListino.State in [dsEdit,dsInsert]);
end;

procedure TDM.IBDataSetClientiBeforePost(DataSet: TDataSet);
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('SELECT COUNT(*) FROM COMUNI');
DM.ADOQuery1.SQL.Add('WHERE (CITTA = "'+DM.IBDataSetClientiCITTA.AsString+'") AND (LOCALITA = "'+DM.IBDataSetClientiPAESE.AsString+'") AND (CAP = "'+DM.IBDataSetClientiCAP.AsString+'")' );
DM.ADOQuery1.Open;
if DM.ADOQuery1.fields.Fields[0].AsInteger=0 then
begin
DM.ADOQuery1.Close;
DM.ADOQuery1.SQL.Clear;
DM.ADOQuery1.SQL.Add('INSERT INTO COMUNI (CAP,LOCALITA,CITTA)');
DM.ADOQuery1.SQL.Add('VALUES ("'+DM.IBDataSetClientiCAP.AsString+'","'+DM.IBDataSetClientiPAESE.AsString+'","'+DM.IBDataSetClientiCITTA.AsString+'")');
DM.ADOQuery1.ExecSQL;
end;

SavePlace:=IBDatasetClienti.GetBookmark;
DM.IBDataSetClientiEANCODE.AsString:=Ean39Gen1(DM.IBDataSetClientiCOGNRAGSOC.AsString+DM.IBDataSetClientiNOME.AsString,DM.IBDataSetClientiCLI_NO.AsString);
DM.IBDataSetClientiEANCODE2.AsString:=Ean39Gen2(DM.IBDataSetParamPREF_CLI_NO.AsString,DM.IBDataSetClientiCLI_NO.AsString);
//DM.IBDataSetClientiINTRODATE.Value:=date;
DM.IBDataSetClientiINTRODATE.Value:=now;  //dalla V3.0
end;

procedure TDM.IBDataSetClientiBeforeEdit(DataSet: TDataSet);
begin
ID:=DM.IBDataSetClientiCLI_NO.AsInteger;
if IBTransaction1.Active = false then
IBTransaction1.StartTransaction;

end;

procedure TDM.IBDataSetClientiBeforeInsert(DataSet: TDataSet);
begin
if IBTransaction1.Active = false then
IBTransaction1.StartTransaction;
end;

procedure TDM.IBDataSetClientiAfterPost(DataSet: TDataSet);
var  LocalJPG:TJPEGImage;
begin
if (not DM.IBDataSetClientiCOGNRAGSOC.IsNull) and (length(DM.IBDataSetClientiCOGNRAGSOC.Value)>1) and
   (not DM.IBDataSetClientiNOME.IsNull) and (length(DM.IBDataSetClientiNOME.Value)>1) and
   (not DM.IBDataSetClientiCELLULARE.IsNull) and (length(DM.IBDataSetClientiCELLULARE.Value)>8) and
   (not DM.IBDataSetClientiEMAIL.IsNull) and (length(DM.IBDataSetClientiEMAIL.Value)>10) and Strutils.AnsiContainsText(DM.IBDataSetClientiEMAIL.Value,'@')  and
   (not DM.IBDataSetClientiN_DOC.IsNull) and (length(DM.IBDataSetClientiN_DOC.Value)>4) and
   (not DM.IBDataSetClientiVALIDNO.IsNull) then
  CLIFORMNEW.BitBtn2.Enabled:=true;




ID:=DM.IBDataSetClientiCLI_NO.AsInteger;

//nuova procedura di salvataggio immagine
   LocalJPG := TJPEGImage.create;
 if nolo.Menu.image1.tag=1 then
 begin
 LocalJPG.Assign(nolo.Menu.image1.picture.Bitmap);
 LocalJPG.SaveToFile(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg')
 end;

 if nolo.Menu.image4.tag=1 then
 begin
 LocalJPG.Assign(nolo.Menu.image4.picture.Bitmap);
 LocalJPG.SaveToFile(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg')
 end;
 LocalJPG.Free;
   //  LocalJPG.SaveToFile(SavePictureDialog1.FileName);
   //  if F_R then
     //LocalJPG.SaveToFile(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg')

// fine nuova procedura salvtaggio immagine


if IBtransaction1.InTransaction then
begin
IBTransaction1.Commit;
IBDataSetClienti.Open;
end;



if ID <> 0 then
begin
DM.IBDataSetClienti.Close;
DM.IBDataSetClienti.SelectSQL.Clear;
 if cliformnew.Focused then
  DM.IBDataSetClienti.SelectSQL.Add('SELECT * FROM CLIENTI WHERE CLI_NO="'+ inttostr(ID)+'" AND DELETEDATE IS NULL' )
 else
  DM.IBDataSetClienti.SelectSQL.Add('SELECT * FROM CLIENTI WHERE CLI_NO="'+ inttostr(ID)+'"');

 DM.IBDataSetClienti.Open;
ID:=0;
end
else
DM.IBDataSetClienti.Last;

end;

procedure TDM.IBDataSetClientiBeforeDelete(DataSet: TDataSet);
var Qry1Tmp:TIBquery;
     ThreadEmail: TThreadSendMail;
   testomail:Widestring;
begin
if IBTransaction1.Active = false then
IBTransaction1.StartTransaction;


if (DM.IBDataSetLocalParamALLARMDELETECLI.Value=1) then
 begin
testomail:='CANCELLAZIONE CLIENTE:'+CHR(13);
testomail:=testomail+'Cliente N°'+DM.IBDataSetClientiCLI_NO.AsString+' Nome:'+DM.IBDataSetClientiNOME.AsString+' Cognome:'+DM.IBDataSetClientiCOGNRAGSOC.AsString+CHR(13);
//testomail:=testomail+'Data Importo Netto €.'+DM.IBDataSetScheduleNETPRICE.AsString+CHR(13);
testomail:=testomail+'Data e ora Cancellazione: '+datetimetostr(now)+CHR(13);
//testomail:=testomail+'Prodotti:'+CHR(13);
//DM.IBQuery1.First;
//while not DM.IBQuery1.Eof do
//begin
//testomail:=testomail+DM.IBQuery1.Fields.Fields[0].asstring+'-'+DM.IBQuery1.Fields.Fields[1].asstring+'-'+DM.IBQuery1.Fields.Fields[2].asstring+'-'+DM.IBQuery1.Fields.Fields[3].asstring+'-'+DM.IBQuery1.Fields.Fields[4].asstring+'-'+DM.IBQuery1.Fields.Fields[7].asstring+CHR(13);
//DM.IBQuery1.Next;
//end;
//menu.SendEmailMessage(menu.Edit56.Text,'SCHEDA CANCELLATA',testomail,'');
ThreadEmail:=TThreadSendMail.Create(4,menu.Edit56.Text,'CLIENTE CANCELLATO',testomail,'','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
if Threademail.ValidEmail(menu.Edit56.Text) then
ThreadEmail.Execute;
end;
end;

procedure TDM.ibdatasetrentedBeforePostCalcZ(dataset: Tdataset);
begin
Zfact.CalcZFact.CalcZfactNO;
end;

procedure TDM.IBDataSetArticoloAfterPost(DataSet: TDataSet);
begin
if IBtransaction2.InTransaction then
begin
IBTransaction2.CommitRetaining;
DM.IBDataSetArticolo.Refresh;
end;

//DM.IBDataSetArticolo.Close;
end;

procedure TDM.IBDataSetArticoloBeforeDelete(DataSet: TDataSet);
var ThreadEmail:TThreadSendMail;
    testomail:string;
begin
if menu.CheckArtIsInRenting(DM.IBDataSetArticoloART_NO.AsString) then
begin
 ShowMessage('ELIMINAZIONE NON CONSENTITA, ARTICOLO IN USO IN SCHEDA NOLEGGIO');
    Abort; // Annulla l'operazione
    exit;
end;


if IBTransaction2.Active = false then
IBTransaction2.StartTransaction;

if (DM.IBDataSetLocalParamALLARMDELETEART.Value=1) then
 begin
testomail:='CANCELLAZIONE ARTICOLO'+CHR(13);
testomail:=testomail+'Articolo N°: '+DM.IBDataSetArticoloART_NO.AsString+CHR(13);
testomail:=testomail+'Data Inserimento: '+DM.IBDataSetArticoloINTRODATE.AsString+CHR(13);
testomail:=testomail+'Marca: '+DM.IBDataSetArticoloBRAND.AsString+CHR(13);
testomail:=testomail+'Descrizione: '+DM.IBDataSetArticoloDESCRIZIONE.AsString+CHR(13);
testomail:=testomail+'Misura: '+DM.IBDataSetArticoloMISURA.AsString+CHR(13);
testomail:=testomail+'Colore: '+DM.IBDataSetArticoloCOLORE.AsString+CHR(13);
testomail:=testomail+'Stagione: '+DM.IBDataSetArticoloSTAGIONE.AsString+CHR(13);
testomail:=testomail+'Tipo: '+DM.IBDataSetArticoloTIPO.AsString+CHR(13);
testomail:=testomail+'Inc Vendita: €.'+DM.IBDataSetArticoloINCVENDITA.AsString+CHR(13);
testomail:=testomail+'Inc Noleggio: €.'+DM.IBDataSetArticoloINCNOLO.AsString+CHR(13);
testomail:=testomail+'Data e ora Cancellazione: '+datetimetostr(now)+CHR(13);
ThreadEmail:=TThreadSendMail.Create(4,menu.Edit56.Text,'ARTICOLO CANCELLATO',testomail,'','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
if Threademail.ValidEmail(menu.Edit56.Text) then
ThreadEmail.Execute;
end;

end;

procedure TDM.IBDataSetArticoloBeforeEdit(DataSet: TDataSet);
begin
if IBTransaction2.Active = false then
IBTransaction2.StartTransaction;

end;

procedure TDM.IBDataSetArticoloBeforeInsert(DataSet: TDataSet);
begin
//DM.IBDataSetArticoloEANCODE.AsString:=Ean39Gen(DM.IBDataSetArticoloDESCRIZIONE.AsString+DM.IBDataSetArticoloBRAND.AsString,DM.IBDataSetArticoloART_NO.AsString);
//DM.IBDataSetArticoloINTRODATE.Value:=date;
if IBTransaction2.Active = false then
IBTransaction2.StartTransaction;
//DM.IBDataSetArticolo.DisableControls;



end;

procedure TDM.DSArticoloDataChange(Sender: TObject; Field: TField);
begin
Menu.BTNSALVA2.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.BTNELIMINA2.Enabled:=DSArticolo.State in [dsBrowse];
Menu.BTNANNULLA2.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.BTNMODIFICA2.Enabled:=DSArticolo.State in [dsBrowse];
Menu.BTNINSERISCI1.Enabled:=DSArticolo.State in [dsBrowse];
Menu.Bitbtn11.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.Bitbtn20.Enabled:=DSArticolo.State in [dsBrowse];
Menu.bitbtn21.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.label223.Visible:=DSArticolo.State in [dsInsert];
Menu.edit57.Visible:=DSArticolo.State in [dsInsert];
if DM.IBDataSetArticolo.IsEmpty then
Menu.Bitbtn19.Enabled:=false
else
Menu.Bitbtn19.Enabled:=DSArticolo.State in [dsBrowse];

Menu.Bitbtn26.Enabled:=DSArticolo.State in [dsBrowse];
Menu.GroupBox4.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
menu.groupbox22.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.BitBtn23.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.BitBtn27.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
Menu.BitBtn32.Enabled:=DSArticolo.State in [dsEdit,dsInsert];

Tennismng.groupbox4.enabled:=DSArticolo.State in [dsEdit,dsInsert];
Tennismng.BTNSALVA2.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
if (DSArticolo.State in [dsBrowse]) and not(DM.IBDataSetArticolo.IsEmpty) then
begin
 Tennismng.BTNELIMINA2.Enabled:=true;
 Tennismng.BTNMODIFICA2.Enabled:=true;
 Tennismng.BitBtn32.Enabled:=true;
 Tennismng.BitBtn30.Enabled:=true;
end
else
begin
 Tennismng.BTNELIMINA2.Enabled:=false;
 Tennismng.BTNMODIFICA2.Enabled:=false;
 Tennismng.BitBtn32.Enabled:=false;
 Tennismng.BitBtn30.Enabled:=false;
end;

Tennismng.BTNANNULLA2.Enabled:=DSArticolo.State in [dsEdit,dsInsert];
//Tennismng.BTNMODIFICA2.Enabled:=DSArticolo.State in [dsBrowse];
Tennismng.BTNINSERISCI1.Enabled:=DSArticolo.State in [dsBrowse];

if Tennismng.Active=true then
begin
 if DSArticolo.State = dsBrowse then
  begin
   if DM.IBDataSetArticoloCLI_NO.Value=1 then
    begin
     Tennismng.CheckBox1.State:=cbUnchecked;
     Tennismng.CheckBox1.Caption:='NOSTRO';
    end
   else
    begin
     Tennismng.CheckBox1.State:=cbChecked;
     Tennismng.CheckBox1.Caption:='DEL CLIENTE';
    end;
  end;
end;

if IBDataSetArticoloAVAILABLE.AsString = 'DISPONIBILE' then
begin
Menu.EditPaint(clLime);
TennisMng.EditPaint(TennisMng.GroupBox4,ClLime);
end;
if IBDataSetArticoloAVAILABLE.AsString = 'NOLEGGIATO' then
begin
Menu.EditPaint(clYellow);
TennisMng.EditPaint(TennisMng.GroupBox4,Clyellow);
end;
if IBDataSetArticoloAVAILABLE.AsString = 'PRENOTATO' then
begin
Menu.EditPaint(clBlue);
TennisMng.EditPaint(TennisMng.GroupBox4,Clblue);
end;
if IBDataSetArticoloAVAILABLE.AsString = 'DISMESSO' then
begin
Menu.EditPaint(clRed);
TennisMng.EditPaint(TennisMng.GroupBox4,Clred);
end;
if IBDataSetArticoloAVAILABLE.AsString = 'VENDUTO' then
begin
Menu.EditPaint(clAqua);
TennisMng.EditPaint(TennisMng.GroupBox4,ClAqua);
end;
if IBDataSetArticoloAVAILABLE.AsString = 'RIPARAZIONE' then
begin
Menu.EditPaint(clfuchsia);
TennisMng.EditPaint(TennisMng.GroupBox4,Clfuchsia);
//end;
end;

if (DM.IBDataSetArticoloINCVENDITA.IsNull and DM.IBDataSetArticoloEXPIREDATE.IsNull) then
begin
 if tennismng.Active=true then
  tennismng.BitBtn32.Caption:='VENDUTO'
 else
  begin
   menu.BitBtn23.Caption:='VENDUTO';
   menu.BitBtn32.Caption:='VENDUTO';
  end;
end
else
begin
 if tennismng.Active=true then
  tennismng.BitBtn32.Caption:='RIPRISTINA'
 else
 begin

menu.BitBtn23.Caption:='RIPRISTINA';
menu.BitBtn32.Caption:='RIPRISTINA';
end;
end;
//menu.bitbtn27.Enabled:=DM.IBDataSetArticoloDATASALDOCLI.IsNull;
end;

procedure TDM.IBTableTipoAfterPost(DataSet: TDataSet);
begin
if IBTransaction3.Active = true then
begin
IBTransaction3.CommitRetaining;
//IBTableTipo.Refresh;
end;
end;

procedure TDM.IBTableTipoBeforeDelete(DataSet: TDataSet);
begin
if IBTransaction3.Active = false then
IBTransaction3.StartTransaction;

end;

procedure TDM.IBTableTipoBeforeEdit(DataSet: TDataSet);
begin
if IBTransaction3.Active = false then
IBTransaction3.StartTransaction;

end;

procedure TDM.IBTableTipoBeforeInsert(DataSet: TDataSet);
begin
if IBTransaction3.Active = false then
IBTransaction3.StartTransaction;

end;

procedure TDM.IBDataSetArticoloBeforePost(DataSet: TDataSet);
begin
//dm.IBDataSetArticoloAVAILABLE.AsString:='DISPONIBILE';
if (DM.IBDataSetArticolo.State = dsInsert) or (DM.IBDataSetArticoloEANCODE.IsNull)  then
begin
//DM.IBDataSetArticoloEANCODE.AsString:=Ean39Gen1(DM.IBDataSetArticoloDESCRIZIONE.AsString+DM.IBDataSetArticoloBRAND.AsString,DM.IBDataSetArticoloART_NO.AsString);
DM.IBDataSetArticoloEANCODE.AsString:=Ean39Gen2(DM.IBDataSetParamPREF_ART_NO.AsString,DM.IBDataSetArticoloART_NO.AsString);
if DM.DSArticolo.State in [DSInsert] then
DM.IBDataSetArticoloFLAGREPLAY.AsInteger:=0;
end;
//DM.IBDataSetArticoloINTRODATE.Value:=date;

//DM.IBDataSetArticoloEANCODE.AsString:=Ean39Gen(DM.IBDataSetArticoloDESCRIZIONE.AsString+DM.IBDataSetArticoloBRAND.AsString,DM.IBDataSetArticoloART_NO.AsString);
//DM.IBDataSetArticoloINTRODATE.Value:=date;
if Tennismng.Active=true then
DM.IBDataSetArticoloRIPDATA.Value:=now;
//if (menu.Tabsheet12.Focused=true) and (Tennismng.Active=false) then
//DM.IBDataSetArticoloCV.Value:=1;
end;

procedure TDM.IBDataSetArticoloPREZZOPUBSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetArticoloPREZZORISSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));
if (DM.IBDataSetParamRICUSATO.Value <> 0) and (text<>'') then
DM.IBDataSetArticoloPREZZOSCONT.AsFloat:=Sender.Value+(Sender.Value/100*DM.IBDataSetParamRICUSATO.Value);
end;

procedure TDM.IBDataSetArticoloPREZZOSCONTSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));
end;


function TDM.ArticoliNoleggiati:string;
var Qry1Tmp:TIBQuery;
begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := softhire.DM.IBDatabase1;
   Qry1Tmp.Transaction:=softhire.DM.IBTransaction6;
   Qry1Tmp.SQL.Text := 'SELECT COUNT(*) AS TOTALE FROM RENTEDART WHERE SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"';
   if not DM.IBDataSetScheduleSCHED_NO.IsNull then
   begin
   Qry1Tmp.Open;
   Result:=Qry1Tmp.FieldValues['TOTALE'];
   end;
   Qry1Tmp.Free;
   Qry1Tmp:=nil;
end;

function TDM.ArticoliConsegnati:string;
var Qry1Tmp:TIBQuery;
begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := softhire.DM.IBDatabase1;
   Qry1Tmp.Transaction:=softhire.DM.IBTransaction6;
   Qry1Tmp.SQL.Text := 'SELECT COUNT(*) AS TOTALE FROM RENTEDART WHERE (SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'") AND (STATO="RESO")';
   if not DM.IBDataSetScheduleSCHED_NO.IsNull then
   begin
   Qry1Tmp.Open;
   Result:=Qry1Tmp.FieldValues['TOTALE'];
   end;
   Qry1Tmp.Free;
   Qry1Tmp:=nil;
end;

function TDM.ArticoliDaConsegnare:string;
var Qry1Tmp:TIBQuery;
begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := softhire.DM.IBDatabase1;
   Qry1Tmp.Transaction:=softhire.DM.IBTransaction6;
   Qry1Tmp.SQL.Text := 'SELECT COUNT(*) AS TOTALE FROM RENTEDART WHERE (SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'") AND (STATO="NOLEGGIATO")';
   if not DM.IBDataSetScheduleSCHED_NO.IsNull then
   begin
   Qry1Tmp.Open;
   Result:=Qry1Tmp.FieldValues['TOTALE'];
   end;
   Qry1Tmp.Free;
   Qry1Tmp:=nil;
end;





procedure TDM.IBDataSetArticoloINCVENDITASetText(Sender: TField;
  const Text: String);
begin

//Sender.AsFloat:=strtofloat(rightstr(text,7));
end;

procedure TDM.DSScheduleDataChange(Sender: TObject; Field: TField);
begin
Menu.BTNSALVA3.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
tennismng.BitBtn20.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
Menu.BTNANNULLA3.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
tennismng.BitBtn21.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
tennismng.BitBtn18.Enabled:=not (DSSchedule.State in [dsEdit,dsInsert]);
//if not DM.IBDataSetSchedule.IsEmpty then
//begin
Menu.BTNELIMINA3.Enabled:=DSSchedule.State in [dsBrowse];
if (DSSchedule.State in [dsBrowse]) and (not DM.IBDataSetSchedule.IsEmpty) then
tennismng.BitBtn22.Enabled:=true
else
tennismng.BitBtn22.Enabled:=false;

Menu.BTNMODIFICA3.Enabled:=DSSchedule.State in [dsBrowse];
tennismng.BitBtn19.Enabled:=DSSchedule.State in [dsBrowse];
Menu.BtnCarica.Enabled:=DSSchedule.State in [dsBrowse];
tennismng.BtnCarica.Enabled:=DSSchedule.State in [dsBrowse];
Menu.BtnScarica.Enabled:=DSSchedule.State in [dsBrowse];
tennismng.BtnScarica.Enabled:=DSSchedule.State in [dsBrowse];
//end
//else
//Menu.BTNELIMINA3.Enabled:=false;
//tennismng.BitBtn22.Enabled:=false;
//Menu.BTNMODIFICA3.Enabled:=false;
//tennismng.BitBtn19.Enabled:=false;
//Menu.BtnCarica.Enabled:=false;
//tennismng.BtnCarica.Enabled:=false;
//Menu.BtnScarica.Enabled:=false;
//tennismng.BtnScarica.Enabled:=false;

if DM.IBDataSetSchedulePAGATO.Value=0 then
begin
if Tennismng.Showing=true then
begin
Tennismng.Edit10.Color:=ClRed;
Tennismng.Edit10.Text:='DA PAGARE';
Tennismng.BitBtn23.Caption:='PAGATO';
end;
menu.CheckBox3.Checked:=false;
menu.CheckBox3.Caption:='DA PAGARE';
menu.CheckBox3.Color:=ClRed;
end
else
begin
if Tennismng.Showing=true then
begin
Tennismng.Edit10.Color:=ClLime;
Tennismng.Edit10.Text:='PAGATO';
Tennismng.BitBtn23.Caption:='RIPRISTINA';
end;
menu.CheckBox3.Checked:=true;
menu.CheckBox3.Caption:='PAGATO';
menu.CheckBox3.Color:=ClLime;
end;

{if Tennismng.Showing=true then
begin
Tennismng.edit13.Text:=ArticoliNoleggiati;
Tennismng.edit17.Text:=ArticoliDaConsegnare;
Tennismng.edit18.Text:=ArticoliConsegnati;
end
else
begin
   menu.edit14.Text:=ArticoliNoleggiati;
   menu.Edit16.Text:=ArticoliDaConsegnare;
   menu.Edit15.Text:=ArticoliConsegnati;
end; }
//Menu.BtnCambio.Enabled:=DSSchedule.State in [dsBrowse];

//Menu.BTNNUOVO3.Enabled:=DSSchedule.State in [dsBrowse];
//Tennismng.BTNSALVA3.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
//Tennismng.BTNELIMINA3.Enabled:=DSSchedule.State in [dsBrowse];
//Tennismng.BTNANNULLA3.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
//Tennismng.BTNMODIFICA3.Enabled:=DSSchedule.State in [dsBrowse];
//Tennismng.BTNNUOVO3.Enabled:=DSSchedule.State in [dsBrowse];

Menu.GroupBoxScheda.Enabled:=DSSchedule.State in [dsEdit,dsInsert];
TennisMng.GroupBox11.Enabled:=DSSchedule.State in [dsEdit,dsInsert];

end;

procedure TDM.IBDataSetScheduleBeforeDelete(DataSet: TDataSet);
var Qry1Tmp:TIBquery;
     ThreadEmail: TThreadSendMail;
testomail:Widestring;
begin
if (DM.IBDataSetLocalParamALLARMDELETESCHEDULE.Value=1) then
 begin
testomail:='CANCELLAZIONE SCHEDA:'+CHR(13);
testomail:=testomail+'Scheda N_'+DM.IBDataSetScheduleSCHED_NO.AsString+' Nome:'+DM.IBDataSetScheduleNOME.AsString+' Cognome:'+DM.IBDataSetScheduleCOGNRAGSOC.AsString+CHR(13);
testomail:=testomail+'Importo Netto €.'+DM.IBDataSetScheduleNETPRICE.AsString+CHR(13);
testomail:=testomail+'Data e ora Cancellazione: '+datetimetostr(now)+CHR(13);
testomail:=testomail+'Prodotti:'+CHR(13);
DM.IBQuery1.First;
while not DM.IBQuery1.Eof do
begin
testomail:=testomail+DM.IBQuery1.Fields.Fields[0].asstring+'-'+DM.IBQuery1.Fields.Fields[1].asstring+'-'+DM.IBQuery1.Fields.Fields[2].asstring+'-'+DM.IBQuery1.Fields.Fields[3].asstring+'-'+DM.IBQuery1.Fields.Fields[4].asstring+'- Qta.'+DM.IBQuery1.Fields.Fields[7].asstring+CHR(13);
DM.IBQuery1.Next;
end;
//menu.SendEmailMessage(menu.Edit56.Text,'SCHEDA CANCELLATA',testomail,'');
//menu.Edit56.Text:=Threademail.ValidmultipleMail(menu.Edit56.Text);
//if length(menu.Edit56.Text)=0 then
//exit;
ThreadEmail:=TThreadSendMail.Create(4,menu.Edit56.Text,'SCHEDA CANCELLATA',testomail,'','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
//if Threademail.ValidEmail(menu.Edit56.Text) then
if  ThreadEmail.status then
ThreadEmail.Execute;
end;



   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := IBDatabase1;
   Qry1Tmp.Transaction:=IBTransaction6;
   Qry1Tmp.SQL.Text := 'DELETE FROM RENTEDART WHERE SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"';
   Qry1Tmp.ExecSQL;
   DM.IBDataSetRented.First;
   while not DM.IBDataSetRented.Eof do
   begin
   Qry1Tmp.SQL.Clear;
   Qry1Tmp.SQL.Text := 'UPDATE ARTICOLO SET AVAILABLE="DISPONIBILE" WHERE ART_NO ="'+DM.IBDataSetRentedART_NO.AsString+'"';
   Qry1Tmp.ExecSQL;
   DM.IBDataSetRented.Next;
   end;

if IBtransaction6.InTransaction then
//IBTransaction6.CommitRetaining;
IBTransaction6.Commit;
//DM.IBDataSetRented.Refresh;





if IBTransaction7.Active = false then
IBTransaction7.StartTransaction;

   Qry1Tmp.Transaction:=IBTransaction14;
   Qry1Tmp.SQL.Text := 'DELETE FROM RIPARAZIONE WHERE SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"';
   if not Ibtransaction14.InTransaction then
   IBTransaction14.StartTransaction;
   Qry1Tmp.ExecSQL;
   if Ibtransaction14.InTransaction then
   IBTransaction14.Commit;
   Qry1Tmp.Free;

end;

procedure SetUnsetDateReceipt(SchedNo:string;Action:boolean);
var ibtemp:TIBQuery;
begin
ibtemp:=TIBQuery.create(nil);
ibtemp.Database:=DM.IBDatabase1;
ibtemp.Transaction:=DM.IBTransaction7;
if Action then
ibtemp.SQL.add('UPDATE SCHEDULE SET RECEIPTSENT="NOW" WHERE SCHED_NO="'+schedNo+'"')
else
ibtemp.SQL.add('UPDATE SCHEDULE SET RECEIPTSENT=NULL WHERE SCHED_NO="'+schedNo+'"');
ibtemp.ExecSQL;
ibtemp.Free;
end;




procedure TDM.IBDataSetScheduleAfterPost(DataSet: TDataSet);
var ibtemp:TIBQuery;
    testomail:string;
    ThreadEmail,ThreadEmail1 : TThreadSendMail;
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.*');
DM.IBDataSetRented.SelectSQL.Add('FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE (RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'") AND (ARTICOLO.TIPO LIKE "SCI%")');
//DM.IBDataSetRented.SelectSQL.Add('WHERE (RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'") AND (ARTICOLO.TIPO LIKE "SCI%")');
DM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Open;
if (not DM.IBDataSetRented.IsEmpty) and (DM.IBDataSetLocalParamCALCZFACT.Value=1)  then
CalcZfact.ShowModal
else
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.*');
DM.IBDataSetRented.SelectSQL.Add('FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO');
DM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Prepare;
DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
DM.IBDataSetRented.Open;
end;
if IBtransaction7.InTransaction then
begin
IBTransaction7.CommitRetaining;
MENU.SetSchedStatoCons;
end;
{
ibtemp:=TIBQuery.create(nil);
ibtemp.Database:=DM.IBDatabase1;
ibtemp.SQL.add('select cognragsoc,nome,cellulare,telefono1,email from clienti where cli_no="'+DM.IBDataSetScheduleCLI_NO.AsString+'"');
ibtemp.Open;
if not ibtemp.IsEmpty then
begin
if (DM.IBDataSetLocalParamSAVESCHEDTOPDF.Value = 1)and (menu.QtaArtXScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger)>0) then
begin
try
 menu.ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF');
 SetUnsetDateReceipt(DM.IBDataSetScheduleSCHED_NO.AsString,true);
except
 showmessage('Errore creazione PDF: Percorso non valido o diritti di scrittura mancanti');
end;
end;


if (DM.IBDataSetLocalParamSENDNOLOTOCLI.Value = 1)and (menu.QtaArtXScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger)>0) and (DM.IBDataSetScheduleRECEIPTSENT.IsNull) then
begin
//if messagedlg('Invia Ricevuta Via Mail Al Cliente?',mtinformation, mbOKCancel, 0)= 1 then
//begin
 if not ibtemp.FieldByName('EMAIL').IsNull then
  begin
   menu.ReportExport(NewschCli.QuickRep1,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF');
 //  testomail:='Buongiorno, in allegato la ricevuta di nolegggio appena effettuata, Scheda N°'+DM.IBDataSetScheduleSCHED_NO.AsString+' Nome:'+ibtemp.fieldbyname('NOME').asstring+' Cognome:'+ibtemp.fieldbyname('COGNRAGSOC').asstring+CHR(13)+datetimetostr(now);
ThreadEmail:= TThreadSendMail.Create(5,ibtemp.fieldbyname('EMAIL').asstring,'RICEVUTA NOLEGGIO N°'+dm.IBDataSetScheduleSCHED_NO.AsString+' PRESSO PARMASPORT DEL '+datetimetostr(now),testomail,DM.IBDataSetLocalParamPATHFILEPDFSCHED.AsString+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
if Threademail.ValidEmail(ibtemp.fieldbyname('EMAIL').asstring) then
threademail.Execute;

  end;
//end;
end;
}
if (DM.IBDataSetScheduleNETPRICE.value < 3) and (DM.IBDataSetLocalParamALLARMSCHEDCLIZERO.Value=1) and (menu.QtaArtXScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger)>0) then
 begin
  testomail:='Scheda N°'+DM.IBDataSetScheduleSCHED_NO.AsString+' Nome:'+ibtemp.fieldbyname('NOME').asstring+' Cognome:'+ibtemp.fieldbyname('COGNRAGSOC').asstring+CHR(13)+'ATTENZIONE NOLEGGIO A €.0'+chr(13)+datetimetostr(now);
 ThreadEmail1:= TThreadSendMail.Create(4,ibtemp.fieldbyname('EMAIL').asstring,'Attenzione Scheda Noleggio a €.0',testomail,getcurrentdir+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
 if Threademail.ValidEmail(ibtemp.fieldbyname('EMAIL').asstring) then
 threademail1.Execute;

//menu.SendEmailMessage(menu.Edit56.Text,'Attenzione Scheda Noleggio a €.0',testomail,getcurrentdir+'\'+DM.IBDataSetScheduleSCHED_NO.AsString+'-'+ibtemp.fieldbyname('COGNRAGSOC').asstring+'-'+ibtemp.fieldbyname('NOME').asstring+'.PDF');
 end;


 if OpnTest.IsConnected(strtoint(logindatabase.COMPORTOPN)) then
 begin
 if messagedlg('Vuoi Procedere Con La Cancellazione Dello Scanner?',mtConfirmation,mbOkCancel,0)= 1 then
 OpnTest.DeleteOPNData;
 end;

 dM.IBDataSetSchedule.Refresh;


 end;

procedure TDM.IBDataSetScheduleBeforeEdit(DataSet: TDataSet);
begin
if IBTransaction7.Active = false then
IBTransaction7.StartTransaction;
end;

procedure TDM.IBDataSetScheduleBeforeInsert(DataSet: TDataSet);
begin
if IBTransaction7.Active = false then
IBTransaction7.StartTransaction;
end;

procedure TDM.IBDataSetScheduleBeforePost(DataSet: TDataSet);
//var testomail:string;
begin
//testomail:='Scheda N°'+DM.IBDataSetScheduleSCHED_NO.AsString+' Nome:'+DM.IBDataSetClientiNOME.AsString+' Cognome:'+DM.IBDataSetClientiCOGNRAGSOC.AsString+CHR(13)+'ATTENZIONE NOLEGGIO A €.0'+chr(13)+datetimetostr(now);

if (dm.IBDataSetScheduleSTATO.NewValue='PARZIALE') and (DM.IBDataSetLocalParamALERTSCHEDNOLO.Value=1) then
Allertscheda.ShowModal;


//DM.IBDataSetScheduleEANCODE.AsString:=Ean39Gen('SCHED'+'2010',DM.IBDataSetScheduleSCHED_NO.AsString);
//DM.IBDataSetScheduleDATAINTRO.Value:=date;
{if not DM.IBDataSetRented.IsEmpty then
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
DM.IBDataSetRented.SelectSQL.Add('SELECT RENTEDART.*, ARTICOLO.*');
DM.IBDataSetRented.SelectSQL.Add('FROM RENTEDART JOIN ARTICOLO ON ARTICOLO.ART_NO = RENTEDART.ART_NO');
DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND ARTICOLO.TIPO LIKE "SCI%"');
DM.IBDataSetRented.SelectSQL.Add('ORDER BY ARTICOLO.TIPO');
DM.IBDataSetRented.Open;
CalcZfact.ShowModal;
end;}
                   //if DM.IBDataSetScheduleSTATO.AsString<>'CHIUSA'  then
                   //DM.IBDataSetScheduleDATACLOSESCHD.Clear;

if IBtransaction6.InTransaction then
//IBTransaction6.CommitRetaining;
IBTransaction6.Commit;
if Tennismng.Showing=false then
begin
DM.IBQuery1.Close;
dM.IBQuery1.Prepare;
DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
DM.IBQuery1.Open;
end;


//DM.IBDataSetRented.refresh;
//Menu.edit14.Text:=inttostr(menu.ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//menu.Edit16.Text:=inttostr(menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//menu.Edit15.Text:=inttostr(menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
end;

procedure TDM.IBDataSetScheduleSUBTOTALESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));
end;

procedure TDM.IBDataSetScheduleNETPRICESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));
end;

procedure TDM.IBDataSetScheduleFEEDAYLATESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetScheduleFEELOSTSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetRentedAfterPost(DataSet: TDataSet);
begin
//if IBtransaction6.InTransaction then
//begin
//IBTransaction6.CommitRetaining;
//IBDatasetRented.Refresh;
if Tennismng.showing=true then
begin
if DM.IBDataSetRented.IsEmpty then
DM.IBDataSetScheduleSUBTOTALE.AsFloat:=0
else
DM.IBDataSetScheduleSUBTOTALE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat - Menu.SubTotRentArtTennnis(DM.IBDataSetScheduleDAYUSE.AsInteger,DM.IBDataSetScheduleSCHED_NO.AsString);
DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat-(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
end;
end;



procedure TDM.IBDataSetRentedBeforeDelete(DataSet: TDataSet);
begin
//if IBTransaction6.Active = false then
//IBTransaction6.StartTransaction;

end;

procedure TDM.IBDataSetRentedBeforeEdit(DataSet: TDataSet);
begin
//if IBTransaction6.Active = false then
//IBTransaction6.StartTransaction;

end;

procedure TDM.IBDataSetRentedBeforeInsert(DataSet: TDataSet);
begin
//if IBTransaction6.Active = false then
//IBTransaction6.StartTransaction;

end;

procedure TDM.IBDataSetRentedBeforeInsertCalcZFact(DataSet: TDataSet);
begin
Abort;
end;


procedure TDM.IBDataSetListinoBeforeDelete(DataSet: TDataSet);
begin
if not IBtransaction11.InTransaction then
IBTransaction11.StartTransaction;


end;

procedure TDM.IBDataSetListinoBeforeEdit(DataSet: TDataSet);
begin
if not IBtransaction11.InTransaction then
IBTransaction11.StartTransaction;

end;

procedure TDM.IBDataSetListinoBeforeInsert(DataSet: TDataSet);
begin
if not IBtransaction11.InTransaction then
IBTransaction11.StartTransaction;

end;

procedure TDM.IBDataSetListinoAfterPost(DataSet: TDataSet);
begin
if IBtransaction11.InTransaction then
begin
IBTransaction11.CommitRetaining;
IBDataSetListino.Refresh;
end;

end;

procedure TDM.IBDataSetScheduleDATASTARTRENTSetText(Sender: TField;
  const Text: String);
begin
//Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetScheduleDAYUSESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(trimleft(text));
end;

procedure TDM.DSRentedDataChange(Sender: TObject; Field: TField);
begin
if DM.IBDataSetRented.IsEmpty then
begin
Tennismng.BitBtn9.Enabled:=false;
Tennismng.BitBtn10.Enabled:=false;
end
else
begin
Tennismng.BitBtn9.Enabled:=true;
Tennismng.BitBtn10.Enabled:=true;
end;
//if DSRented.State = dsBrowse then
//begin
//if IBDataSetArticoloAVAILABLE.AsString = 'DISPONIBILE' then
//Menu.EditPaint(clLime);
//if IBDataSetArticoloAVAILABLE.AsString = 'DISMESSO' then
//Menu.EditPaint(clRed);
//if IBDataSetArticoloAVAILABLE.AsString = 'NOLEGGIATO' then
//Menu.EditPaint(clYellow);

end;

procedure TDM.IBDataSetArticoloAVAILABLEChange(Sender: TField);
begin
if (DM.IBDataSetArticoloAVAILABLE.OldValue <> 'RIPARAZIONE') and (DM.IBDataSetArticoloAVAILABLE.NewValue = 'RIPARAZIONE') then
begin
DM.IBDataSetArticoloRIPARAZIONI.Value:=DM.IBDataSetArticoloRIPARAZIONI.AsInteger+1;
DM.IBDataSetArticoloRIPDATA.AsDateTime:=now;
end;
if (DM.IBDataSetArticoloAVAILABLE.OldValue = 'RIPARAZIONE') and (DM.IBDataSetArticoloAVAILABLE.NewValue = 'DISPONIBILE') then
DM.IBDataSetArticoloRIPDATA.Clear;
if (DM.IBDataSetArticoloAVAILABLE.OldValue = 'NOLEGGIATO') and (DM.IBDataSetArticoloAVAILABLE.NewValue = 'DISPONIBILE') Then
Menu.SetRentedStato(DM.IBDataSetArticoloART_NO.AsInteger,DM.IBDataSetScheduleSCHED_NO.AsInteger, 'RESO');
if ((DM.IBDataSetArticoloAVAILABLE.NewValue = 'VENDUTO') and ((DM.IBDataSetArticoloINCVENDITA.IsNull) or (DM.IBDataSetArticoloINCVENDITA.Value=0))) Then
Menu.DBEdit22.SetFocus;
end;

procedure TDM.IBDataSetScheduleAfterDelete(DataSet: TDataSet);
begin
if IBtransaction7.InTransaction then
begin
IBTransaction7.Commit;
IBDatasetSchedule.Open;
end;

//menu.TabSheet3.TabVisible:=false;
end;

procedure TDM.IBDataSetScheduleAfterCancel(DataSet: TDataSet);
begin
if IBtransaction7.InTransaction then
begin
IBTransaction7.RollbackRetaining;
DM.IBDataSetSchedule.Refresh;
end;


end;

procedure TDM.IBTableTipoAfterInsert(DataSet: TDataSet);
begin
Menu.Pagecontrol1.ActivePageIndex:=3;
MessageDlg('Inserire Listino Per Nuovo Tipo Articolo', mtWarning,[mbOk], 0);
end;

procedure TDM.IBDataSetScheduleDATASTARTRENTValidate(Sender: TField);
begin
if Sender.NewValue < Today then
MessageDlg('Inizio Noleggio Posteriore O Uguale alla Data Odierna', mtInformation,[mbOk], 0);

end;

procedure TDM.IBDataSetScheduleDATATAKEBACKValidate(Sender: TField);
begin
if Sender.NewValue < DM.IBDataSetScheduleDATASTARTRENT.AsDateTime then
MessageDlg('Data Rientro Anteriore Alla Data Inizio', mtInformation,[mbOk], 0);

end;

procedure TDM.IBDataSetScheduleAfterInsert(DataSet: TDataSet);
begin
// aggiunte prima erano nel pulsante noleggia
   DM.IBDataSetScheduleCLI_NO.AsInteger:=DM.IBDataSetClientiCLI_NO.AsInteger;
   DM.IBDataSetScheduleOWNER.AsString:=Account.Operatore;
   DM.IBDataSetSchedulePAGATO.AsInteger:=0;
   DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
   DM.IBDataSetScheduleSTATO_CONS.AsString:='REGOLARE';

DM.IBDataSetScheduleDATAINTRO.Value:=date;
DM.IBDataSetScheduleEANCODE.AsString:=Ean39Gen1('SCHED'+'2010',DM.IBDataSetScheduleSCHED_NO.AsString);
DM.IBDataSetScheduleEANCODE2.AsString:=Ean39Gen2(DM.IBDataSetParamPRE_SCHED_NO.AsString,DM.IBDataSetScheduleSCHED_NO.AsString);
//DM.IBDataSetScheduleSTATO.AsString:='APERTA';
DM.IBDataSetScheduleSTOPADV.Value:=0;
DM.IBDataSetScheduleSUBTOTALE.Value:=0;
DM.IBDataSetScheduleDISCOUNT.Value:=0;
DM.IBDataSetScheduleNETPRICE.Value:=0;
dM.IBDataSetScheduleFEEDAYLATE.Value:=0;
if IBTransaction6.Active = false then
IBTransaction6.StartTransaction;

if tennismng.Showing=true then
begin
nolo.Menu.BtnCaricaClick(nil);
tennismng.Edit12.Color:=ClLime;
tennismng.Edit12.OnKeyPress:=nolo.Menu.Edit5KeyPress;
tennismng.Combobox2.Color:=ClLime;
tennismng.Combobox2.OnEnter:=tennismng.Combox2EnterOverrideLoad;
end;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
dm.LockAfterScroll:=false;
//DM.IBDatabase1.DatabaseName:=ExtractFilePath(Application.ExeName)+'\NOLEGGIO.FDB';
if DM.IBDatabase1.Connected=true then
begin
//menu.FeeDayLateCalc(DM.IBDataSetParamTAXFEELATE.AsFloat);
//menu.FeeDayLateCalc1(DM.IBDataSetParamTAXFEELATE.AsFloat);

//menu.SetSchedStatoCons;
//DM.IBDataSetSchedule.close;
//DM.IBDataSetSchedule.Open;
//opntest.DeleteOPNData
end;

end;



procedure TDM.IBDataSetScheduleDISCOUNTSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=-1*strtofloat(trimleft(leftstr(text,3)));
//if DM.IBDataSetScheduleDISCOUNT.AsFloat=0 then
//DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.ibdatasetscheduleSUBTOTALE.AsFloat
//else
//begin
//  if DM.IBDatasetscheduleSUBTOTALE.AsFloat <>0 tHEN
//   DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.ibdatasetscheduleSUBTOTALE.AsFloat-(DM.ibdatasetscheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100)
//  else
//   DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.ibdatasetscheduleSUBTOTALE.AsFloat;
//end;

end;

procedure TDM.IBDataSetScheduleSUBTOTALEChange(Sender: TField);
begin
if DM.IBDataSetScheduleSUBTOTALE.AsFloat= 0 then
DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat
else
begin
 if DM.IBDataSetScheduleDISCOUNT.AsFloat = 0 then
  DM.ibdatasetscheduleNETPRICE.AsFloat:=RoundTo(DM.IBDataSetScheduleSUBTOTALE.AsFloat,-2)
  else
  DM.ibdatasetscheduleNETPRICE.AsFloat:=RoundTo(DM.ibdatasetscheduleSUBTOTALE.AsFloat-(DM.ibdatasetscheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100),-2);
end;
//if DM.IBDataSetScheduleSUBTOTALE.AsFloat= 0 then
//DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat
//else
//begin
// if IBDataSetScheduleDISCOUNT.AsFloat = 0 then
//  DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat
//  else
//  DM.ibdatasetscheduleNETPRICE.AsFloat:=DM.ibdatasetscheduleSUBTOTALE.AsFloat-(DM.ibdatasetscheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);
//end;
end;

procedure TDM.IBDataSetScheduleNETPRICEChange(Sender: TField);
begin
//if DM.IBDataSetScheduleSUBTOTALE.AsFloat <> 0 then
//DM.IBDataSetScheduleDISCOUNT.AsFloat:=(1-(DM.IBDataSetScheduleNETPRICE.AsFloat/DM.IBDataSetScheduleSUBTOTALE.AsFloat))*100;
end;

procedure TDM.IBDataSetScheduleDAYUSEChange(Sender: TField);
begin
if DM.IBDataSetScheduleDAYUSE.OldValue <> DM.IBDataSetScheduleDAYUSE.NewValue then
menu.RefreshCalcRentedArt;
end;

procedure TDM.IBDataSetScheduleSTATOChange(Sender: TField);
var ibtemp:TIBQuery;
testomail:string;
 ThreadEmail,ThreadEmail1 : TThreadSendMail;
begin
ibtemp:=TIBQuery.create(nil);
ibtemp.Database:=DM.IBDatabase1;
IBTEMP.SQL.Add('SELECT CELLULARE,EMAIL FROM CLIENTI WHERE CLI_NO="'+dm.IBDataSetScheduleCLI_NO.AsString+'"');
ibtemp.Open;
if (DM.IBDataSetScheduleSTATO.NewValue = 'CHIUSA') and (DM.IBDataSetLocalParamALERTSCHEDNOLO.Value=1) then
begin
if (not DM.IBDataSetScheduleNOTE.IsNull) or (DM.IBDataSetSchedulePAGATO.Value=0) then
allertscheda.ShowModal;
Menu.IncNoloCalc(DM.IBDataSetScheduleSCHED_NO.AsInteger);
end;
if (DM.IBDataSetScheduleSTATO.NewValue = 'APERTA') then
DM.IBDataSetScheduleDATELASTADV.Clear;

if (DM.IBDataSetScheduleSTATO.NewValue = 'CHIUSA') and (DM.IBDataSetLocalParamEMAILCONFERMACHIUSURA.Value=1) then
begin
ThreadEmail:=TThreadSendMail.Create(3,ibtemp.Fields.fieldbyname('EMAIL').AsString,'RICEVUTA RICONSEGNA NOLEGGIO','','','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
if Threademail.ValidEmail(ibtemp.fieldbyname('EMAIL').asstring) then
threademail.Execute;
 //menu.SendHtmlMessage(ibtemp.Fields.fieldbyname('EMAIL').AsString,'RICEVUTA RICONSEGNA NOLEGGIO','','',3));
end;
//menu.SendHtmlMessage(ibtemp.Fields.fieldbyname('EMAIL').AsString,'RICEVUTA RICONSEGNA NOLEGGIO','','',3);

if (DM.IBDataSetScheduleSTATO.NewValue = 'CHIUSA') and (DM.IBDataSetLocalParamSMSCONFERMACHIUSURA.Value=1) then
begin

testomail:='NOLEGGIO PARMASPORT ID:'+dm.IBDataSetScheduleSCHED_NO.AsString;
testomail:=testomail+' del:'+dm.IBDataSetScheduleDATAINTRO.AsString+chr(13);
testomail:=testomail+' dal: '+dm.IBDataSetScheduleDATASTARTRENT.AsString;
testomail:=testomail+' al: '+dm.IBDataSetScheduleDATATAKEBACK.AsString+chr(13);
testomail:=testomail+' !CONSEGNATO COMPLETAMENTE!';

// vecchio invio SMS
//ThreadEmail:=TThreadSendMail.Create(2,ibtemp.Fields.fieldbyname('CELLULARE').AsString,'',testomail,'','',menu.edit50.Text,strtoint(menu.edit55.text),menu.edit53.Text,menu.edit54.Text);
//if length(ibtemp.Fields.fieldbyname('CELLULARE').AsString)>8 then
//threademail.Execute;

if checkPhoneNumber(ibtemp.Fields.fieldbyname('CELLULARE').AsString) then
SendSMS(nolo.Menu.edit_loginSMS.Text,nolo.Menu.edit_pswSMS.Text,testomail,ibtemp.Fields.fieldbyname('CELLULARE').AsString,nolo.Menu.Edit_SenderSMS.Text,nolo.Menu.Edit_EndPInvioSMS.text);


//MyThread1 := TThread.Create(menu.SendHtmlMessage(ibtemp.Fields.fieldbyname('CELLULARE').AsString,'',testomail,'',2));
//MyThread1.FreeOnTerminate := True;
//MyThread1.Resume;

//menu.SendHtmlMessage(ibtemp.Fields.fieldbyname('CELLULARE').AsString,'',testomail,'',2);
end;

ibtemp.Free;
end;

procedure TDM.IBDataSetScheduleAfterScroll(DataSet: TDataSet);
begin
if Tennismng.Showing=false then
begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  DM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'"');
  DM.IBDataSetRented.Open;
//  DM.IBDataSetRented.Close;
//  DM.IBDataSetRented.Prepare;
//  DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
//  DM.IBDataSetRented.open;
  end
else
begin
DM.IBDataSetRented.Close;
DM.IBDataSetRented.SelectSQL.Clear;
dM.IBDataSetRented.SelectSQL.Add('SELECT articolo.ART_NO, rentedart.renart_no, rentedart.sched_no, articolo.cli_no, articolo.TIPO,');
dM.IBDataSetRented.SelectSQL.Add('articolo.BRAND,articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart.STATO,count(rentedart.ART_NO)  AS QTA, articolo.available, articolo.eancode, rentedart.eta,');
dM.IBDataSetRented.SelectSQL.Add('rentedart.peso, rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart.livello,rentedart.zfactor, rentedart.codice');
dM.IBDataSetRented.SelectSQL.Add('FROM articolo join rentedart on articolo.art_no=rentedart.art_no join schedule on schedule.SCHED_NO=rentedart.sched_no');
dM.IBDataSetRented.SelectSQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO');
dM.IBDataSetRented.SelectSQL.Add('GROUP BY articolo.ART_NO, rentedart.renart_no,rentedart.sched_no, articolo.cli_no, articolo.ART_NO,articolo.tipo,articolo.BRAND,articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart.STATO,');
dM.IBDataSetRented.SelectSQL.Add('rentedart.ART_NO, articolo.available, articolo.eancode, rentedart.eta, rentedart.peso,rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart.livello,rentedart.zfactor, rentedart.codice');
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.Prepare;
  DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
  DM.IBDataSetRented.open;



//  DM.IBDataSetRented.Close;
//  DM.IBDataSetRented.SelectSQL.Clear;
//  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
//  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
//  if not DM.IBDataSetScheduleSched_no.IsNull then
//  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
//  else
//  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
//  DM.IBDataSetRented.Open;
  end;

if not (DM.IBDataSetSchedule.State in [dsEdit,dsInsert]) then
begin
if DM.IBDataSetSchedulePAGATO.Value= 0  then
begin
Menu.CheckBox3.Caption:='DA PAGARE';
Menu.CheckBox3.Color:=clRed;
end
else
begin
menu.CheckBox3.Caption:='PAGATO';
Menu.CheckBox3.Color:=clLime;
end;
end;

if Tennismng.Showing=true then
begin
Tennismng.edit13.Text:=ArticoliNoleggiati;
Tennismng.edit17.Text:=ArticoliDaConsegnare;
Tennismng.edit18.Text:=ArticoliConsegnati;
end
else
begin
   menu.edit14.Text:=ArticoliNoleggiati;
   menu.Edit16.Text:=ArticoliDaConsegnare;
   menu.Edit15.Text:=ArticoliConsegnati;
end;





end;

procedure TDM.IBDataSetScheduleBeforeCancel(DataSet: TDataSet);
begin
if IBtransaction6.InTransaction then
//IBTransaction6.RollbackRetaining;
IBTransaction6.Rollback;
if Tennismng.Showing=false then
begin
  //DM.IBDataSetRented.Close;
  //DM.IBDataSetRented.Prepare;
  //DM.IBDataSetRented.Params.ByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
  //DM.IBDataSetRented.open;
DM.IBQuery1.Close;
dM.IBQuery1.Prepare;
DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
DM.IBQuery1.Open;

  menu.Edit14.Text:=inttostr(menu.QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  menu.Edit16.Text:=inttostr(menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  menu.Edit15.Text:=inttostr(menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
  end
else
begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBDataSetScheduleSCHED_NO.AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;

// Tennismng.Edit13.Text:=inttostr(menu.QtaArtPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
// Tennismng.Edit17.Text:=inttostr(menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
// Tennismng.Edit18.Text:=inttostr(menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));


Tennismng.edit13.Text:=ArticoliNoleggiati;
Tennismng.edit17.Text:=ArticoliDaConsegnare;
Tennismng.edit18.Text:=ArticoliConsegnati;

 // Tennismng.edit13.Text:=inttostr(menu.NumArtQuery);
 // Tennismng.Edit17.Text:=inttostr(menu.NumApertiQuery);
 // Tennismng.Edit18.Text:=inttostr(menu.NumChiusiQuery);
  end;
end;

procedure TDM.IBDataSetScheduleAfterEdit(DataSet: TDataSet);
begin
if IBTransaction6.Active = false then
IBTransaction6.StartTransaction;

end;

procedure TDM.DSOpDataChange(Sender: TObject; Field: TField);
begin
Menu.BTNSALVA7.Enabled:=DSOp.State in [dsEdit,dsInsert];
Menu.BTNELIMINA7.Enabled:=DSOp.State in [dsBrowse];
Menu.BTNANNULLA7.Enabled:=DSOp.State in [dsEdit,dsInsert];
Menu.BTNMODIFICA7.Enabled:=DSOp.State in [dsBrowse];
Menu.BTNINSERISCI7.Enabled:=DSOp.State in [dsBrowse];
Menu.GroupBox9.Enabled:=DSOp.State in [dsEdit,dsInsert];

end;

procedure TDM.IBDataSetOpBeforePost(DataSet: TDataSet);
begin
DM.IBDataSetOpEANCODE.AsString:=Ean39Gen1(DM.IBDataSetOpCOGNOME.AsString+DM.IBDataSetOpNOME.AsString,DM.IBDataSetOpDIP_NO.AsString);
DM.IBDataSetOpEANCODE2.AsString:=Ean39Gen2(DM.IBDataSetParamPRE_OP_NO.AsString,DM.IBDataSetOpDIP_NO.AsString);
DM.IBDataSetOpTESSERA.AsInteger:=1;
DM.IBDataSetOpDATAINTRO.Value:=date;

end;

procedure TDM.IBDataSetOpBeforeDelete(DataSet: TDataSet);
begin
If not DM.IBTransaction12.InTransaction then
DM.IBTransaction12.StartTransaction;

end;

procedure TDM.IBDataSetOpBeforeEdit(DataSet: TDataSet);
begin
If not DM.IBTransaction12.InTransaction then
DM.IBTransaction12.StartTransaction;

end;

procedure TDM.IBDataSetOpBeforeInsert(DataSet: TDataSet);
begin
If not DM.IBTransaction12.InTransaction then
DM.IBTransaction12.StartTransaction;

end;

procedure TDM.IBDataSetOpAfterPost(DataSet: TDataSet);
begin
if IBtransaction12.InTransaction then
begin
IBTransaction12.CommitRetaining;
IBDataSetOp.Refresh;
end;

end;

procedure TDM.IBDataSetOpAfterDelete(DataSet: TDataSet);
begin
if IBtransaction12.InTransaction then
begin
IBTransaction12.CommitRetaining;
IBDatasetOp.refresh;
end;

end;

procedure TDM.IBDataSetOpAfterCancel(DataSet: TDataSet);
begin
If  DM.IBTransaction12.InTransaction then
DM.IBTransaction12.RollbackRetaining;

end;

procedure TDM.IBDataSetArticoloINCVENDITAChange(Sender: TField);
begin
if (((DM.IBDataSetArticoloINCVENDITA.OldValue = 0) or (DM.IBDataSetArticoloINCVENDITA.OldValue=NULL)) and (DM.IBDataSetArticoloINCVENDITA.NewValue > 0 )) then
begin
dm.IBDataSetArticolo.DisableControls;
DM.IBDataSetArticoloEXPIREDATE.Value:=date;
DM.IBDataSetArticoloRIPDATA.Clear;
dm.IBDataSetArticolo.EnableControls;
//menu.DBRadioGroup2.Enabled:=true;
end;

if (((DM.IBDataSetArticoloINCVENDITA.oldvalue <> 0) or (DM.IBDataSetArticoloINCVENDITA.oldvalue<>NULL))  and  (DM.IBDataSetArticoloINCVENDITA.NewValue=NULL)) then
Begin
menu.DBRadioGroup2.Enabled:=false;
DM.IBDataSetArticoloAVAILABLE.AsString:='DISPONIBILE';
DM.IBDataSetArticoloEXPIREDATE.Clear;
menu.DBRadioGroup2.Enabled:=true;
end;



end;

procedure TDM.IBDataSetArticoloAfterInsert(DataSet: TDataSet);
begin
dm.IBDataSetArticoloRIPARAZIONI.AsInteger:=0;
dm.IBDataSetArticoloAVAILABLE.AsString:='DISPONIBILE';
//DM.IBDataSetArticoloEANCODE.AsString:=Ean39Gen(DM.IBDataSetArticoloDESCRIZIONE.AsString+DM.IBDataSetArticoloBRAND.AsString,DM.IBDataSetArticoloART_NO.AsString);
DM.IBDataSetArticoloINTRODATE.Value:=date;
if Menu.PageControl1.TabIndex=1 then
begin
menu.DBLookUpcombobox1.SetFocus;
DM.IBDataSetArticoloCV.Value:=0;
end;

if Menu.PageControl1.TabIndex=11 then
menu.DBLookUpcombobox6.SetFocus;

if Tennismng.Focused=true then
begin
DM.IBDataSetArticoloTIPO.Value:='RACCHETTA TENNIS';
DM.IBDataSetArticoloCLI_NO.Value:=DM.IBDataSetClientiCLI_NO.Value;
DM.IBDataSetArticoloOWNER.Value:=DM.IBDataSetClientiCOGNRAGSOC.AsString+' '+copy(DM.IBDataSetClientiNOME.asstring,1,25-length(DM.IBDataSetClientiCOGNRAGSOC.AsString)-1);
DM.IBDataSetArticoloCV.Value:=0;
tennismng.DBEdit51.SetFocus;
//if DM.IBDataSetClientiCLI_NO.Value=1 then
//dm.IBDataSetArticoloAVAILABLE.AsString:='DISPONIBILE'
//else
//dm.IBDataSetArticoloAVAILABLE.AsString:='DEL_CLIENTE';
end;

end;

procedure TDM.IBDataSetParamAfterDelete(DataSet: TDataSet);
begin
If  DM.IBTransaction13.InTransaction then
begin
DM.IBTransaction13.CommitRetaining;
DM.IBDataSetParam.Refresh;
end;
end;

procedure TDM.IBDataSetParamAfterOpen(DataSet: TDataSet);
begin
menu.Label40.Caption:=DM.IBDataSetParamEANTOSCAN.AsString;
end;

procedure TDM.IBDataSetParamAfterPost(DataSet: TDataSet);
begin
If  DM.IBTransaction13.InTransaction then
begin
DM.IBTransaction13.CommitRetaining;
DM.IBDataSetParam.Refresh;
end;

end;

procedure TDM.IBDataSetParamAfterCancel(DataSet: TDataSet);
begin
If  DM.IBTransaction13.InTransaction then
begin
DM.IBTransaction13.RollbackRetaining;
DM.IBDataSetParam.Refresh;
end;
end;

procedure TDM.IBDataSetParamBeforeDelete(DataSet: TDataSet);
begin
If not DM.IBTransaction13.InTransaction then
DM.IBTransaction13.StartTransaction;
end;

procedure TDM.IBDataSetParamBeforeEdit(DataSet: TDataSet);
begin
If not DM.IBTransaction13.InTransaction then
DM.IBTransaction13.StartTransaction;
end;

procedure TDM.IBDataSetParamBeforeInsert(DataSet: TDataSet);
begin
If not DM.IBTransaction13.InTransaction then
DM.IBTransaction13.StartTransaction;
end;

procedure TDM.IBDataSetArticoloAfterScroll(DataSet: TDataSet);
begin
if IBDataSetArticoloAVAILABLE.AsString='NOLEGGIATO' Then
menu.DBRadioGroup2.ReadOnly:=true
else
menu.DBRadioGroup2.ReadOnly:=false;
if Tennismng.Active=true then
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
//DM.IBQueryTemp.SQL.Add('SELECT NOME, COGNRAGSOC FROM CLIENTI WHERE CLI_NO = "'+DM.IBDataSetClientiCLI_NO.AsString+'"');
if not DM.IBDataSetArticolo.IsEmpty then
DM.IBQueryTemp.SQL.Add('SELECT NOME, COGNRAGSOC FROM CLIENTI WHERE CLI_NO = "'+DM.IBDataSetArticoloCLI_NO.asstring+'"')
else
DM.IBQueryTemp.SQL.Add('SELECT NOME, COGNRAGSOC FROM CLIENTI WHERE CLI_NO = "'+DM.IBDataSetClientiCLI_NO.asstring+'"');
DM.IBQueryTemp.Open;
 if not DM.IBQueryTemp.IsEmpty then
 begin
  Tennismng.Edit3.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString;
 Tennismng.Edit5.Text:=DM.IBQueryTemp.Fields.Fields[1].AsString;
 end;
DM.IBQueryTemp.Close;
end;

IF DM.IBDataSetArticoloCV.asinteger=1 then
begin
 menu.DBCheckBox14.Caption:='CONTOVENDITA';
 DM.IBQueryTemp.Close;
 DM.IBQueryTemp.SQL.Clear;
 DM.IBQueryTemp.SQL.Add('SELECT NOME, COGNRAGSOC FROM CLIENTI WHERE CLI_NO = "'+DM.IBDataSetArticoloCLI_NO.asstring+'"');
 DM.IBQueryTemp.Open;
 if not DM.IBQueryTemp.IsEmpty then
 begin
 menu.Edit62.Text:=DM.IBDataSetArticoloCLI_NO.asstring;
 menu.Edit63.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString+' '+DM.IBQueryTemp.Fields.Fields[1].AsString;
 end;
 DM.IBQueryTemp.Close;
 end
else
 begin
  if DM.IBDataSetArticoloCLI_NO.IsNull then
   begin
   menu.DBCheckBox14.Caption:='DEL NEGOZIO';
   menu.Edit62.Clear;
   menu.Edit63.Clear;
   end
  else
  begin
  menu.DBCheckBox14.Caption:='DEL CLIENTE';
  DM.IBQueryTemp.Close;
  DM.IBQueryTemp.SQL.Clear;
  DM.IBQueryTemp.SQL.Add('SELECT NOME, COGNRAGSOC FROM CLIENTI WHERE CLI_NO = "'+DM.IBDataSetArticoloCLI_NO.asstring+'"');
  DM.IBQueryTemp.Open;
  if not DM.IBQueryTemp.IsEmpty then
  begin
  menu.Edit62.Text:=DM.IBDataSetArticoloCLI_NO.asstring;
  menu.Edit63.Text:=DM.IBQueryTemp.Fields.Fields[0].AsString+' '+DM.IBQueryTemp.Fields.Fields[1].AsString;
  end;
DM.IBQueryTemp.Close;
 end;
end;
end;

procedure TDM.IBDatabase1BeforeConnect(Sender: TObject);
begin
 with IBDatabase1 do
  begin
    if LoginPrompt = False then
    begin
      Params.Values['User_Name']:= PasswordDlg.Edit1.Text;
      Params.Values['Password']:= PasswordDlg.Password.Text;
      Params.Values['sql_role_name']:= PasswordDlg.Edit2.Text;
    end;
  end;
end;

procedure TDM.IBDatabase1AfterConnect(Sender: TObject);
var
  I: Integer;
  temp:string;
begin
   with IBDatabase1 do
  begin
    for I := 0 to DataSetCount - 1 do
    begin
     temp:=Ibdatabase1.DataSets[i].Name;
     if (DataSets[I].Name<>'IBQueryTemp') and (DataSets[I].Name<>'IBQueryZFact') then
      DataSets[I].Open;
  end;
  for I := 0 to  TransactionCount - 1 do
      Transactions[I].Active:=true;
  end;
  menu.SetSchedStatoCons;
//if DM.IBDatabase2.Connected = true then
//begin
{  menu.FeeDayLateCalc(DM.IBDataSetParamTAXFEELATE.AsFloat);
  menu.SetupCVModule(DM.IBDataSetLocalParamENABCV.AsInteger);
  menu.SetUpRepModule(DM.IBDataSetLocalParamENABREP.AsInteger);
  menu.SetUpOperModule(DM.IBDataSetLocalParamENABOPER.AsInteger);
  menu.SetUpRipModule(DM.IBDataSetLocalParamENABRIP.AsInteger);
  menu.SetUpFinVModule(DM.IBDataSetLocalParamENABFINV.AsInteger);
  menu.SetUpTreeVModule(DM.IBDataSetLocalParamENABTREE.AsInteger);
  menu.SetUpLabModule(DM.IBDataSetLocalParamENABLABMODULE.AsInteger);
  menu.SetUpTennisModule(DM.IBDataSetLocalParamENABTENNIS.AsInteger);}
  //  end;
  nolo.Menu.Timer3.Enabled:=true;
end;

procedure TDM.IBDatabase1AfterDisconnect(Sender: TObject);
var
  I: Integer;
begin
  with IBDatabase1 do
  begin
    for I := 0 to DataSetCount - 1 do
      if DataSets[I].Name<>'IBQueryTemp' then
      DataSets[I].Close;
    for I := 0 to  TransactionCount - 1 do
      Transactions[I].Active:=false;
  end;
end;

procedure TDM.IBDataSetClientiAfterDelete(DataSet: TDataSet);
begin
if IBtransaction1.InTransaction then
begin
IBTransaction1.CommitRetaining;
//DM.IBDataSetClienti.Open;
IBDatasetClienti.Refresh;
end;

end;

procedure TDM.IBDataSetClientiBeforeCancel(DataSet: TDataSet);
begin
//if not IBTransaction1.InTransaction then
//IBTransaction1.StartTransaction;

end;

procedure TDM.IBDataSetClientiAfterCancel(DataSet: TDataSet);
begin
if IBtransaction1.InTransaction then
begin
IBTransaction1.RollbackRetaining;
IBDatasetClienti.Refresh;
end;
end;

procedure TDM.IBDataSetArticoloAfterDelete(DataSet: TDataSet);
begin
if IBtransaction2.InTransaction then
begin
IBTransaction2.CommitRetaining;
IBDatasetArticolo.Refresh;
end;

end;

procedure TDM.IBDataSetArticoloAfterCancel(DataSet: TDataSet);
begin
if IBtransaction2.InTransaction then
begin
IBTransaction2.RollbackRetaining;
IBDatasetArticolo.Refresh;
end;

end;

procedure TDM.IBTableTipoBeforeCancel(DataSet: TDataSet);
begin
if IBTransaction3.Active = false then
IBTransaction3.StartTransaction;
end;

procedure TDM.IBDataSetArticoloBeforeCancel(DataSet: TDataSet);
begin
if IBTransaction2.Active = false then
IBTransaction2.StartTransaction;

end;

procedure TDM.IBTableTipoAfterCancel(DataSet: TDataSet);
begin
if IBtransaction3.InTransaction then
begin
IBTransaction3.RollbackRetaining;
//IBTableTipo.Refresh;
end;

end;

procedure TDM.IBTableTipoAfterDelete(DataSet: TDataSet);
begin
if IBtransaction3.InTransaction then
begin
IBTransaction3.CommitRetaining;
//IBTableTipo.Refresh;
end;

end;

procedure TDM.IBDataSetStagioneBeforeCancel(DataSet: TDataSet);
begin
if IBTransaction4.Active = false then
IBTransaction4.StartTransaction;

end;

procedure TDM.IBDataSetStagioneBeforeDelete(DataSet: TDataSet);
begin
if IBTransaction4.Active = false then
IBTransaction4.StartTransaction;

end;

procedure TDM.IBDataSetStagioneBeforeEdit(DataSet: TDataSet);
begin
if IBTransaction4.Active = false then
IBTransaction4.StartTransaction;

end;

procedure TDM.IBDataSetStagioneBeforeInsert(DataSet: TDataSet);
begin
if IBTransaction4.Active = false then
IBTransaction4.StartTransaction;

end;

procedure TDM.IBDataSetStagioneAfterCancel(DataSet: TDataSet);
begin
if IBtransaction4.InTransaction then
begin
IBTransaction4.RollbackRetaining;
IBDatasetStagione.Refresh;
end;

end;

procedure TDM.IBDataSetStagioneAfterDelete(DataSet: TDataSet);
begin
if IBtransaction4.InTransaction then
begin
IBTransaction4.CommitRetaining;
IBDatasetStagione.Refresh;
end;

end;

procedure TDM.IBDataSetStagioneAfterPost(DataSet: TDataSet);
begin
if IBtransaction4.InTransaction then
begin
IBTransaction4.CommitRetaining;
IBDatasetStagione.Refresh;
end;

end;

procedure TDM.IBDataSetBrandAfterCancel(DataSet: TDataSet);
begin
if IBtransaction5.InTransaction then
begin
IBTransaction5.RollbackRetaining;
IBDatasetBrand.Refresh;
end;

end;

procedure TDM.IBDataSetBrandAfterDelete(DataSet: TDataSet);
begin
if IBtransaction5.InTransaction then
begin
IBTransaction5.CommitRetaining;
IBDatasetBrand.Refresh;
end;

end;

procedure TDM.IBDataSetBrandAfterPost(DataSet: TDataSet);
begin
if IBtransaction5.InTransaction then
begin
IBTransaction5.CommitRetaining;
DM.IBDataSetBrand.Refresh;
end;

end;

procedure TDM.IBDataSetBrandBeforeCancel(DataSet: TDataSet);
begin
if IBTransaction5.Active = false then
IBTransaction5.StartTransaction;

end;

procedure TDM.IBDataSetBrandBeforeDelete(DataSet: TDataSet);
begin
if IBTransaction5.Active = false then
IBTransaction5.StartTransaction;

end;

procedure TDM.IBDataSetBrandBeforeEdit(DataSet: TDataSet);
begin
if IBTransaction5.Active = false then
IBTransaction5.StartTransaction;

end;

procedure TDM.IBDataSetBrandBeforeInsert(DataSet: TDataSet);
begin
if IBTransaction5.Active = false then
IBTransaction5.StartTransaction;

end;

procedure TDM.IBDataSetListinoAfterCancel(DataSet: TDataSet);
begin
if IBtransaction11.InTransaction then
begin
IBTransaction11.RollbackRetaining;
IBDatasetListino.Refresh;
end;

end;

procedure TDM.IBDataSetListinoAfterDelete(DataSet: TDataSet);
begin
if IBtransaction11.InTransaction then
begin
IBTransaction11.CommitRetaining;
IBDatasetListino.Refresh;
end;

end;

procedure TDM.IBDataSetListinoBeforeCancel(DataSet: TDataSet);
begin
if IBTransaction11.Active = false then
IBTransaction11.StartTransaction;

end;

procedure TDM.IBDataSetOpBeforeCancel(DataSet: TDataSet);
begin
if IBTransaction12.Active = false then
IBTransaction12.StartTransaction;

end;

procedure TDM.IBDataSetParamBeforeCancel(DataSet: TDataSet);
begin
If not DM.IBTransaction13.InTransaction then
DM.IBTransaction13.StartTransaction;
end;


procedure TDM.IBDataSetStagioneBeforeRefresh(DataSet: TDataSet);
begin
if IBtransaction4.InTransaction then
IBTransaction4.CommitRetaining;

end;

procedure TDM.IBDataSetBrandBeforeRefresh(DataSet: TDataSet);
begin
if IBtransaction5.InTransaction then
IBTransaction5.CommitRetaining;

end;

procedure TDM.IBDatabase2BeforeConnect(Sender: TObject);
begin
// with IBDatabase2 do
//  begin
//    if LoginPrompt = False then
//    begin
//      Params.Values['User_Name']:= PasswordDlg.Edit1.Text;
//      Params.Values['Password']:= PasswordDlg.Password.Text;
//      Params.Values['sql_role_name']:= PasswordDlg.Edit2.Text;
//    end;
//  end;
  end;

procedure TDM.IBDatabase2AfterDisconnect(Sender: TObject);
var
  I: Integer;
begin
  with IBDatabase2 do
  begin
    for I := 0 to DataSetCount - 1 do
     if DataSets[I].Name<>'IBQueryTemp' then
      DataSets[I].Close;
  for I := 0 to  TransactionCount - 1 do
      Transactions[I].Active:=false;

end;

end;

procedure TDM.IBDatabase2AfterConnect(Sender: TObject);
var
  I: Integer;
begin
  with IBDatabase2 do
  begin
    for I := 0 to DataSetCount - 1 do
   if DataSets[I].Name<>'IBQueryTemp'  then
    DataSets[I].Open;
  for I := 0 to  TransactionCount - 1 do
      Transactions[I].Active:=true;
  end;

  menu.FeeDayLateCalc(DM.IBDataSetParamTAXFEELATE.AsFloat);
  menu.SetupCVModule(DM.IBDataSetLocalParamENABCV.AsInteger);
  menu.SetUpRepModule(DM.IBDataSetLocalParamENABREP.AsInteger);
  menu.SetUpOperModule(DM.IBDataSetLocalParamENABOPER.AsInteger);
  menu.SetUpRipModule(DM.IBDataSetLocalParamENABRIP.AsInteger);
  menu.SetUpFinVModule(DM.IBDataSetLocalParamENABFINV.AsInteger);
  menu.SetUpTreeVModule(DM.IBDataSetLocalParamENABTREE.AsInteger);
  menu.SetUpLabModule(DM.IBDataSetLocalParamENABLABMODULE.AsInteger);
  menu.SetUpTennisModule(DM.IBDataSetLocalParamENABTENNIS.AsInteger);
  end;

procedure TDM.IBDataSetScheduleAfterOpen(DataSet: TDataSet);
begin
//menu.SetSchedStatoCons;
end;

procedure TDM.IBDataSetClientiAfterEdit(DataSet: TDataSet);
begin
if menu.Focused then
menu.DBEdit4.SetFocus;
end;

procedure TDM.IBDataSetRentedAfterDelete(DataSet: TDataSet);
var chiusi,Numart,Aperti:integer;
begin
if tennismng.Showing=true then
begin
Tennismng.edit13.Text:=ArticoliNoleggiati;
Tennismng.edit17.Text:=ArticoliDaConsegnare;
Tennismng.edit18.Text:=ArticoliConsegnati;
  chiusi:=strtoint(Tennismng.edit18.text);
  Numart:=strtoint(Tennismng.edit13.text);
  aperti:=strtoint(Tennismng.edit17.text);
  if (Chiusi=0) and (NumArt=0) and (Aperti=0) then
DM.IBDataSetScheduleSTATO.AsString:='INUTILIZZATA';
if (Chiusi=0) and (NumArt>0) and (Aperti>0) then
DM.IBDataSetScheduleSTATO.AsString:='APERTA';
if (Chiusi>0) and (NumArt>0) and (Chiusi<NumArt) then
DM.IBDataSetScheduleSTATO.AsString:='PARZIALE';
if (NumArt>0) and ((Chiusi>NumArt) or (Aperti>NumArt)) then
DM.IBDataSetScheduleSTATO.AsString:='INCOERENTE';
if (NumArt>0) and (Chiusi=NumArt) and (Aperti=0)then
DM.IBDataSetScheduleSTATO.AsString:='CHIUSA';
// Tennismng.edit13.Text:=inttostr(nolo.menu.ScheduleResult(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//  Tennismng.edit17.Text:=inttostr(nolo.menu.QtaArtChiusiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));
//  Tennismng.edit18.Text:=inttostr(nolo.menu.QtaArtApertiPerScheda(DM.IBDataSetScheduleSCHED_NO.AsInteger));

DM.IBDataSetScheduleSUBTOTALE.AsFloat:=Menu.SubTotRentArtTennnis(DM.IBDataSetScheduleDAYUSE.AsInteger,DM.IBDataSetScheduleSCHED_NO.AsString);
DM.IBDataSetScheduleNETPRICE.AsFloat:=DM.IBDataSetScheduleSUBTOTALE.AsFloat-(DM.IBDataSetScheduleSUBTOTALE.AsFloat*DM.IBDataSetScheduleDISCOUNT.AsFloat/100);

end;

//if IBtransaction6.InTransaction then
//begin
//IBTransaction6.CommitRetaining;
//IBDataSetRented.Refresh;
end;


procedure TDM.IBDataSetRentedAfterCancel(DataSet: TDataSet);
begin
//if IBtransaction6.InTransaction then
//begin
//IBTransaction6.RollbackRetaining;
//IBDatasetRented.Refresh;
//end;


end;


procedure TDM.FilterSkiRented;
begin
{if not DM.IBTransaction10.InTransaction then
DM.IBTransaction10.StartTransaction;
DM.IBQueryZFact.Close;
DM.IBQueryZFact.SQL.Clear;
DM.IBQueryZFact.SQL.Add('SELECT RENTEDART.SCHED_NO,RENTEDART.ART_NO,ARTICOLO.TIPO');
DM.IBQueryZFact.SQL.Add('FROM RENTEDART JOIN ARTICOLO ON RENTEDART.ART_NO=ARTICOLO.ART_NO');
DM.IBQueryZFact.SQL.Add('WHERE RENTEDART.SCHED_NO = "'+DM.IBDataSetScheduleSCHED_NO.AsString+'" AND ARTICOLO.TIPO LIKE "SCI%"');
DM.IBQueryZFact.Open;
DM.IBQueryZFact.First;
repeat
   DM.IBQueryTemp.Close;
   DM.IBQueryTemp.SQL.Clear;
   DM.IBQueryTemp.SQL.Add('INSERT INTO TABFACTZ (SCHED_NO,ART_NO) VALUES ("'+DM.IBQueryZFact.Fields.Fields[0].AsString+'","'+DM.IBQueryZFact.Fields.Fields[1].AsString+'")');
   DM.IBQueryTemp.ExecSQL;
   DM.IBQueryZFact.Next;
 until DM.IBQueryZFact.Eof;
DM.IBTransaction10.Commit;
DM.IBDataSetZFact.Refresh;}


end;

procedure TDM.ADOConnection1BeforeConnect(Sender: TObject);
begin
//ADOConnection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+'\cap1.mdb;Persist Security Info=False';
end;

procedure TDM.IBDataSetArticoloTIPOSALDOCLIChange(Sender: TField);
begin
if (dM.IBDataSetArticoloTIPOSALDOCLI.OldValue='NULLA') and (dM.IBDataSetArticoloTIPOSALDOCLI.NewValue<>'NULLA') then
Dm.IBDataSetArticoloDATASALDOCLI.Value:=today;
if (dM.IBDataSetArticoloTIPOSALDOCLI.OldValue<>'NULLA') and (dM.IBDataSetArticoloTIPOSALDOCLI.NewValue='NULLA') then
DM.IBDataSetArticoloDATASALDOCLI.Clear;
end;

procedure TDM.IBDataSetParamRICUSATOSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(trimleft(leftstr(text,3)));
end;

procedure TDM.IBDataSetArticoloAfterEdit(DataSet: TDataSet);
begin
if Menu.PageControl1.TabIndex=1 then
menu.DBLookUpcombobox1.SetFocus;
if Menu.PageControl1.TabIndex=11 then
menu.DBLookUpcombobox6.SetFocus;

if Tennismng.Focused=true then
tennismng.DBEdit51.SetFocus;

end;

procedure TDM.IBDataSetArticoloEANCODE2SetText(Sender: TField;
  const Text: String);
begin
if text <>'' then
begin
DM.IBQueryTemp.Close;
DM.IBQueryTemp.SQL.Clear;
DM.IBQueryTemp.SQL.Add('SELECT * FROM ARTICOLO WHERE EANCODE2="*'+text+'*"');
DM.IBQueryTemp.Open;
if DM.IBQueryTemp.IsEmpty then
Sender.Value:='*'+Text+'*'
else
MessageDlg('Barcode già utilizzato!', mtInformation,[mbOk], 0);
end;

end;

procedure TDM.IBDataSetParamENABCVChange(Sender: TField);
begin
Menu.SetUpCVModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetParamENABREPChange(Sender: TField);
begin
Menu.SetUpRepModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetParamENABOPERChange(Sender: TField);
begin
Menu.SetUpOperModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetParamENABRIPChange(Sender: TField);
begin
Menu.SetUpRipModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetParamENABTREEChange(Sender: TField);
begin
Menu.SetUpTreeVModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetParamENABFINVChange(Sender: TField);
begin
menu.SetUpFinVModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetParamENABFINSCHEChange(Sender: TField);
begin
//Menu.SetUpFinVModule(Sender.AsInteger);
end;

procedure TDM.IBDataSetRentedETAChange(Sender: TField);
begin
if not((sender.NewValue > 3) and (sender.NewValue <100)) then
begin
MessageDlg('Valore Età Deve Essere Compreso Tra 3 e 100', mtInformation,[mbOk], 0);
Sender.NewValue:=Sender.OldValue;
end;

end;

procedure TDM.IBDataSetRentedPESOChange(Sender: TField);
begin
if not((sender.NewValue > 10) and (sender.NewValue <140)) then
begin
MessageDlg('Valore Peso Deve Essere Compreso Tra 10 e 140', mtInformation,[mbOk], 0);
Sender.NewValue:=Sender.OldValue;
end;

end;

procedure TDM.IBDataSetRentedALTEZZAChange(Sender: TField);
begin
if not((sender.NewValue > 70) and (sender.NewValue <230)) then
begin
MessageDlg('Valore Altezza Deve Essere Compreso Tra 70 e 230', mtInformation,[mbOk], 0);
Sender.NewValue:=Sender.OldValue;
end;

end;

procedure TDM.IBDataSetRentedSESSOChange(Sender: TField);
begin
if not((sender.NewValue = 'M') or (sender.NewValue ='F')) then
begin
MessageDlg('Valore Sesso Può Essere o F o M', mtInformation,[mbOk], 0);
Sender.NewValue:=Sender.OldValue;
end;

end;

procedure TDM.IBDataSetRentedCMSUOLAChange(Sender: TField);
begin
if not((sender.NewValue >190 ) and (sender.NewValue <370)) then
begin
MessageDlg('Valore Età Deve Essere Compreso Tra 190 e 370', mtInformation,[mbOk], 0);
Sender.NewValue:=Sender.OldValue;
end;

end;

procedure TDM.IBDataSetRentedLIVELLOChange(Sender: TField);
begin
if not((sender.NewValue = 'BASE') OR (sender.NewValue = 'MEDIO') OR (sender.NewValue = 'AVANZATO') ) then
begin
MessageDlg('Valore Livello Può Essere AVANZATO, BASE, MEDIO', mtInformation,[mbOk], 0);
Sender.NewValue:=Sender.OldValue;
end;

end;

procedure TDM.IBDataSetArticoloINCVENDITAValidate(Sender: TField);
begin
if (DM.IBDataSetArticoloINCVENDITA.NewValue< DM.IBDataSetArticoloPREZZORIS.Value) and (not DM.IBDataSetArticoloINCVENDITA.IsNull) then
begin
if tennismng.Active=true then
messagedlg('Si sta vendendo ad un prezzo inferiore,'+ chr(13) + 'rispetto al prezzo di carico',mtWarning,[mbOK],0)
else
messagedlg('Si sta vendendo ad un prezzo inferiore,'+ chr(13) + 'rispetto alla richiesta del cliente',mtWarning,[mbOK],0);
end;
end;

procedure TDM.IBDataSetArticoloPREZZORISChange(Sender: TField);
begin
DM.IBDataSetArticoloPREZZOSCONT.AsFloat:=DM.IBDataSetArticoloPREZZORIS.AsFloat+(DM.IBDataSetArticoloPREZZORIS.Value*DM.IBDataSetParamRICUSATO.AsFloat/100);
end;

procedure TDM.IBDataSetArticoloEXPIREDATEChange(Sender: TField);
begin
if Sender.NewValue = NULL then
DM.IBDataSetArticoloVENDUTODA.Clear;

end;

procedure TDM.IBDataSetRipAfterPost(DataSet: TDataSet);
begin
if DM.IBTransaction14.InTransaction then
begin
DM.IBTransaction14.CommitRetaining;
DM.IBDataSetRip.Refresh;

end;
end;

procedure TDM.IBDataSetRipBeforeInsert(DataSet: TDataSet);
begin
if not DM.IBTransaction14.InTransaction then
DM.IBTransaction14.StartTransaction;
end;

procedure TDM.IBDataSetRipBeforeEdit(DataSet: TDataSet);
begin
if not DM.IBTransaction14.InTransaction then
DM.IBTransaction14.StartTransaction;

end;

procedure TDM.IBDataSetRipBeforeDelete(DataSet: TDataSet);
begin
if not DM.IBTransaction14.InTransaction then
DM.IBTransaction14.StartTransaction;

end;

procedure TDM.IBDataSetRipAfterCancel(DataSet: TDataSet);
begin
if DM.IBTransaction14.InTransaction then
begin
DM.IBTransaction14.RollbackRetaining;
DM.IBDataSetRip.Refresh;
end;
end;

procedure TDM.IBDataSetRipBeforeClose(DataSet: TDataSet);
begin
if not DM.IBTransaction14.InTransaction then
DM.IBTransaction14.Commit;
end;

procedure TDM.IBDataSetRipAfterInsert(DataSet: TDataSet);
begin
DM.IBDataSetRipEANCODERIP.AsString:=Ean39Gen2(DM.IBDataSetParamPREF_RIP_NO.AsString,DM.IBDataSetRipRIP_NO.AsString);
DM.IBDataSetRipCLI_NO.AsInteger:=DM.IBDataSetClientiCLI_NO.AsInteger;
DM.IBDataSetRipDATAINSERT.Value:=today;
DM.IBDataSetRipDATARITIRORICH.Value:=today+DM.IBDataSetParamDAYWORKREADY.AsInteger;
DM.IBDataSetRipTIPOPRODOTTO.Value:=DM.IBDataSetLocalParamDEFTIPORIP.AsString;
DM.IBDataSetRipFONDO.Value:=0;
DM.IBDataSetRipLAMINE.Value:=0;
DM.IBDataSetRipSCIOLINA.Value:=0;
DM.IBDataSetRipPREPGARA.Value:=0;
DM.IBDataSetRipRIPPARTIC.Value:=0;
DM.IBDataSetRipRADDRIZZATURA.Value:=0;
DM.IBDataSetRipCHECKATTACCHI.Value:=0;
DM.IBDataSetRipPELLI.Value:=0;
DM.IBDataSetRipURGENZA.Value:=0;
DM.IBDataSetRipTIPOPAGAM.Value:='PAGARE IN ANTICIPO';
DM.IBDataSetRipOWNER.Value:=Account.Operatore;
DM.IBDataSetRipBOOT_DX.Value:=0;
DM.IBDataSetRipBOOT_SX.Value:=0;
DM.IBDataSetRipALLARGPIANTA_SX.Value:=0;
DM.IBDataSetRipALZARECOLLO_SX.Value:=0;
DM.IBDataSetRipCAMBIOGANCIO_SX.Value:=0;
DM.IBDataSetRipMALLEOLO_SX.Value:=0;
DM.IBDataSetRipSOLETTARISC.Value:=0;
DM.IBDataSetRipCAMBIOGANCIO_DX.Value:=0;
DM.IBDataSetRipCAMBIOGANCIO_SX.Value:=0;
end;

procedure TDM.DSRiparazioneDataChange(Sender: TObject; Field: TField);
begin
//RipModule.DBRadioGroup2.Enabled:=DSRiparazione.State in [dsEdit,dsInsert];
RipModule.Bitbtn11.Enabled:=DSRiparazione.State in [dsEdit,dsInsert];
RipModule.Bitbtn19.Enabled:=DSRiparazione.State in [dsBrowse];
RipModule.bitbtn21.Enabled:=DSRiparazione.State in [dsEdit,dsInsert];
if not DM.IBDataSetRip.IsEmpty then
RipModule.Bitbtn20.Enabled:=DSRiparazione.State in [dsBrowse]
else
RipModule.Bitbtn20.Enabled:=false;
RipModule.Groupbox1.enabled:=DSRiparazione.State in [dsEdit,dsInsert];

if DM.IBDataSetRipTIPOPRODOTTO.Value='SCARPONI' Then
begin
RipModule.Groupbox2.Visible:=false;
RipModule.Groupbox6.Visible:=true;
end
else
begin
RipModule.Groupbox2.Visible:=true;
RipModule.Groupbox6.Visible:=false;
end;

if DM.IBDataSetRipBOOT_SX.Value=0 then
Ripmodule.CheckBox1.Checked:=false
else
Ripmodule.CheckBox1.Checked:=true;

if DM.IBDataSetRipBOOT_DX.Value=0 then
Ripmodule.CheckBox2.Checked:=false
else
Ripmodule.CheckBox2.Checked:=true;

if DM.IBDataSetRipTIPOPRODOTTO.Value='SNOWBOARD' Then
begin
RipModule.Groupbox5.Visible:=true;
RipModule.BitBtn3.Visible:=true;
Ripmodule.Preview4.Visible:=true;
end
else
begin
RipModule.Groupbox5.Visible:=false;
RipModule.Bitbtn3.Visible:=false;
Ripmodule.Preview4.Visible:=false;
end;
if DM.IBDataSetRipCHECKATTACCHI.Value = 1 then
begin
ripmodule.DBEdit21.enabled:=true;
ripmodule.DBEdit22.enabled:=true;
end
else
begin
ripmodule.DBEdit21.enabled:=false;
ripmodule.DBEdit22.enabled:=false;
end;

if DM.IBDataSetRipTIPOPAGAM.Value='PAGATO' then
Ripmodule.DBRadioGroup2.Color:=CLlime;
if DM.IBDataSetRipTIPOPAGAM.Value='DA SEGNARE' then
Ripmodule.DBRadioGroup2.Color:=CLYellow;
if DM.IBDataSetRipTIPOPAGAM.Value='OMAGGIO' then
begin
Ripmodule.DBRadioGroup2.Color:=CLlime;
//if DSRiparazione.State in [dsEdit,dsInsert] then
//DM.IBDataSetRipPREZZO.Value:=0;
end;

if DM.IBDataSetRipTIPOPAGAM.Value='PAGARE A CONSEGNA' then
Ripmodule.DBRadioGroup2.Color:=CLRed;
end;

procedure TDM.IBDataSetRipTIPOPAGAMChange(Sender: TField);
begin
if (sender.NewValue='OMAGGIO') and (DSRiparazione.State in [dsEdit,dsInsert])  then
begin
DM.IBDataSetRipPREZZO.Value:=0;
ripmodule.DBEdit18.Color:=cllime;
ripmodule.label29.Color:=cllime;
ripmodule.label29.caption:='PAGATO';
end;
end;

procedure TDM.IBDataSetRipRITIRATODAChange(Sender: TField);
begin
if (sender.NewValue=NULL) and (sender.OldValue<>NULL) then
DM.IBDataSetRipDATARITIRO.Clear;
if ((sender.OldValue=NULL)or(sender.OldValue='')) and ((sender.NewValue<>NULL)and(sender.NewValue<>'')) then
DM.IBDataSetRipDATARITIRO.Value:=today;
end;

procedure TDM.IBDataSetRipAfterScroll(DataSet: TDataSet);
begin
//dM.IBDataSetRip.EnableControls;
if dm.ibdatasetrippagato.Value=1 then
begin
Ripmodule.DBEdit18.Color:=clLime;
Ripmodule.label29.Color:=clLime;
Ripmodule.label29.Caption:='PAGATO';
end
else
begin
Ripmodule.DBEdit18.Color:=clRed;
Ripmodule.label29.Color:=clRed;
Ripmodule.label29.Caption:='NON PAGATO';
end;

if (DM.IBDataSetRipURGENZA.Value=1) then
 begin
 Ripmodule.edit5.text:=inttostr(hourof(DM.IBDataSetRipDATARITIRORICH.AsDateTime));
 Ripmodule.edit6.text:=inttostr(minuteof(DM.IBDataSetRipDATARITIRORICH.AsDateTime));
// Ripmodule.CheckBox1.Checked:=true;
 end
else
 begin
 Ripmodule.edit5.Clear;
 Ripmodule.edit6.Clear;
// Ripmodule.CheckBox1.Checked:=false;
 end;

end;

procedure TDM.IBQuerySchTennisAfterScroll(DataSet: TDataSet);
begin
  DM.IBDataSetRented.Close;
  DM.IBDataSetRented.SelectSQL.Clear;
  DM.IBDataSetRented.SelectSQL.Add('SELECT ARTICOLO.*, RENTEDART.*');
  DM.IBDataSetRented.SelectSQL.Add('FROM ARTICOLO JOIN RENTEDART ON ARTICOLO.ART_NO=RENTEDART.ART_NO');
  if not DM.IBDataSetScheduleSched_no.IsNull then
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO="'+DM.IBQuerySchTennis.Fields.Fields[0].AsString+'")')
  else
  DM.IBDataSetRented.SelectSQL.Add('WHERE (ARTICOLO.TIPO="RACCHETTA TENNIS") AND (RENTEDART.SCHED_NO= NULL)');
  DM.IBDataSetRented.Open;
end;

procedure TDM.IBDatasetAcqAfterInsert(DataSet: TDataSet);
begin
dm.IBDatasetAcqCLI_NO.Value:=dm.IBDataSetClientiCLI_NO.AsInteger;
DM.IBDatasetAcqDATAINTRO.Value:=today;
if DM.IBDatasetAcqCLI_NO.Value=1 then
dm.IBDatasetAcqTIPOPAGAMMATASSA.Value:='DEL NEGOZIO'
else
dm.IBDatasetAcqTIPOPAGAMMATASSA.Value:='DA PAGARE';
DM.IBDatasetAcqQTA.Value:=1;
if tennismng.TabSheet7.Showing=true then
begin
Tennismng.DBEdit53.SetFocus;
DM.IBDatasetAcqTIPOPRODOTTO.Value:='MATASSA';
end
else
begin
Tennismng.DBEdit9.SetFocus;
DM.IBDatasetAcqTIPOPRODOTTO.Value:='MATASSA';
end;
if DM.IBDatasetAcqCLI_NO.Value=1 then
DM.IBDatasetAcqINUSO.Value:=0;
end;

procedure TDM.IBDatasetAcqBeforeInsert(DataSet: TDataSet);
begin
if not IBTransaction15.InTransaction then
IBTransaction15.StartTransaction;
end;

procedure TDM.IBDatasetAcqBeforeEdit(DataSet: TDataSet);
begin
if not IBTransaction15.InTransaction then
IBTransaction15.StartTransaction;

end;

procedure TDM.IBDatasetAcqBeforeDelete(DataSet: TDataSet);
begin
if not IBTransaction15.InTransaction then
IBTransaction15.StartTransaction;

end;

procedure TDM.IBDatasetAcqAfterPost(DataSet: TDataSet);
begin
if IBTransaction15.InTransaction then
IBTransaction15.CommitRetaining;
if tennismng.TabSheet7.Showing then
tennismng.TabSheet7Show(nil)
else
tennismng.TabSheet5Show(nil)
//Tennismng.SpeedButton11.Click;
end;

procedure TDM.IBDatasetAcqAfterDelete(DataSet: TDataSet);
begin
if IBTransaction15.InTransaction then
IBTransaction15.CommitRetaining;
Tennismng.SpeedButton11.Click;
end;

procedure TDM.IBDatasetAcqAfterCancel(DataSet: TDataSet);
begin
if IBTransaction15.InTransaction then
IBTransaction15.RollbackRetaining;
end;

procedure TDM.DSAcqDataChange(Sender: TObject; Field: TField);
begin
if DM.IBDatasetAcqDATASALDO.IsNull then
Tennismng.BitBtn13.Caption:='PAGATO'
else
Tennismng.BitBtn13.Caption:='RIPRISTINA';
if DM.IBDatasetAcqDATARESO.IsNull then
Tennismng.BitBtn12.Caption:='RESO'
else
Tennismng.BitBtn12.Caption:='RIPRISTINA';
Tennismng.groupbox2.enabled:=DSAcq.State in [dsEdit,dsInsert];
Tennismng.BitBtn5.Enabled:=DSAcq.State in [dsEdit,dsInsert];
Tennismng.Bitbtn7.Enabled:=((DSAcq.State in [dsBrowse]) and (not DM.IBDatasetAcq.IsEmpty));
Tennismng.Bitbtn6.Enabled:=DSAcq.State in [dsEdit,dsInsert];
if DM.IBDatasetAcqDATAFINE.IsNull then
tennismng.BitBtn8.Caption:='FINE MATASSA'
else
tennismng.BitBtn8.Caption:='RIPRISTINA';
//Tennismng.BitBtn4.Enabled:=true;
//Tennismng.BitBtn8.Enabled:=true;
 Tennismng.groupbox9.enabled:=DSAcq.State in [dsEdit,dsInsert];
 //Tennismng.groupbox2.enabled:=DSAcq.State in [dsEdit,dsInsert];
 Tennismng.BTNSALVA4.Enabled:=DSAcq.State in [dsEdit,dsInsert];
 //Tennismng.BitBtn5.Enabled:=DSAcq.State in [dsEdit,dsInsert];
 Tennismng.BTNELIMINA4.Enabled:=((DSAcq.State in [dsBrowse]) and (not DM.IBDatasetAcq.IsEmpty));
 //Tennismng.Bitbtn7.Enabled:=((DSAcq.State in [dsBrowse]) and (not DM.IBDatasetAcq.IsEmpty));
 Tennismng.BTNANNULLA4.Enabled:=DSAcq.State in [dsEdit,dsInsert];
 //Tennismng.Bitbtn6.Enabled:=DSAcq.State in [dsEdit,dsInsert];
 if (DSAcq.State in [dsBrowse]) and not(DM.IBDatasetAcq.IsEmpty) then
 begin
 Tennismng.BTNMODIFICA4.Enabled:=true;
 Tennismng.BitBtn4.Enabled:=true;
 Tennismng.BitBtn8.Enabled:=true;
 Tennismng.BitBtn12.Enabled:=true;
 Tennismng.BitBtn13.Enabled:=true;
 Tennismng.BitBtn15.Enabled:=true;
 end
 else
 begin
 Tennismng.BTNMODIFICA4.Enabled:=false;
 Tennismng.BitBtn4.Enabled:=false;
 Tennismng.BitBtn8.Enabled:=false;
 Tennismng.BitBtn12.Enabled:=false;
 Tennismng.BitBtn13.Enabled:=false;
 Tennismng.BitBtn15.Enabled:=false;
 end;
 Tennismng.BTNNUOVO4.Enabled:=DSAcq.State in [dsBrowse];
 Tennismng.Bitbtn3.Enabled:=DSAcq.State in [dsBrowse];
 Tennismng.BitBtn11.Enabled:=not DM.IBDatasetAcq.IsEmpty;

 if DM.IBDataSetClientiCLI_NO.Value=1 then
 begin
  Tennismng.DBCheckBox4.Visible:=true;
  Tennismng.BitBtn34.Visible:=True;
 end
 else
 begin
  Tennismng.DBCheckBox4.Visible:=false;
  Tennismng.BitBtn34.Visible:=False;
 end;


 end;

procedure TDM.IBDatasetAcqAfterEdit(DataSet: TDataSet);
begin
if tennismng.TabSheet7.Showing=true then
Tennismng.DBEdit53.SetFocus;
end;

procedure TDM.IBDatasetAcqSCONTOChange(Sender: TField);
var temp:real;
begin
//dm.IBDatasetAcqPREZZOPUB.Value;
dm.IBDatasetAcqPREZZONET.Value:=dm.IBDatasetAcqPREZZOPUB.Value-(dm.IBDatasetAcqPREZZOPUB.Value*dm.IBDatasetAcqSCONTO.Value/100);
end;

procedure TDM.IBDatasetAcqPREZZOPUBChange(Sender: TField);
begin
DM.IBDatasetAcqPREZZONET.Value:=Sender.Value;
end;

procedure TDM.IBDataSetRipAfterDelete(DataSet: TDataSet);
begin
if IBtransaction14.InTransaction then
begin
IBTransaction14.CommitRetaining;
IBDataSetRip.Refresh;
end;
end;

procedure TDM.RefreshRentedartQuery;
begin
DM.ibquery1.SQL.Clear;
dM.ibquery1.SQL.Add('SELECT articolo.ART_NO, rentedart.renart_no,rentedart.sched_no, articolo.cli_no, articolo.TIPO,');
dM.ibquery1.SQL.Add('articolo.BRAND,articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart.STATO,count(rentedart.ART_NO)  AS QTA, articolo.available, articolo.eancode, rentedart.eta,');
dM.ibquery1.SQL.Add('rentedart.peso, rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart.livello,rentedart.zfactor, rentedart.codice');
dM.ibquery1.SQL.Add('FROM articolo join rentedart on articolo.art_no=rentedart.art_no join schedule on schedule.SCHED_NO=rentedart.sched_no');
dM.ibquery1.SQL.Add('WHERE RENTEDART.SCHED_NO = :SCHEDNO');
dM.ibquery1.SQL.Add('GROUP BY articolo.ART_NO,rentedart.renart_no, rentedart.sched_no, articolo.cli_no, articolo.ART_NO,articolo.tipo,articolo.BRAND,articolo.DESCRIZIONE,articolo.MISURA,articolo.STAGIONE,rentedart.STATO,');
dM.ibquery1.SQL.Add('rentedart.ART_NO, articolo.available, articolo.eancode, rentedart.eta, rentedart.peso,rentedart.altezza, rentedart.sesso, rentedart.cmsuola, rentedart.livello,rentedart.zfactor, rentedart.codice');
DM.IBQuery1.Close;
dM.IBQuery1.Prepare;
DM.IBQuery1.ParamByName('SCHEDNO').AsInteger:=DM.IBDataSetScheduleSCHED_NO.AsInteger;
DM.IBQuery1.Open;
end;

procedure TDM.DeleteRentedartQuery(RENART_NO:string);
var tmpQuery:TIBQuery;
begin
tmpQuery.Create(Self);
TmpQuery.Transaction:=DM.IBTransaction6;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('DELETE FROM RENTEDART WHERE RENART_NO ='+RENART_NO);
TmpQuery.ExecSQL;

{if not DM.IBTransaction19.InTransaction then
DM.IBTransaction19.StartTransaction;
DM.ibquery1.SQL.Clear;
dM.ibquery1.SQL.Add('DELETE FROM RENTEDART WHERE RENART_NO ='+RENART_NO);
dM.ibquery1.ExecSQL;
DM.IBTransaction19.Commit;}

end;

Function TDM.GenID(Generator:string):string;
var Qry1Tmp:TIBquery;
begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := IBDatabase1;
   Qry1Tmp.SQL.Text := 'SELECT GEN_ID('+generator+', 1) FROM RDB$DATABASE';
   Qry1Tmp.Open;
   if  not Qry1tmp.IsEmpty then
   GenID:=Qry1tmp.Fields.Fields[0].AsString
   else
   GenID:='0';
      Qry1Tmp.Free;
end;

Function TDM.GenID2(Generator:string):string;
var Qry1Tmp:TIBquery;
begin
   Qry1Tmp:=TIBQuery.Create(nil);
   Qry1Tmp.active:=false;
   Qry1Tmp.DataBase := IBDatabase2;
   Qry1Tmp.SQL.Text := 'SELECT GEN_ID('+generator+', 1) FROM RDB$DATABASE';
   Qry1Tmp.Open;
   if  not Qry1tmp.IsEmpty then
   GenID2:=Qry1tmp.Fields.Fields[0].AsString
   else
   GenID2:='0';
      Qry1Tmp.Free;
end;


procedure TDM.IBDataSetSchedulePAGATOValidate(Sender: TField);
begin
if sender.Value=0 then
begin
//Menu.DBCheckBox1.Caption:='DA PAGARE';
//Menu.DBCheckBox1.Color:=clRed;
end
else
begin
//Menu.DBCheckBox1.Caption:='PAGATO';
//Menu.DBCheckBox1.Color:=clLime;
end;

end;

procedure TDM.IBQuery1AfterOpen(DataSet: TDataSet);
begin
if DM.IBQuery1.IsEmpty then
begin
menu.BitBtn1.Enabled:=false;
menu.BitBtn2.Enabled:=false;
end
else
begin
menu.BitBtn1.Enabled:=true;
menu.BitBtn2.Enabled:=true;
end;
end;

procedure TDM.IBDataSetLocalParamBeforeEdit(DataSet: TDataSet);
begin
if not ibtransaction18.InTransaction then
ibtransaction18.StartTransaction;
end;

procedure TDM.IBDataSetLocalParamBeforeInsert(DataSet: TDataSet);
begin
if not ibtransaction18.InTransaction then
ibtransaction18.StartTransaction;

end;

procedure TDM.IBDataSetLocalParamBeforeDelete(DataSet: TDataSet);
begin
if not ibtransaction18.InTransaction then
ibtransaction18.StartTransaction;

end;

procedure TDM.IBDataSetLocalParamAfterPost(DataSet: TDataSet);
begin
if ibtransaction18.InTransaction then
ibtransaction18.CommitRetaining;
  menu.SetupCVModule(DM.IBDataSetLocalParamENABCV.AsInteger);
  menu.SetUpRepModule(DM.IBDataSetLocalParamENABREP.AsInteger);
  menu.SetUpOperModule(DM.IBDataSetLocalParamENABOPER.AsInteger);
  menu.SetUpRipModule(DM.IBDataSetLocalParamENABRIP.AsInteger);
  menu.SetUpFinVModule(DM.IBDataSetLocalParamENABFINV.AsInteger);
  menu.SetUpTreeVModule(DM.IBDataSetLocalParamENABTREE.AsInteger);
  menu.SetUpLabModule(DM.IBDataSetLocalParamENABLABMODULE.AsInteger);
  menu.SetUpTennisModule(DM.IBDataSetLocalParamENABTENNIS.AsInteger);
  if DM.IBDataSetLocalParamENABLEADVISE.AsInteger = 0 Then
  nolo.Menu.Timer1.Enabled:=false
  else
  nolo.Menu.Timer1.Enabled:=true;

  end;

procedure TDM.IBDataSetLocalParamAfterCancel(DataSet: TDataSet);
begin
if ibtransaction18.InTransaction then
ibtransaction18.RollbackRetaining;

end;

procedure TDM.IBDataSetLocalParamAfterDelete(DataSet: TDataSet);
begin
if ibtransaction18.InTransaction then
ibtransaction18.CommitRetaining;

end;


procedure TDM.IBDatasetAcqPREZZOPUBSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDatasetAcqPREZZONETSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDatasetAcqSCONTOSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=-1*strtofloat(trimleft(leftstr(text,3)));
end;

procedure TDM.IBDatasetAcqBeforePost(DataSet: TDataSet);
begin
DM.IBDatasetAcqDATAULTIMAMOD.AsDateTime:=Now;
end;

procedure TDM.DSMatDataChange(Sender: TObject; Field: TField);
begin
Tennismng.groupbox2.enabled:=DSMat.State in [dsEdit,dsInsert];
Tennismng.BitBtn3.Enabled:=DSMat.State in [dsBrowse];
Tennismng.BitBtn5.Enabled:=DSMat.State in [dsEdit,dsInsert];
Tennismng.BitBtn4.Enabled:=((DSMat.State in [dsBrowse]) and (not DM.IBDatasetMat.IsEmpty));
Tennismng.BitBtn6.Enabled:=DSMat.State in [dsEdit,dsInsert];
if (DSMat.State in [dsBrowse]) and not(DM.IBDatasetMat.IsEmpty) then
begin
Tennismng.BitBtn7.Enabled:=true;
Tennismng.BitBtn8.Enabled:=true;
end
else
begin
Tennismng.BitBtn7.Enabled:=false;
Tennismng.BitBtn8.Enabled:=false;
end;
end;

procedure TDM.IBDataSetMatBeforeEdit(DataSet: TDataSet);
begin
if not DM.IBTransaction20.InTransaction then
DM.IBTransaction20.StartTransaction;

end;

procedure TDM.IBDataSetMatBeforeInsert(DataSet: TDataSet);
begin
if not DM.IBTransaction20.InTransaction then
DM.IBTransaction20.StartTransaction;

end;

procedure TDM.IBDataSetMatBeforeDelete(DataSet: TDataSet);
begin
if not DM.IBTransaction20.InTransaction then
DM.IBTransaction20.StartTransaction;

end;

procedure TDM.IBDataSetMatAfterPost(DataSet: TDataSet);
begin
if DM.IBTransaction20.InTransaction then
DM.IBTransaction20.CommitRetaining;

end;

procedure TDM.IBDataSetMatAfterDelete(DataSet: TDataSet);
begin
if DM.IBTransaction20.InTransaction then
DM.IBTransaction20.CommitRetaining;

end;

procedure TDM.IBDataSetMatAfterCancel(DataSet: TDataSet);
begin
if DM.IBTransaction20.InTransaction then
DM.IBTransaction20.RollbackRetaining;

end;

procedure TDM.IBDataSetMatAfterInsert(DataSet: TDataSet);
begin
DM.IBDataSetMatIDCLI.Value:=DM.IBDataSetClientiCLI_NO.AsInteger;
DM.IBDataSetMatDATAINTRO.Value:=now;
dm.IBDataSetMatPAYMENTWAY.Value:='DA PAGARE';
DM.IBDatasetAcqQTA.Value:=1;
end;

procedure TDM.IBDataSetMatPREZZO_PUBSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetMatBeforePost(DataSet: TDataSet);
begin
if DM.IBDataSetMatPAYMENTWAY.AsString = 'DA PAGARE' then
begin
DM.IBDatasetAcq.Insert;
DM.IBDatasetAcqCLI_NO.Value:=DM.IBDataSetMatIDCLI.Value;
DM.IBDatasetAcqTIPOPRODOTTO.Value:='MATASSA';
DM.IBDataSetAcqBRAND.Value:=DM.IBDataSetMatBRAND.Value;
DM.IBDatasetAcqDESCRIZIONE.Value:=DM.IBDataSetMatDESCRIZIONE.Value;
DM.IBDatasetAcqBARCODEART.Value:=dm.IBDataSetMatEANCODEART.Value;
DM.IBDatasetAcqDATAINTRO.Value:=now;
DM.IBDatasetAcqPREZZOPUB.Value:=DM.IBDataSetMatPREZZO_PUB.Value;
DM.IBDatasetAcqQTA.Value:=1;
DM.IBDatasetAcqTAGLIA.Value:=DM.IBDataSetMatCALIBRO.Value;
DM.IBDatasetAcq.Post;
end;

end;

procedure TDM.IBDatasetAcqTIPOPAGAMMATASSAChange(Sender: TField);
begin
if Sender.Value<>'DA PAGARE' then
begin
DM.IBDatasetAcqDATASALDO.Value:=now;
DM.IBDatasetAcqDATAULTIMAMOD.Value:=now;
end
else
begin
DM.IBDatasetAcqDATASALDO.Clear;
DM.IBDatasetAcqDATAULTIMAMOD.Value:=now;
end;
end;

procedure TDM.DSIncordDataChange(Sender: TObject; Field: TField);
begin
//tennismng.Edit6.Visible:=DSIncord.State in [dsBrowse];
//tennismng.Edit7.Visible:=DSIncord.State in [dsBrowse];


Tennismng.groupbox13.enabled:=(DSIncord.State in [dsEdit,dsInsert]) and (not DM.IBDataSetIncord.IsEmpty);
Tennismng.BitBtn30.Enabled:=DSIncord.State in [dsBrowse];
Tennismng.BitBtn2.Enabled:=(DSIncord.State in [dsEdit,dsInsert]) and (not DM.IBDataSetIncord.IsEmpty);
//if (DM.IBDataSetIncordDATASALDO.IsNull)and(DM.IBDataSetIncordTOTALE.Value>0) then
if not DM.IBDataSetIncord.IsEmpty then
Tennismng.BitBtn14.Enabled:=DSIncord.State in [dsBrowse]
else
Tennismng.BitBtn14.Enabled:=false;
//else
//Tennismng.BitBtn14.Enabled:=false;

Tennismng.BitBtn25.Enabled:=(DSIncord.State in [dsBrowse]) and (not DM.IBDataSetIncord.IsEmpty);
Tennismng.BitBtn26.Enabled:=DSIncord.State in [dsEdit,dsInsert];
Tennismng.BitBtn27.Enabled:=not DM.IBDataSetIncord.IsEmpty;
Tennismng.BitBtn1.Enabled:=not DM.IBDataSetIncord.IsEmpty;

if DM.IBDataSetIncordDATASALDO.IsNull then
  tennismng.BitBtn1.Caption:='PAGATO'
else
 tennismng.BitBtn1.Caption:='RIPRISTINA';
end;

procedure TDM.IBDataSetIcordAfterInsert(DataSet: TDataSet);
var tmpQuery:TIBQuery;
begin
//AGGIUNGERE QUI 03/05/15
DM.IBDataSetIncordART_NO.Value:=DM.IBDataSetArticoloART_NO.AsInteger;
DM.IBDataSetIncordDATAINSERT.Value:=now;
DM.IBDataSetIncordEANCODE.AsString:=Ean39Gen2(DM.IBDataSetParamPREF_INC_NO.AsString,DM.IBDataSetIncordINC_NO.AsString);
DM.IBDataSetIncordDATARICCONS.Value:=now+DM.IBDataSetParamDAYWORKREADY.AsInteger;
DM.IBDataSetIncordCOSTO_INCORD.Value:=0;
DM.IBDataSetIncordCOSTOGRIP.Value:=0;
DM.IBDataSetIncordCOSTOPROTEZ.Value:=0;
DM.IBDataSetIncordCOSTOPIOMB.Value:=0;
DM.IBDataSetIncordCOSTOMANICO.Value:=0;
DM.IBDataSetIncordCOSTOEXTRA.Value:=0;
DM.IBDataSetIncordCOSTOANTIBOUNCHE.Value:=0;
DM.IBDataSetIncordSCONTO.Value:=0;
DM.IBDataSetIncordSUBTOTALE.Value:=0;
DM.IBDataSetIncordTOTALE.Value:=0;
DM.IBDataSetIncordCOSTOOVERGRIP.Value:=0;
DM.IBDataSetIncordCOSTOSILICONE.Value:=0;
DM.IBDataSetIncordSCONTO.Value:=0;
DM.IBDataSetIncordTIPOPAGAMENTO.Value:='DA PAGARE';
DM.IBDataSetIncordTENSORIZ.Value:=DM.IBDataSetArticoloTENSH.Value;
DM.IBDataSetIncordTENSVERT.Value:=DM.IBDataSetArticoloTENSV.Value;
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.Transaction:=DM.IBTransaction21;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT COUNT(*) AS NOINC FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
begin
//tennismng.Label35.Caption:=floattostr(frac((TmpQuery.FieldByName('NoInc').AsInteger+1)/DM.IBDataSetLocalParamINCORDOMAGGIO.AsInteger));
if (frac((TmpQuery.FieldByName('NoInc').AsInteger+1)/DM.IBDataSetLocalParamINCORDOMAGGIO.AsInteger)=0) AND (DM.IBDataSetIncord.State=DsInsert) then
begin
if MessageDlg('INCORDATURA OMAGGIO CONFERMI?',mtError, mbOkCancel, 0) = 1 then
 begin
 DM.IBDataSetIncordSCONTO.Value:=100;
 DM.IBDataSetIncordTIPOPAGAMENTO.Value:='OMAGGIO';
 dm.IBDataSetIncordDATASALDO.Value:=Now;
 dm.IBDataSetIncordMOTIVOINCAZERO.Value:=DM.IBDataSetLocalParamINCORDOMAGGIO.AsString+'a Incordatura Omaggio';
 end
 else
 begin
 DM.IBDataSetIncordTIPOPAGAMENTO.Value:='PAGATO';
 dm.IBDataSetIncordDATASALDO.Value:=Now;
 end;
end;
end;
TmpQuery.Free;
DataRicInc.showmodal;
tennismng.DBEdit34.SetFocus;
end;

procedure TDM.IBDataSetIncordAfterCancel(DataSet: TDataSet);
begin
if DM.IBTransaction21.InTransaction then
Dm.IBTransaction21.Rollbackretaining;

end;

procedure TDM.IBDataSetIncordAfterDelete(DataSet: TDataSet);
var tmpquery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.SQL.Clear;
if DM.IBTransaction21.InTransaction then
DM.IBTransaction21.CommitRetaining;
TmpQuery.Transaction:=DM.IBTransaction21;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT COUNT(*) AS NOINC FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
tennismng.Edit14.Text:=TmpQuery.Fields.fieldbyname('NOINC').asstring
else
tennismng.Edit14.Text:='0';
TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT FIRST 1 DATAINSERT FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" ORDER BY DATAINSERT DESC');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
tennismng.Edit15.Text:=TmpQuery.Fields.fieldbyname('DATAINSERT').asstring
else
tennismng.Edit15.Text:='MAI';
end;

procedure TDM.IBDataSetIncordAfterPost(DataSet: TDataSet);
var tmpquery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
if DM.IBTransaction21.InTransaction then
DM.IBTransaction21.CommitRetaining;
if (not DM.IBDataSetIncord.IsEmpty) and (not DM.IBDataSetIncordID_MATVERT.IsNull) then
begin
//tmpQuery:=TIBQuery.Create(nil);
//TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT CLI_NO, ACQ_NO, BRAND, DESCRIZIONE, TAGLIA, SEZIONE FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATVERT.AsString+'" AND (TIPOPRODOTTO = "MATASSA") ORDER BY BRAND');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
begin
//tennismng.Edit6.text:=tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' '+tmpQuery.fieldbyname('TAGLIA').AsString+' '+tmpQuery.fieldbyname('SEZIONE').AsString+' - '+tmpQuery.fieldbyname('ACQ_NO').AsString+' >'+tmpQuery.fieldbyname('CLI_NO').AsString;
//if copy(tennismng.Edit6.Text,Pos('>',tennismng.edit6.text)+1,length(tennismng.Edit6.text))='1' then
//tennismng.Edit6.Color:=clred
//else
//tennismng.Edit6.Color:=clLime;
end;
TmpQuery.Close;
//TmpQuery.Free;
end
else
//tennismng.Edit6.clear;
if (not DM.IBDataSetIncord.IsEmpty) and (not DM.IBDataSetIncordID_MATHOR.IsNull) then
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT CLI_NO, ACQ_NO, BRAND, DESCRIZIONE, TAGLIA, SEZIONE FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATHOR.AsString+'" AND (TIPOPRODOTTO = "MATASSA") ORDER BY BRAND');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
begin
//tennismng.Edit7.Text:=tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' '+tmpQuery.fieldbyname('TAGLIA').AsString+' '+tmpQuery.fieldbyname('SEZIONE').AsString+' - '+tmpQuery.fieldbyname('ACQ_NO').AsString+' >'+tmpQuery.fieldbyname('CLI_NO').AsString;
//if copy(tennismng.Edit7.Text,Pos('>',tennismng.edit7.text)+1,length(tennismng.Edit7.text))='1' then
//tennismng.Edit7.Color:=clred
//else
//tennismng.Edit7.Color:=clLime;
end;
TmpQuery.Close;
end
else
//tennismng.Edit7.clear;

TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT COUNT(*) AS NOINC FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
tennismng.Edit14.Text:=TmpQuery.Fields.fieldbyname('NOINC').asstring
else
tennismng.Edit14.Text:='0';
TmpQuery.Close;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT FIRST 1 DATAINSERT FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'" ORDER BY DATAINSERT DESC');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
tennismng.Edit15.Text:=TmpQuery.Fields.fieldbyname('DATAINSERT').asstring
else
tennismng.Edit15.Text:='MAI';
TmpQuery.Free;
end;

procedure TDM.IBDataSetIncordBeforeInsert(DataSet: TDataSet);
begin
if not DM.IBTransaction21.InTransaction then
DM.IBTransaction21.StartTransaction;

end;

procedure TDM.IBDataSetIncordBeforeEdit(DataSet: TDataSet);
begin
if not DM.IBTransaction21.InTransaction then
DM.IBTransaction21.StartTransaction;

end;

procedure TDM.IBDataSetIncordBeforeDelete(DataSet: TDataSet);
begin
if not DM.IBTransaction21.InTransaction then
DM.IBTransaction21.StartTransaction;

end;

procedure TDM.IBDataSetIncordBeforePost(DataSet: TDataSet);
//var tmpQuery:TIBQuery;
begin
dm.IBDataSetIncordDATAULTIMOD.Value:=now;
//tmpQuery:=TIBQuery.Create(nil);
//TmpQuery.Database:=DM.IBDatabase1;
//TmpQuery.SQL.Clear;
//TmpQuery.SQL.Add('SELECT COUNT(*) AS NOINC FROM INCORDATURE JOIN ARTICOLO ON INCORDATURE.ART_NO=ARTICOLO.ART_NO WHERE ARTICOLO.CLI_NO="'+DM.IBDataSetClientiCLI_NO.AsString+'"');
//TmpQuery.Open;
//If not TmpQuery.IsEmpty then
//begin
//if (frac(TmpQuery.FieldByName('NoInc').AsInteger/DM.IBDataSetLocalParamINCORDOMAGGIO.AsInteger)=0) AND (dm.IBDataSetIncordMOTIVOINCAZERO.Value<>'') AND (DM.IBDataSetIncord.State=DsInsert) then
//begin
//if MessageDlg('INCORDATURA OMAGGIO CONFERMI?',mtError, mbOkCancel, 0) = 1 then
// begin
// DM.IBDataSetIncordSCONTO.Value:=100;
// DM.IBDataSetIncordTIPOPAGAMENTO.Value:='OMAGGIO';
// dm.IBDataSetIncordDATASALDO.Value:=Now;
// dm.IBDataSetIncordMOTIVOINCAZERO.Value:=DM.IBDataSetLocalParamINCORDOMAGGIO.AsString+'a Incordatura Omaggio';
// end
// else
// begin
// DM.IBDataSetIncordTIPOPAGAMENTO.Value:='PAGATO';
// dm.IBDataSetIncordDATASALDO.Value:=Now;
// end;
//end;
//end;
//TmpQuery.Free;
if (DM.IBDataSetIncordTOTALE.Value = 0) and (DM.IBDataSetIncordMOTIVOINCAZERO.IsNull)  then
begin
     showmessage('SCRIVERE UN MOTIVO PER GIUSTIFICARE UN TOTALE A €.0');
     tennismng.label131.visible:=true;
     tennismng.DBmemo4.visible:=true;
     tennismng.Dbmemo4.SetFocus;
     abort;
end;

  //DM.IBDataSetIncordEANCODE.AsString:=Ean39Gen2(DM.IBDataSetParamPREF_INC_NO.AsString,DM.IBDataSetIncordINC_NO.AsString);
end;

procedure TDM.IBDataSetIncordAfterScroll(DataSet: TDataSet);
var tmpQuery:TIBQuery;
begin
 tennismng.SpinEdit1.Text:=inttostr(hourof(DM.IBDataSetIncordDATARICCONS.AsDateTime));
 tennismng.SpinEdit2.Text:=inttostr(minuteof(DM.IBDataSetIncordDATARICCONS.AsDateTime));

DM.IBDataSetArticolo.Close;
DM.IBDataSetArticolo.SelectSQL.Clear;
DM.IBDataSetArticolo.SelectSQL.Add('SELECT * FROM ARTICOLO WHERE ART_NO='+dm.IBDataSetIncordART_NO.AsString);
DM.IBDataSetArticolo.Open;

 if (not DM.IBDataSetIncord.IsEmpty) and (not DM.IBDataSetIncordID_MATVERT.IsNull) then
begin
tmpQuery:=TIBQuery.Create(nil);
TmpQuery.Database:=DM.IBDatabase1;
TmpQuery.SQL.Clear;
TmpQuery.SQL.Add('SELECT BRAND, DESCRIZIONE, TAGLIA FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATVERT.AsString+'"');
TmpQuery.Open;
If not TmpQuery.IsEmpty then
tennismng.Edit6.text:=tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' '+tmpQuery.fieldbyname('TAGLIA').AsString
else
tennismng.Edit6.Clear;
TmpQuery.Close;
TmpQuery.Free;
end
else
tennismng.Edit6.clear;

if (not DM.IBDataSetIncord.IsEmpty) and (not DM.IBDataSetIncordID_MATHOR.IsNull) then
begin
 tmpQuery:=TIBQuery.Create(nil);
 TmpQuery.Database:=DM.IBDatabase1;
 TmpQuery.SQL.Clear;
 TmpQuery.SQL.Add('SELECT BRAND, DESCRIZIONE, TAGLIA FROM ACQUISTI WHERE ACQ_NO="'+dm.IBDataSetIncordID_MATHOR.AsString+'"');
 TmpQuery.Open;
  If not TmpQuery.IsEmpty then
   tennismng.Edit7.Text:=tmpQuery.fieldbyname('BRAND').AsString+' '+tmpQuery.fieldbyname('DESCRIZIONE').AsString+' '+tmpQuery.fieldbyname('TAGLIA').AsString
  else
   tennismng.Edit7.Clear;
 TmpQuery.Close;
 TmpQuery.Free;
end
 else
tennismng.Edit7.clear;


if (DM.IBDataSetIncordTOTALE.Value=0) and (DSincord.State in [dsbrowse]) and (not DM.IBDataSetIncordMOTIVOINCAZERO.IsNull)  then
begin
tennismng.DBMemo4.Visible:=true;
tennismng.Label131.Visible:=true;
end
else
begin
tennismng.DBMemo4.Visible:=false;
tennismng.Label131.Visible:=false;
end;
end;

procedure TDM.IBDataSetIncordCOSTO_INCORDSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));
end;

procedure TDM.IBDataSetIncordCalcFields(DataSet: TDataSet);
begin
DM.IBDataSetIncordSUBTOTALE.Value:=DM.IBDataSetIncordCOSTO_INCORD.Value+DM.IBDataSetIncordCOSTOGRIP.Value+DM.IBDataSetIncordCOSTOPROTEZ.Value+DM.IBDataSetIncordCOSTOPIOMB.Value+DM.IBDataSetIncordCOSTOMANICO.Value+DM.IBDataSetIncordCOSTOEXTRA.Value+DM.IBDataSetIncordCOSTOANTIBOUNCHE.Value;
if not ((DM.IBDataSetIncordSCONTO.IsNull) or (DM.IBDataSetIncordSCONTO.Value=0)) then
DM.IBDataSetIncordTOTALE.Value:=DM.IBDataSetIncordSUBTOTALE.Value-(DM.IBDataSetIncordSUBTOTALE.Value*dm.IBDataSetincordSCONTO.Value/100)
else
DM.IBDataSetIncordTOTALE.Value:=DM.IBDataSetIncordSUBTOTALE.Value;
DM.IBDataSetIncordSALDO.Value:=DM.IBDataSetIncordTOTALE.Value-DM.IBDataSetIncordACCONTO.Value;




end;

procedure TDM.IBDataSetIncordSCONTOSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(trimleft(leftstr(text,3)));
end;

procedure TDM.IBDataSetIncordCOSTOGRIPSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));
end;

procedure TDM.IBDataSetIncordCOSTOPROTEZSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordCOSTOPIOMBSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordCOSTOMANICOSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordCOSTOEXTRASetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordSUBTOTALESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordTOTALESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordCOSTOANTIBOUNCHESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordACCONTOSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordCOSTOOVERGRIPSetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordCOSTOSILICONESetText(Sender: TField;
  const Text: String);
begin
Sender.AsFloat:=strtofloat(rightstr(text,7));

end;

procedure TDM.IBDataSetIncordTOTALEChange(Sender: TField);
begin
if (sender.Value=0) then
begin
DM.IBDataSetIncord.AutoCalcFields:=false;
//tennismng.label131.visible:=true;
//tennismng.DBmemo4.visible:=true;
tennismng.BitBtn2.Enabled:=false;
//tennismng.Dbmemo4.SetFocus;
DM.IBDataSetIncordDATASALDO.Value:=now;
tennismng.DBEdit76.ReadOnly:=true;
DM.IBDataSetIncordACCONTO.Value:=0;
DM.IBDataSetIncord.AutoCalcFields:=true;
end
else
begin
DM.IBDataSetIncord.AutoCalcFields:=false;
DM.IBDataSetIncordMOTIVOINCAZERO.Clear;
//tennismng.label131.visible:=false;
//tennismng.DBmemo4.visible:=false;
tennismng.BitBtn2.Enabled:=true;
DM.IBDataSetIncordDATASALDO.Clear;
tennismng.DBEdit76.ReadOnly:=false;
DM.IBDataSetIncord.AutoCalcFields:=true;
end

end;

procedure TDM.IBDataSetIncordID_MATVERTChange(Sender: TField);
var tmpQuery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
tmpquery.Database:=DM.IBDatabase1;
tmpquery.Transaction:=DM.ibtransaction21;
tmpQuery.SQL.Clear;
tmpQuery.SQL.Add('SELECT BARCODEART FROM ACQUISTI WHERE ACQ_NO="'+sender.AsString+'"');
tmpQuery.Open;
if not tmpQuery.IsEmpty then
DM.IBDataSetIncordEANCODEMATH.Value:=tmpQuery.fieldbyname('BARCODEART').asstring
else
DM.IBDataSetIncordEANCODEMATH.Clear;
tmpQuery.Close;
tmpQuery.Free;
end;

procedure TDM.IBDataSetIncordID_MATHORChange(Sender: TField);
var tmpQuery:TIBQuery;
begin
tmpQuery:=TIBQuery.Create(nil);
tmpquery.Database:=DM.IBDatabase1;
tmpquery.Transaction:=DM.ibtransaction21;
tmpQuery.SQL.Clear;
tmpQuery.SQL.Add('SELECT BARCODEART FROM ACQUISTI WHERE ACQ_NO="'+sender.AsString+'"');
tmpQuery.Open;
if not tmpQuery.IsEmpty then
DM.IBDataSetIncordEANCODEMATO.Value:=tmpQuery.fieldbyname('BARCODEART').asstring
else
DM.IBDataSetIncordEANCODEMATO.Clear;
tmpQuery.Close;
tmpQuery.Free;
end;

procedure TDM.IBDatasetAcqAfterScroll(DataSet: TDataSet);
var tmpIbQuery:TIBQuery;
incord:real;
begin
tmpIbQuery:=TIBQuery.Create(nil);
tmpIBQuery.Database:=DM.IBDatabase1;
tmpIBQuery.Transaction:=DM.IBTransaction15;
tmpIBQuery.SQL.add('SELECT count(*) FROM INCORDATURE JOIN ACQUISTI ON ID_MATVERT=ACQ_NO WHERE (TIPOPRODOTTO="MATASSA") AND (ACQ_NO="'+dm.IBDatasetAcqACQ_NO.AsString+'")');
tmpIBQuery.Open;
if not((tmpIBQuery.IsEmpty) or (tmpIBQuery.Fields.Fields[0].AsInteger=0)) then
incord:=tmpIBQuery.Fields.Fields[0].AsInteger
else
incord:=0;
tmpIBQuery.Close;
tmpIBQuery.SQL.Clear;
tmpIBQuery.SQL.add('SELECT count(*) FROM INCORDATURE JOIN ACQUISTI ON ID_MATHOR=ACQ_NO WHERE (TIPOPRODOTTO="MATASSA") AND (ACQ_NO="'+dm.IBDatasetAcqACQ_NO.AsString+'")');
tmpIBQuery.Open;
if not((tmpIBQuery.IsEmpty) or (tmpIBQuery.Fields.Fields[0].AsInteger=0)) then
incord:=incord+tmpIBQuery.Fields.Fields[0].AsInteger
else
incord:=0;
incord:=incord/2;
Tennismng.Edit8.Text:=floattostr(incord);
end;


procedure TDM.IBDataSetIncordOVERGRIPChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit68.Enabled:=true
else
Tennismng.DBEdit68.Enabled:=false;
end;

procedure TDM.IBDataSetIncordEANGRIPChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit68.Enabled:=true
else
Tennismng.DBEdit68.Enabled:=false;

end;

procedure TDM.IBDataSetIncordEANMANICOChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit73.Enabled:=true
else
Tennismng.DBEdit73.Enabled:=false;

end;

procedure TDM.IBDataSetIncordMANICOChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit73.Enabled:=true
else
Tennismng.DBEdit73.Enabled:=false;

end;

procedure TDM.IBDataSetIncordEANANTIBOUNCHEChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit71.Enabled:=true
else
Tennismng.DBEdit71.Enabled:=false;

end;

procedure TDM.IBDataSetIncordANTIBOUNCHEChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit71.Enabled:=true
else
Tennismng.DBEdit71.Enabled:=false;

end;

procedure TDM.IBDataSetIncordSILICONEMANICOChange(Sender: TField);
begin
if Sender.Value=1 then
Tennismng.DBEdit80.Enabled:=true
else
Tennismng.DBEdit80.Enabled:=false;

end;

procedure TDM.IBDataSetIncordEANPIOMBOChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit70.Enabled:=true
else
Tennismng.DBEdit70.Enabled:=false;

end;

procedure TDM.IBDataSetIncordPIOMBPOSIZChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit70.Enabled:=true
else
Tennismng.DBEdit70.Enabled:=false;

end;

procedure TDM.IBDataSetIncordEANNASTROChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit69.Enabled:=true
else
Tennismng.DBEdit69.Enabled:=false;

end;

procedure TDM.IBDataSetIncordPROTEZIONETESTAChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit69.Enabled:=true
else
Tennismng.DBEdit69.Enabled:=false;

end;

procedure TDM.IBDataSetIncordLAVORIEXTRAChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit74.Enabled:=true
else
Tennismng.DBEdit74.Enabled:=false;

end;

procedure TDM.IBDataSetIncordEANOVERGRIPChange(Sender: TField);
begin
if not(Sender.Value=NULL) then
Tennismng.DBEdit68.Enabled:=true
else
Tennismng.DBEdit68.Enabled:=false;

end;

procedure TDM.IBDataSetClientiEMAILValidate(Sender: TField);
begin
//if menu.ValidateEmail(Sender.Text)=false then
//raise Exception.Create('Email non valida');
end;






procedure TDM.IBDataSetScheduleAfterRefresh(DataSet: TDataSet);
begin
menu.TabSheet3Show(nil);
end;

procedure TDM.IBDataSetClientiAfterOpen(DataSet: TDataSet);
begin
if IBDatasetclienti.IsEmpty then
begin
//Rentalcust.BitBtn5.Enabled:=true;
//Rentalcust.BitBtn4.Enabled:=false;
end
else
begin
//Rentalcust.BitBtn5.Enabled:=false;
//Rentalcust.BitBtn4.Enabled:=true;
end;
if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
begin
nolo.Menu.image1.tag:=1;
nolo.menu.LoadJpgToImageBmp(nolo.menu.image1,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg');
end
else
nolo.Menu.image1.tag:=0;

if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
begin
nolo.Menu.image4.tag:=1;
nolo.menu.LoadJpgToImageBmp(nolo.menu.image4,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg');
end
else
nolo.Menu.image4.tag:=0;



end;

procedure TDM.IBDataSetClientiAfterScroll(DataSet: TDataSet);
begin
if not LockAfterScroll then
begin
if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg') then
begin
nolo.Menu.image1.tag:=1;
menu.LoadJpgToImageBmp(menu.image1,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-F.jpg');
if((not DM.IBDataSetLocalParamCAMERA.IsNull) and (not DM.IBDataSetLocalParamCAMERAID.IsNull) and (not DM.IBDataSetLocalParamDOCIMAGESAVEPATH.IsNull)) then
begin
menu.BitBtn38.enabled:=true;
menu.bitbtn3.enabled:=true;
menu.bitbtn22.enabled:=true;
end;
end
else
begin
nolo.Menu.image1.tag:=0;
//menu.image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'annulla.bmp' );

menu.image1.Picture.LoadFromFile(AppDataPath+'annulla.bmp' );

if((not DM.IBDataSetLocalParamCAMERA.IsNull) and (not DM.IBDataSetLocalParamCAMERAID.IsNull) and (not DM.IBDataSetLocalParamDOCIMAGESAVEPATH.IsNull)) then
begin
menu.Bitbtn38.enabled:=false;
menu.bitbtn3.enabled:=false;
menu.bitbtn22.enabled:=false;
end;
end;


if fileexists(DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg') then
begin
nolo.Menu.image4.tag:=1;
menu.LoadJpgToImageBmp(menu.image4,DM.IBDataSetLocalParamDOCIMAGESAVEPATH.AsString+'\Docu_'+DM.IBDataSetClientiCLI_NO.AsString+'-R.jpg');
if((not DM.IBDataSetLocalParamCAMERA.IsNull) and (not DM.IBDataSetLocalParamCAMERAID.IsNull) and (not DM.IBDataSetLocalParamDOCIMAGESAVEPATH.IsNull)) then
begin
//menu.BitBtn38.enabled:=true;
//menu.bitbtn3.enabled:=true;
//menu.bitbtn22.enabled:=true;
end;
end
else
begin
nolo.Menu.image4.tag:=0;
//menu.image4.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'annulla.bmp' );
menu.image4.Picture.LoadFromFile(AppDataPath+'annulla.bmp' );

if((not DM.IBDataSetLocalParamCAMERA.IsNull) and (not DM.IBDataSetLocalParamCAMERAID.IsNull) and (not DM.IBDataSetLocalParamDOCIMAGESAVEPATH.IsNull)) then
begin
//menu.Bitbtn38.enabled:=false;
//menu.bitbtn3.enabled:=false;
//menu.bitbtn22.enabled:=false;
end;
end;
//menu.image1.Picture.LoadFromFile('E:\Noleggio_Web_2021_V1\annulla.bmp');
if (DM.IBDataSetClientiDATAVALID_CELL.IsNull) or (DM.IBDataSetClientiDATAVALID_CELL.AsString='') then
nolo.Menu.DBText3.Visible:=false
else
nolo.Menu.DBText3.Visible:=true;
if (DM.IBDataSetClientiDATAVALID_MAIL.IsNull) or (DM.IBDataSetClientiDATAVALID_MAIL.AsString='') then
nolo.Menu.DBText5.Visible:=false
else
nolo.Menu.DBText5.Visible:=true;
end;

end;

procedure TDM.IBDataSetRipPREZZOChange(Sender: TField);
begin
if (sender.NewValue>0) and (DSRiparazione.State in [dsEdit,dsInsert])  then
begin
//DM.IBDataSetRipPREZZO.Value:=0;
ripmodule.DBEdit18.Color:=clRed;
ripmodule.label29.Color:=clRed;
ripmodule.label29.caption:='NON PAGATO';
DM.IBDataSetRipTIPOPAGAM.Value:='PAGARE A CONSEGNA';
end;
end;

procedure TDM.IBDataSetRipBeforeScroll(DataSet: TDataSet);
begin
//dM.IBDataSetRip.DisableControls;
end;

procedure TDM.IBDatabase1BeforeDisconnect(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ibdatabase1.TransactionCount - 1 do
   begin
      if ibdatabase1.Transactions[i].Active then
      begin
        try
          ibdatabase1.Transactions[i].Commit; // Conferma le modifiche
        except
          ibdatabase1.Transactions[i].Rollback; // Annulla in caso di errore
        end;
      end;
  end;
end;
  
procedure TDM.IBDatabase2BeforeDisconnect(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ibdatabase2.TransactionCount - 1 do
   begin
      if ibdatabase2.Transactions[i].Active then
      begin
        try
          ibdatabase2.Transactions[i].Commit; // Conferma le modifiche
        except
          ibdatabase2.Transactions[i].Rollback; // Annulla in caso di errore
        end;
      end;
  end;
end;

end.
