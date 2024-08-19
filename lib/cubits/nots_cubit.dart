import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'nots_state.dart';

class NotesCubit extends Cubit<AddNotsState> {
  NotesCubit() : super(AddNotesInitial());
}
