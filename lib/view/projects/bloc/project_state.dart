part of 'project_bloc.dart';

@immutable
sealed class ProjectState {}

final class ProjectInitial extends ProjectState {}

final class ProjectHoverd extends ProjectState {
  final int i;
  final bool isHovered;

  ProjectHoverd({required this.i, required this.isHovered});
}

final class ProjectUnhoverd extends ProjectState {}
