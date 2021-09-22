enum MainEventType { page_1, page_2, page_3, birthDate }

abstract class MainEvent {
  final MainEventType type;

  MainEvent({required this.type});
}

class ShowPage1PageEvent extends MainEvent {
  ShowPage1PageEvent() : super(type: MainEventType.page_1);
}

class ShowPage2PageEvent extends MainEvent {
  ShowPage2PageEvent() : super(type: MainEventType.page_2);
}

class ShowPage3PageEvent extends MainEvent {
  ShowPage3PageEvent() : super(type: MainEventType.page_3);
}

class BirthDateSavePageEvent extends MainEvent {
  final int birthDate;

  BirthDateSavePageEvent({required this.birthDate})
      : super(type: MainEventType.birthDate);
}
