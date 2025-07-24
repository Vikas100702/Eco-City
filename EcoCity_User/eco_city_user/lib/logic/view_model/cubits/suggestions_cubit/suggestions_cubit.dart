import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'suggestions_state.dart';

class SuggestionsCubit extends Cubit<SuggestionsState> {
  SuggestionsCubit() : super(SuggestionsInitial());
}
