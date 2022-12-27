// Lux Icons v1.0.28
library lxi;

import 'package:flutter/widgets.dart';

const _fontFamily = 'LuxIcons';

/// A const wrapper for [].
class LuxIconData extends IconData {
  const LuxIconData(int codePoint) : super(codePoint, fontFamily: _fontFamily);
}

/// Lxi is a collection of icons provided by
/// [Lux Icons](https://example.com/).
class Lxi {
  getIcon(String iconName) => modulesIcons[iconName];


  Map modulesIcons = {
    'tractor': production_icon,
    'transference': transference_icon,
    'inventory': inventory_icon,
    'conference': conference_icon,
    'separation': separation_icon,
    'avaria': avaria_icon,
    'entry_transfer': entry_transfer_icon,
    'respond_request': responde_request_icon,
  };

  static const production_icon = LuxIconData(0xe800);
  static const transference_icon = LuxIconData(0xe802);
  static const inventory_icon = LuxIconData(0xe803);
  static const conference_icon = LuxIconData(0xe804);
  static const separation_icon = LuxIconData(0xe805);
  static const avaria_icon = LuxIconData(0xea09);
  static const entry_transfer_icon = LuxIconData(0xe807);
  static const responde_request_icon = LuxIconData(0xe806);
  static const Icon360 = LuxIconData(0xea01);
  static const cd = LuxIconData(0xea02);
  static const addToLibrary = LuxIconData(0xea03);
  static const advertisement = LuxIconData(0xea04);
  static const airplay = LuxIconData(0xea05);
  static const alarm = LuxIconData(0xea06);
  static const alarmChecked = LuxIconData(0xea07);
  static const alarmMinus = LuxIconData(0xea08);
  static const alarmNo = LuxIconData(0xea09);
  static const alarmPlus = LuxIconData(0xea0a);
  static const alarmSnooze = LuxIconData(0xea0b);
  static const alertCircle = LuxIconData(0xea0c);
  static const alertOctagon = LuxIconData(0xea0d);
  static const alertTriangle = LuxIconData(0xea0e);
  static const appNotification = LuxIconData(0xea0f);
  static const apps = LuxIconData(0xea10);
  static const arrowBoldBottom = LuxIconData(0xea11);
  static const arrowBoldForvard = LuxIconData(0xea12);
  static const arrowBoldForvardAll = LuxIconData(0xea13);
  static const arrowBoldLeft = LuxIconData(0xea14);
  static const arrowBoldRedo = LuxIconData(0xea15);
  static const arrowBoldReply = LuxIconData(0xea16);
  static const arrowBoldReplyAll = LuxIconData(0xea17);
  static const arrowBoldRight = LuxIconData(0xea18);
  static const arrowBoldTop = LuxIconData(0xea19);
  static const arrowBoldUndo = LuxIconData(0xea1a);
  static const arrowBottom = LuxIconData(0xea1b);
  static const arrowBottomLeft = LuxIconData(0xea1c);
  static const arrowBottomRight = LuxIconData(0xea1d);
  static const arrowForward = LuxIconData(0xea1e);
  static const arrowForwardAll = LuxIconData(0xea1f);
  static const arrowLeft = LuxIconData(0xea20);
  static const arrowLeftCurved = LuxIconData(0xea21);
  static const arrowRedo = LuxIconData(0xea22);
  static const arrowReply = LuxIconData(0xea23);
  static const arrowReplyAll = LuxIconData(0xea24);
  static const arrowRight = LuxIconData(0xea25);
  static const arrowRightCurved = LuxIconData(0xea26);
  static const arrowTop = LuxIconData(0xea27);
  static const arrowTopLeft = LuxIconData(0xea28);
  static const arrowTopRight = LuxIconData(0xea29);
  static const arrowUndo = LuxIconData(0xea2a);
  static const arrowsDiagonals = LuxIconData(0xea2b);
  static const arrowsDiagonalsBltr = LuxIconData(0xea2c);
  static const arrowsDiagonalsTlbr = LuxIconData(0xea2d);
  static const arrowsHv = LuxIconData(0xea2e);
  static const artist = LuxIconData(0xea2f);
  static const atSign = LuxIconData(0xea30);
  static const atom = LuxIconData(0xea31);
  static const avocado = LuxIconData(0xea32);
  static const bag = LuxIconData(0xea33);
  static const barChart = LuxIconData(0xea34);
  static const bascket = LuxIconData(0xea35);
  static const battery = LuxIconData(0xea36);
  static const Iconbattery100 = LuxIconData(0xea37);
  static const Iconbattery20 = LuxIconData(0xea38);
  static const Iconbattery40 = LuxIconData(0xea39);
  static const Iconbattery60 = LuxIconData(0xea3a);
  static const Iconbattery80 = LuxIconData(0xea3b);
  static const batteryCharching = LuxIconData(0xea3c);
  static const batteryNo = LuxIconData(0xea3d);
  static const behance = LuxIconData(0xea3e);
  static const bell = LuxIconData(0xea3f);
  static const bellAdd = LuxIconData(0xea40);
  static const bellAlert = LuxIconData(0xea41);
  static const bellChecked = LuxIconData(0xea42);
  static const bellMinus = LuxIconData(0xea43);
  static const bellNo = LuxIconData(0xea44);
  static const bitcoin = LuxIconData(0xea45);
  static const blockAlignBottom = LuxIconData(0xea46);
  static const blockAlignHorizontally = LuxIconData(0xea47);
  static const blockAlignLeft = LuxIconData(0xea48);
  static const blockAlignRight = LuxIconData(0xea49);
  static const blockAlignTop = LuxIconData(0xea4a);
  static const blockAlignVertically = LuxIconData(0xea4b);
  static const blockDistributeHorizontally = LuxIconData(0xea4c);
  static const blockDistributeVertically = LuxIconData(0xea4d);
  static const bluetooth = LuxIconData(0xea4e);
  static const bluetoothNo = LuxIconData(0xea4f);
  static const bone = LuxIconData(0xea50);
  static const book = LuxIconData(0xea51);
  static const bookmark = LuxIconData(0xea52);
  static const bookmarkAdd = LuxIconData(0xea53);
  static const bookmarkNo = LuxIconData(0xea54);
  static const bookmarks = LuxIconData(0xea55);
  static const box = LuxIconData(0xea56);
  static const brakePage = LuxIconData(0xea57);
  static const bread = LuxIconData(0xea58);
  static const brightnessHigh = LuxIconData(0xea59);
  static const brightnessLow = LuxIconData(0xea5a);
  static const broadcast = LuxIconData(0xea5b);
  static const broadcasting = LuxIconData(0xea5c);
  static const browser = LuxIconData(0xea5d);
  static const browserNo = LuxIconData(0xea5e);
  static const brush = LuxIconData(0xea5f);
  static const calculator = LuxIconData(0xea60);
  static const calendar = LuxIconData(0xea61);
  static const calendarChecked = LuxIconData(0xea62);
  static const calendarCreate = LuxIconData(0xea63);
  static const calendarDates = LuxIconData(0xea64);
  static const calendarDelete = LuxIconData(0xea65);
  static const calendarMinus = LuxIconData(0xea66);
  static const calendarPlus = LuxIconData(0xea67);
  static const callAdd = LuxIconData(0xea68);
  static const callCalling = LuxIconData(0xea69);
  static const callDecline = LuxIconData(0xea6a);
  static const callEnd = LuxIconData(0xea6b);
  static const callForwarded = LuxIconData(0xea6c);
  static const callHash = LuxIconData(0xea6d);
  static const callHold = LuxIconData(0xea6e);
  static const callIncoming = LuxIconData(0xea6f);
  static const callMissed = LuxIconData(0xea70);
  static const callMuted = LuxIconData(0xea71);
  static const callNo = LuxIconData(0xea72);
  static const callNumbers = LuxIconData(0xea73);
  static const callOutcoming = LuxIconData(0xea74);
  static const callPhone = LuxIconData(0xea75);
  static const callRecieved = LuxIconData(0xea76);
  static const callVoicemail = LuxIconData(0xea77);
  static const camera = LuxIconData(0xea78);
  static const cameraCreate = LuxIconData(0xea79);
  static const cameraNo = LuxIconData(0xea7a);
  static const cart = LuxIconData(0xea7b);
  static const caseIcon = LuxIconData(0xea7c);
  static const cast = LuxIconData(0xea7d);
  static const checkMark = LuxIconData(0xea7e);
  static const checkMarks = LuxIconData(0xea7f);
  static const chevronBottom = LuxIconData(0xea80);
  static const chevronLeft = LuxIconData(0xea81);
  static const chevronRight = LuxIconData(0xea82);
  static const chevronTop = LuxIconData(0xea83);
  static const chevronsBottom = LuxIconData(0xea84);
  static const chevronsLeft = LuxIconData(0xea85);
  static const chevronsRight = LuxIconData(0xea86);
  static const chevronsTop = LuxIconData(0xea87);
  static const chicken = LuxIconData(0xea88);
  static const circle = LuxIconData(0xea89);
  static const circleArrowBottom = LuxIconData(0xea8a);
  static const circleArrowBottomLeft = LuxIconData(0xea8b);
  static const circleArrowBottomRight = LuxIconData(0xea8c);
  static const circleArrowLeft = LuxIconData(0xea8d);
  static const circleArrowLeftCurved = LuxIconData(0xea8e);
  static const circleArrowRight = LuxIconData(0xea8f);
  static const circleArrowRightCurved = LuxIconData(0xea90);
  static const circleArrowTop = LuxIconData(0xea91);
  static const circleArrowTopLeft = LuxIconData(0xea92);
  static const circleArrowTopRight = LuxIconData(0xea93);
  static const circleBlock = LuxIconData(0xea94);
  static const circleChecked = LuxIconData(0xea95);
  static const circleChevronBottom = LuxIconData(0xea96);
  static const circleChevronLeft = LuxIconData(0xea97);
  static const circleChevronRight = LuxIconData(0xea98);
  static const circleChevronTop = LuxIconData(0xea99);
  static const circleChevronsBottom = LuxIconData(0xea9a);
  static const circleChevronsLeft = LuxIconData(0xea9b);
  static const circleChevronsRight = LuxIconData(0xea9c);
  static const circleChevronsTop = LuxIconData(0xea9d);
  static const circleMenu = LuxIconData(0xea9e);
  static const circleMinus = LuxIconData(0xea9f);
  static const circleMoreHorizontal = LuxIconData(0xeaa0);
  static const circleMoreVertical = LuxIconData(0xeaa1);
  static const circlePlus = LuxIconData(0xeaa2);
  static const circleStar = LuxIconData(0xeaa3);
  static const circleX = LuxIconData(0xeaa4);
  static const clearStyle = LuxIconData(0xeaa5);
  static const clipboard = LuxIconData(0xeaa6);
  static const clipboardChecked = LuxIconData(0xeaa7);
  static const clipboardDelete = LuxIconData(0xeaa8);
  static const clipboardMinus = LuxIconData(0xeaa9);
  static const clipboardPlus = LuxIconData(0xeaaa);
  static const clipboardText = LuxIconData(0xeaab);
  static const cloud = LuxIconData(0xeaac);
  static const cloudChecked = LuxIconData(0xeaad);
  static const cloudConnect = LuxIconData(0xeaae);
  static const cloudDownload = LuxIconData(0xeaaf);
  static const cloudNo = LuxIconData(0xeab0);
  static const cloudUpload = LuxIconData(0xeab1);
  static const code = LuxIconData(0xeab2);
  static const coffee = LuxIconData(0xeab3);
  static const command = LuxIconData(0xeab4);
  static const comment = LuxIconData(0xeab5);
  static const commentChecked = LuxIconData(0xeab6);
  static const commentDelete = LuxIconData(0xeab7);
  static const commentMinus = LuxIconData(0xeab8);
  static const commentPlus = LuxIconData(0xeab9);
  static const commentText = LuxIconData(0xeaba);
  static const compas = LuxIconData(0xeabb);
  static const contrast = LuxIconData(0xeabc);
  static const copy = LuxIconData(0xeabd);
  static const coupon = LuxIconData(0xeabe);
  static const creditcard = LuxIconData(0xeabf);
  static const creditcardAdd = LuxIconData(0xeac0);
  static const creditcardFace = LuxIconData(0xeac1);
  static const creditcardIncome = LuxIconData(0xeac2);
  static const creditcardNo = LuxIconData(0xeac3);
  static const creditcardOutcome = LuxIconData(0xeac4);
  static const creditcardScan = LuxIconData(0xeac5);
  static const cross = LuxIconData(0xeac6);
  static const crosshairs = LuxIconData(0xeac7);
  static const cup = LuxIconData(0xeac8);
  static const cut = LuxIconData(0xeac9);
  static const cutCoupon = LuxIconData(0xeaca);
  static const dashboard = LuxIconData(0xeacb);
  static const database = LuxIconData(0xeacc);
  static const deadline = LuxIconData(0xeacd);
  static const delete = LuxIconData(0xeace);
  static const delivery = LuxIconData(0xeacf);
  static const devices = LuxIconData(0xead0);
  static const direction = LuxIconData(0xead1);
  static const Icondirection45 = LuxIconData(0xead2);
  static const discount = LuxIconData(0xead3);
  static const download = LuxIconData(0xead4);
  static const downloadBold = LuxIconData(0xead5);
  static const dribbble = LuxIconData(0xead6);
  static const drop = LuxIconData(0xead7);
  static const editShape = LuxIconData(0xead8);
  static const egg = LuxIconData(0xead9);
  static const eject = LuxIconData(0xeada);
  static const elements = LuxIconData(0xeadb);
  static const equalizer = LuxIconData(0xeadc);
  static const ethereum = LuxIconData(0xeadd);
  static const externalLink = LuxIconData(0xeade);
  static const eye = LuxIconData(0xeadf);
  static const eyeNo = LuxIconData(0xeae0);
  static const facebook = LuxIconData(0xeae1);
  static const file = LuxIconData(0xeae2);
  static const fileChecked = LuxIconData(0xeae3);
  static const fileCode = LuxIconData(0xeae4);
  static const fileCreate = LuxIconData(0xeae5);
  static const fileDelete = LuxIconData(0xeae6);
  static const fileDownload = LuxIconData(0xeae7);
  static const fileDraft = LuxIconData(0xeae8);
  static const fileMinus = LuxIconData(0xeae9);
  static const filePlus = LuxIconData(0xeaea);
  static const fileScan = LuxIconData(0xeaeb);
  static const fileShredder = LuxIconData(0xeaec);
  static const fileText = LuxIconData(0xeaed);
  static const fileUpload = LuxIconData(0xeaee);
  static const filter = LuxIconData(0xeaef);
  static const flag = LuxIconData(0xeaf0);
  static const flame = LuxIconData(0xeaf1);
  static const flashCard = LuxIconData(0xeaf2);
  static const floppy = LuxIconData(0xeaf3);
  static const folder = LuxIconData(0xeaf4);
  static const folderArrow = LuxIconData(0xeaf5);
  static const folderChecked = LuxIconData(0xeaf6);
  static const folderCloud = LuxIconData(0xeaf7);
  static const folderCreate = LuxIconData(0xeaf8);
  static const folderDelete = LuxIconData(0xeaf9);
  static const folderMinus = LuxIconData(0xeafa);
  static const folderMusic = LuxIconData(0xeafb);
  static const folderOpened = LuxIconData(0xeafc);
  static const folderPhoto = LuxIconData(0xeafd);
  static const folderPlus = LuxIconData(0xeafe);
  static const folderZip = LuxIconData(0xeaff);
  static const form = LuxIconData(0xeb00);
  static const frame = LuxIconData(0xeb01);
  static const gift = LuxIconData(0xeb02);
  static const github = LuxIconData(0xeb03);
  static const gitlab = LuxIconData(0xeb04);
  static const glasses = LuxIconData(0xeb05);
  static const globe = LuxIconData(0xeb06);
  static const globeAlt = LuxIconData(0xeb07);
  static const globeNo = LuxIconData(0xeb08);
  static const google = LuxIconData(0xeb09);
  static const grid = LuxIconData(0xeb0a);
  static const Icongrid6 = LuxIconData(0xeb0b);
  static const IcongridCol2 = LuxIconData(0xeb0c);
  static const IcongridCol3 = LuxIconData(0xeb0d);
  static const gridDynamic = LuxIconData(0xeb0e);
  static const gridFrame = LuxIconData(0xeb0f);
  static const IcongridRow2 = LuxIconData(0xeb10);
  static const IcongridRow2Copy = LuxIconData(0xeb11);
  static const IcongridRow3 = LuxIconData(0xeb12);
  static const gridSlides = LuxIconData(0xeb13);
  static const gridSmall = LuxIconData(0xeb14);
  static const hash = LuxIconData(0xeb15);
  static const heart = LuxIconData(0xeb16);
  static const heartNo = LuxIconData(0xeb17);
  static const home = LuxIconData(0xeb18);
  static const iPad = LuxIconData(0xeb19);
  static const iPhone = LuxIconData(0xeb1a);
  static const icecream = LuxIconData(0xeb1b);
  static const iframe = LuxIconData(0xeb1c);
  static const image = LuxIconData(0xeb1d);
  static const inbox = LuxIconData(0xeb1e);
  static const infinity = LuxIconData(0xeb1f);
  static const info = LuxIconData(0xeb20);
  static const instagram = LuxIconData(0xeb21);
  static const items = LuxIconData(0xeb22);
  static const kanban = LuxIconData(0xeb23);
  static const key = LuxIconData(0xeb24);
  static const keyNo = LuxIconData(0xeb25);
  static const laptop = LuxIconData(0xeb26);
  static const laughing = LuxIconData(0xeb27);
  static const layers = LuxIconData(0xeb28);
  static const layout = LuxIconData(0xeb29);
  static const lightbulb = LuxIconData(0xeb2a);
  static const lightning = LuxIconData(0xeb2b);
  static const lightningNo = LuxIconData(0xeb2c);
  static const link = LuxIconData(0xeb2d);
  static const linkNo = LuxIconData(0xeb2e);
  static const linkedin = LuxIconData(0xeb2f);
  static const list = LuxIconData(0xeb30);
  static const listenLater = LuxIconData(0xeb31);
  static const location = LuxIconData(0xeb32);
  static const locationNo = LuxIconData(0xeb33);
  static const lock = LuxIconData(0xeb34);
  static const lockCircle = LuxIconData(0xeb35);
  static const lockNo = LuxIconData(0xeb36);
  static const luxAssignee = LuxIconData(0xeb37);
  static const luxBan = LuxIconData(0xeb38);
  static const luxBoard = LuxIconData(0xeb39);
  static const luxBussiness = LuxIconData(0xeb3a);
  static const luxCalendar = LuxIconData(0xeb3b);
  static const luxCheckCircle = LuxIconData(0xeb3c);
  static const luxCheckSquare = LuxIconData(0xeb3d);
  static const luxClock = LuxIconData(0xeb3e);
  static const luxClose = LuxIconData(0xeb3f);
  static const luxCompress = LuxIconData(0xeb40);
  static const luxCurrency = LuxIconData(0xeb41);
  static const luxCurrencyBold = LuxIconData(0xeb42);
  static const luxDiamond = LuxIconData(0xeb43);
  static const luxDone = LuxIconData(0xeb44);
  static const luxDown = LuxIconData(0xeb45);
  static const luxDragRow = LuxIconData(0xeb46);
  static const luxDuration = LuxIconData(0xeb47);
  static const luxEdit = LuxIconData(0xeb48);
  static const luxExcel = LuxIconData(0xeb49);
  static const luxExpand = LuxIconData(0xeb4a);
  static const luxExport = LuxIconData(0xeb4b);
  static const luxFilter = LuxIconData(0xeb4c);
  static const luxFlowDown = LuxIconData(0xeb4d);
  static const luxFlowSame = LuxIconData(0xeb4e);
  static const luxFluxogram = LuxIconData(0xeb4f);
  static const luxGraphic = LuxIconData(0xeb50);
  static const luxGraphics = LuxIconData(0xeb51);
  static const luxGroup = LuxIconData(0xeb52);
  static const luxMeeting = LuxIconData(0xeb53);
  static const luxMyTasks = LuxIconData(0xeb54);
  static const luxNew = LuxIconData(0xeb55);
  static const luxNumber = LuxIconData(0xeb56);
  static const luxOne = LuxIconData(0xeb57);
  static const luxOneCircle = LuxIconData(0xeb58);
  static const luxPause = LuxIconData(0xeb59);
  static const luxPdf = LuxIconData(0xeb5a);
  static const luxPlanning = LuxIconData(0xeb5b);
  static const luxPlay = LuxIconData(0xeb5c);
  static const luxProject = LuxIconData(0xeb5d);
  static const luxReport = LuxIconData(0xeb5e);
  static const luxRight = LuxIconData(0xeb5f);
  static const luxSchedule = LuxIconData(0xeb60);
  static const luxSearch = LuxIconData(0xeb61);
  static const luxSquare = LuxIconData(0xeb62);
  static const luxStar = LuxIconData(0xeb63);
  static const luxStop = LuxIconData(0xeb64);
  static const luxTarget = LuxIconData(0xeb65);
  static const luxTasksFromTeam = LuxIconData(0xeb66);
  static const luxTeams = LuxIconData(0xeb67);
  static const luxTicket = LuxIconData(0xeb68);
  static const luxTrophy = LuxIconData(0xeb69);
  static const mail = LuxIconData(0xeb6a);
  static const map = LuxIconData(0xeb6b);
  static const mapPinLocation = LuxIconData(0xeb6c);
  static const maximize = LuxIconData(0xeb6d);
  static const memoryCard = LuxIconData(0xeb6e);
  static const menu = LuxIconData(0xeb6f);
  static const menuDots = LuxIconData(0xeb70);
  static const mic = LuxIconData(0xeb71);
  static const micNo = LuxIconData(0xeb72);
  static const minimize = LuxIconData(0xeb73);
  static const minus = LuxIconData(0xeb74);
  static const minusOctagon = LuxIconData(0xeb75);
  static const mobile = LuxIconData(0xeb76);
  static const monitor = LuxIconData(0xeb77);
  static const moon = LuxIconData(0xeb78);
  static const moreHorizontal = LuxIconData(0xeb79);
  static const moreVertical = LuxIconData(0xeb7a);
  static const musicLibrary = LuxIconData(0xeb7b);
  static const musicNote = LuxIconData(0xeb7c);
  static const neutral = LuxIconData(0xeb7d);
  static const newspaper = LuxIconData(0xeb7e);
  static const note = LuxIconData(0xeb7f);
  static const noteText = LuxIconData(0xeb80);
  static const nut = LuxIconData(0xeb81);
  static const options = LuxIconData(0xeb82);
  static const padding = LuxIconData(0xeb83);
  static const panorama = LuxIconData(0xeb84);
  static const paperclip = LuxIconData(0xeb85);
  static const paperclipNo = LuxIconData(0xeb86);
  static const paypass = LuxIconData(0xeb87);
  static const peace = LuxIconData(0xeb88);
  static const pencilCreate = LuxIconData(0xeb89);
  static const pencilEdit = LuxIconData(0xeb8a);
  static const pin = LuxIconData(0xeb8b);
  static const pinAdd = LuxIconData(0xeb8c);
  static const pinNo = LuxIconData(0xeb8d);
  static const pinQuestion = LuxIconData(0xeb8e);
  static const pinRound = LuxIconData(0xeb8f);
  static const pinStart = LuxIconData(0xeb90);
  static const planet = LuxIconData(0xeb91);
  static const playerFastBack = LuxIconData(0xeb92);
  static const playerFastForward = LuxIconData(0xeb93);
  static const playerList = LuxIconData(0xeb94);
  static const playerListAdd = LuxIconData(0xeb95);
  static const playerListPlay = LuxIconData(0xeb96);
  static const playerPause = LuxIconData(0xeb97);
  static const playerPauseCircle = LuxIconData(0xeb98);
  static const playerPlay = LuxIconData(0xeb99);
  static const playerPlayCircle = LuxIconData(0xeb9a);
  static const playerPlayPause = LuxIconData(0xeb9b);
  static const playerSkipBack = LuxIconData(0xeb9c);
  static const playerSkipForward = LuxIconData(0xeb9d);
  static const playerStop = LuxIconData(0xeb9e);
  static const playerStopCircle = LuxIconData(0xeb9f);
  static const plus = LuxIconData(0xeba0);
  static const pocket = LuxIconData(0xeba1);
  static const pos = LuxIconData(0xeba2);
  static const presentation = LuxIconData(0xeba3);
  static const printer = LuxIconData(0xeba4);
  static const pulse = LuxIconData(0xeba5);
  static const question = LuxIconData(0xeba6);
  static const questionCircle = LuxIconData(0xeba7);
  static const queue = LuxIconData(0xeba8);
  static const radar = LuxIconData(0xeba9);
  static const radio = LuxIconData(0xebaa);
  static const record = LuxIconData(0xebab);
  static const refreshCcw = LuxIconData(0xebac);
  static const refreshCcwAlert = LuxIconData(0xebad);
  static const refreshCw = LuxIconData(0xebae);
  static const refreshCwAlert = LuxIconData(0xebaf);
  static const repeat = LuxIconData(0xebb0);
  static const rocket = LuxIconData(0xebb1);
  static const rotateCcw = LuxIconData(0xebb2);
  static const rotateCw = LuxIconData(0xebb3);
  static const rotateLeft = LuxIconData(0xebb4);
  static const rotateRight = LuxIconData(0xebb5);
  static const route = LuxIconData(0xebb6);
  static const ruller = LuxIconData(0xebb7);
  static const sad = LuxIconData(0xebb8);
  static const scan = LuxIconData(0xebb9);
  static const screenshot = LuxIconData(0xebba);
  static const search = LuxIconData(0xebbb);
  static const segment = LuxIconData(0xebbc);
  static const select = LuxIconData(0xebbd);
  static const selectArea = LuxIconData(0xebbe);
  static const send = LuxIconData(0xebbf);
  static const server = LuxIconData(0xebc0);
  static const settings = LuxIconData(0xebc1);
  static const share = LuxIconData(0xebc2);
  static const shareArrow = LuxIconData(0xebc3);
  static const shield = LuxIconData(0xebc4);
  static const shieldLock = LuxIconData(0xebc5);
  static const shieldNo = LuxIconData(0xebc6);
  static const shieldOk = LuxIconData(0xebc7);
  static const shocked = LuxIconData(0xebc8);
  static const shuffle = LuxIconData(0xebc9);
  static const sidebarLeft = LuxIconData(0xebca);
  static const sidebarRight = LuxIconData(0xebcb);
  static const smiled = LuxIconData(0xebcc);
  static const soundWave = LuxIconData(0xebcd);
  static const stack = LuxIconData(0xebce);
  static const Iconstack1 = LuxIconData(0xebcf);
  static const star = LuxIconData(0xebd0);
  static const starNo = LuxIconData(0xebd1);
  static const sticker = LuxIconData(0xebd2);
  static const stopwatch = LuxIconData(0xebd3);
  static const strongbox = LuxIconData(0xebd4);
  static const sun = LuxIconData(0xebd5);
  static const table = LuxIconData(0xebd6);
  static const tag = LuxIconData(0xebd7);
  static const terminal = LuxIconData(0xebd8);
  static const text = LuxIconData(0xebd9);
  static const textAlignCenter = LuxIconData(0xebda);
  static const textAlignJustify = LuxIconData(0xebdb);
  static const textAlignLeft = LuxIconData(0xebdc);
  static const textAlignRight = LuxIconData(0xebdd);
  static const textBgcolor = LuxIconData(0xebde);
  static const textBold = LuxIconData(0xebdf);
  static const textColor = LuxIconData(0xebe0);
  static const textItalic = LuxIconData(0xebe1);
  static const textUnderline = LuxIconData(0xebe2);
  static const thumbsDown = LuxIconData(0xebe3);
  static const thumbsUp = LuxIconData(0xebe4);
  static const time = LuxIconData(0xebe5);
  static const timeHistory = LuxIconData(0xebe6);
  static const timer = LuxIconData(0xebe7);
  static const toggleLeft = LuxIconData(0xebe8);
  static const toggleRight = LuxIconData(0xebe9);
  static const tote = LuxIconData(0xebea);
  static const toyHorse = LuxIconData(0xebeb);
  static const trash = LuxIconData(0xebec);
  static const trashEmpty = LuxIconData(0xebed);
  static const tuner = LuxIconData(0xebee);
  static const twitter = LuxIconData(0xebef);
  static const unlock = LuxIconData(0xebf0);
  static const user = LuxIconData(0xebf1);
  static const verified = LuxIconData(0xebf2);
  static const verifiedCopy = LuxIconData(0xebf3);
  static const video = LuxIconData(0xebf4);
  static const videoNo = LuxIconData(0xebf5);
  static const volume = LuxIconData(0xebf6);
  static const volumeHigh = LuxIconData(0xebf7);
  static const volumeLow = LuxIconData(0xebf8);
  static const volumeNo = LuxIconData(0xebf9);
  static const volumeOff = LuxIconData(0xebfa);
  static const wallet = LuxIconData(0xebfb);
  static const watch = LuxIconData(0xebfc);
  static const wiFi = LuxIconData(0xebfd);
  static const wiFiNo = LuxIconData(0xebfe);
  static const xOctagon = LuxIconData(0xebff);
  static const youtube = LuxIconData(0xec00);
  static const zoomIn = LuxIconData(0xec01);
  static const zoomOut = LuxIconData(0xec02);
  // static const сс = LuxIconData(0xec03);
  // static const Iconсс0 = LuxIconData(0xec04);
}
