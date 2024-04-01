part of 'project_bloc.dart';

@immutable
sealed class ProjectEvent {}

class HoveredEvent extends ProjectEvent {
  final int i;
  final bool isHovered;

  HoveredEvent({required this.i, required this.isHovered});
}
