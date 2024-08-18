import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'nots_state.dart';

class NotesCubit extends Cubit<NotsState> {
  NotesCubit() : super(NotesInitial());
}
