import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'report_details_state.dart';

class ReportDetailsCubit extends Cubit<ReportDetailsState> {
  ReportDetailsCubit() : super(ReportDetailsInitial());
}
