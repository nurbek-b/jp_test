/* Local dependencies */
import 'main_event.dart';

class MainState {
  MainEventType currentPage;
  int birthDate;

  MainState({this.currentPage = MainEventType.page_1, this.birthDate = 1980});

  MainState cloneWith({
    currentPage,
    birthDate
  }) {
    return new MainState(
      /* App Tab Bar state */
      currentPage: currentPage ?? this.currentPage,
      birthDate: birthDate ?? this.birthDate
    );
  }
}
