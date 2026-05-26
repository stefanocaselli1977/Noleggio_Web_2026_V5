program NoloSoft;

{%ToDo 'NoloSoft.todo'}

uses
  Forms,
  SysUtils,
  Windows,
  SoftHire in 'SoftHire.pas' {DM: TDataModule},
  LogInDatabase in 'LogInDatabase.pas' {PasswordDlg},
  nolo in 'nolo.pas' {Menu},
  ViewCam in 'ViewCam.pas' {ViewCamSnap},
  Ean39CodeGen in 'Ean39CodeGen.pas',
  GesTab in 'GesTab.pas' {GestTab},
  Pickdate in 'Pickdate.pas' {BrDateForm},
  Account in 'Account.pas' {ACCCONV},
  DettArticolo in 'DettArticolo.pas' {DettArt},
  Qrep3 in 'Qrep3.pas' {ReportOp},
  RepCli in 'RepCli.pas' {RepTesCli},
  RepArti in 'RepArti.pas' {RepArt},
  SchCli in 'SchCli.pas' {ScheCli},
  RepSche in 'RepSche.pas' {RepSchedule},
  RepEtic in 'RepEtic.pas' {ETICHETTE},
  RepList in 'RepList.pas' {REPLISTINO},
  RepOp in 'RepOp.pas' {OPERATORI},
  ZFact in 'ZFact.pas' {CalcZFact},
  RepZ in 'RepZ.pas' {RepZFact: TQuickRep},
  RepArtGen in 'RepArtGen.pas' {RepArtGeneral},
  RepCv in 'RepCv.pas' {RepContoV},
  SceCliNew in 'SceCliNew.pas' {NewSchCli},
  EAN128 in 'EAN128.pas',
  PriceArt in 'PriceArt.pas' {GestPriceArt},
  TestOPNUnit in 'TestOPNUnit.pas' {OpnTest},
  Riparazione in 'Riparazione.pas' {Ripmodule},
  RepBoarderOrd in 'RepBoarderOrd.pas' {RipBrdOrd},
  EticRip in 'EticRip.pas' {Etichetta},
  EtiAttSnow in 'EtiAttSnow.pas' {EticAttacSnow},
  TennisModule in 'TennisModule.pas' {TennisMng},
  AllertSched in 'AllertSched.pas' {AllertScheda},
  ReportRiparaz in 'ReportRiparaz.pas' {RepLabData},
  RepAcquistoTennis in 'RepAcquistoTennis.pas' {QuickReport1: TQuickRep},
  UnitEtiIncor in 'UnitEtiIncor.pas' {EtiIncord},
  RicMat in 'RicMat.pas' {RicMatasse},
  DataIncRic in 'DataIncRic.pas' {DataRicInc},
  EASendMailObjLib_TLB in 'EASendMailObjLib_TLB.pas',
  AvailabelItem in 'AvailabelItem.pas' {AvailableItem},
  ThreadEmail in 'ThreadEmail.pas',
  Rfid_trial in 'Rfid_trial.pas' {RfidTest},
  frontend in 'frontend.pas' {Logopanel},
  CliForm in 'CliForm.pas' {RentalCust},
  clienteform in 'clienteform.pas' {CLIFORMNEW},
  dbgridnew in 'dbgridnew.pas',
  Inscap in 'Inscap.pas' {InsertCap},
  webcamunit in 'webcamunit.pas' {WebCam},
  docu_view in 'docu_view.pas' {Doc_view},
  check_rip_payed in 'check_rip_payed.pas' {Checkrippayed},
  EtichettaRip_new in 'EtichettaRip_new.pas' {Etichetta_New},
  EtichettaRip_new_snow in 'EtichettaRip_new_snow.pas' {Etichette_new_snow},
  EtichettaRip_New_Scarp in 'EtichettaRip_New_Scarp.pas' {Etichetta_new_Scarp},
  WebCam_new25 in 'WebCam_new25.pas' {WebCam_25},
  ViewCam_show in 'ViewCam_show.pas' {VideoForm},
  uAppPaths in 'uAppPaths.pas',
  otpcheck in 'otpcheck.pas' {checkotp},
  api in 'api.pas',
  NewSchedRent in 'NewSchedRent.pas' {New_Sched};

//  LogInDatabase in 'LogInDatabase.pas' {PasswordDlg};

//  ViewCam in 'ViewCam.pas' {ViewCamSnap};

{$R *.res}

begin
try
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(TMenu, Menu);
  Application.CreateForm(TGestTab, GestTab);
  Application.CreateForm(TBrDateForm, BrDateForm);
  Application.CreateForm(TACCCONV, ACCCONV);
  Application.CreateForm(TReportOp, ReportOp);
  Application.CreateForm(TRepTesCli, RepTesCli);
  Application.CreateForm(TRepArt, RepArt);
  Application.CreateForm(TScheCli, ScheCli);
  Application.CreateForm(TRepSchedule, RepSchedule);
  Application.CreateForm(TETICHETTE, ETICHETTE);
  Application.CreateForm(TREPLISTINO, REPLISTINO);
  Application.CreateForm(TOPERATORI, OPERATORI);
  Application.CreateForm(TCalcZFact, CalcZFact);
  Application.CreateForm(TRepZFact, RepZFact);
  Application.CreateForm(TRepArtGeneral, RepArtGeneral);
  Application.CreateForm(TRepContoV, RepContoV);
  Application.CreateForm(TNewSchCli, NewSchCli);
  Application.CreateForm(TGestPriceArt, GestPriceArt);
  Application.CreateForm(TRipmodule, Ripmodule);
  Application.CreateForm(TRipBrdOrd, RipBrdOrd);
  Application.CreateForm(TEtichetta, Etichetta);
  Application.CreateForm(TEticAttacSnow, EticAttacSnow);
  Application.CreateForm(TTennisMng, TennisMng);
  Application.CreateForm(TAllertScheda, AllertScheda);
  Application.CreateForm(TRepLabData, RepLabData);
  Application.CreateForm(TQuickReport1, QuickReport1);
  Application.CreateForm(TEtiIncord, EtiIncord);
  Application.CreateForm(TRicMatasse, RicMatasse);
  Application.CreateForm(TDataRicInc, DataRicInc);
  Application.CreateForm(TAvailableItem, AvailableItem);
  Application.CreateForm(TRfidTest, RfidTest);
  Application.CreateForm(TLogopanel, Logopanel);
  Application.CreateForm(TRentalCust, RentalCust);
  Application.CreateForm(TCLIFORMNEW, CLIFORMNEW);
  Application.CreateForm(TInsertCap, InsertCap);
  Application.CreateForm(TWebCam, WebCam);
  Application.CreateForm(TDoc_view, Doc_view);
  Application.CreateForm(TCheckrippayed, Checkrippayed);
  Application.CreateForm(TEtichetta_New, Etichetta_New);
  Application.CreateForm(TEtichette_new_snow, Etichette_new_snow);
  Application.CreateForm(TEtichetta_new_Scarp, Etichetta_new_Scarp);
  Application.CreateForm(TVideoForm, VideoForm);
  Application.CreateForm(Tcheckotp, checkotp);
  Application.CreateForm(TNew_Sched, New_Sched);
  Application.Run;
  except
    on E: Exception do
      MessageBox(0, PChar(E.Message), 'Errore avvio', MB_ICONERROR);
  end;


  end.
