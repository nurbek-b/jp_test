/* External dependencies */
import 'dart:async';
import 'package:bloc/bloc.dart';

/* Local dependencies */
import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState(currentPage: MainEventType.page_1));

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    switch (event.type) {
      case MainEventType.page_1:
        yield state.cloneWith(currentPage: MainEventType.page_1);

        break;
      case MainEventType.page_2:
        yield state.cloneWith(currentPage: MainEventType.page_2);

        break;
      case MainEventType.page_3:
        yield state.cloneWith(currentPage: MainEventType.page_3);

        break;
      case MainEventType.birthDate:
        BirthDateSavePageEvent ev = event as BirthDateSavePageEvent;
        final int birthDate = ev.birthDate;

        yield state.cloneWith(birthDate: birthDate);
        break;
    }
  }
}
