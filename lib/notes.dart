import 'package:flutter/material.dart';

import 'widgets/notes_view_body.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),

    );
  }
}
