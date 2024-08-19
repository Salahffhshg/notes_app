part of 'nots_cubit.dart';

@immutable
abstract class AddNotsState {}

class AddNotesInitial extends AddNotsState {}

class AddNoteLoading extends AddNotsState {}

class AddNoteSuccess extends AddNotsState {}

class AddNoteFailure extends AddNotsState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
