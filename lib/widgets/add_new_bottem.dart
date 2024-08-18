import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/widgets/custom_text_field.dart';

import 'cutom_buttom.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNotForm(),
      ),
    );
  }
}

class AddNotForm extends StatefulWidget {
  const AddNotForm({super.key});

  @override
  State<AddNotForm> createState() => _AddNotFormState();
}

class _AddNotFormState extends State<AddNotForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
