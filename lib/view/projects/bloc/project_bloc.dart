import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(ProjectInitial()) {
    on<ProjectEvent>((event, emit) {});
    on<HoveredEvent>((event, emit) {
      emit(ProjectHoverd(i: event.i,isHovered: event.isHovered));
      

    });
  }
}
