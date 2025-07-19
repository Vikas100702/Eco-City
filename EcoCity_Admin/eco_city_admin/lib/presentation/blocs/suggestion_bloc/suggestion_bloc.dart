import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'suggestion_event.dart';
part 'suggestion_state.dart';

class SuggestionBloc extends Bloc<SuggestionEvent, SuggestionState> {
  SuggestionBloc() : super(SuggestionInitial()) {
    on<SuggestionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
