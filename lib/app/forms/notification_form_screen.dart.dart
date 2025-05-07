import 'dart:convert';

import 'package:flutter/material.dart';

class NotificationFormScreen extends StatefulWidget {
  const NotificationFormScreen({super.key});

  /// App Route is: `/forms/notifications`
  static const String route = '/forms/notifications';

  @override
  State<NotificationFormScreen> createState() => _NotificationFormScreenState();
}

class _NotificationFormScreenState extends State<NotificationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool isImportant = false;

  void _onSubmit() async {
    if (_formKey.currentState?.validate() != true) return;
    final formData = {
      "title": _titleController.text,
      "description": _descriptionController.text,
      "isImportant": isImportant,
      "isViewed": false,
    };
    print(jsonEncode(formData));
    _titleController.clear();
    _descriptionController.clear();
  }

  String? _validator(String? value) {
    final text = value ?? '';
    if (text.length < 5) return 'Debe contener minimo 5 caracteres';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario Notificación')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _titleController,
                validator: _validator,
                decoration: InputDecoration(
                  labelText: 'Titulo',
                  prefixIcon: Icon(Icons.title),
                ),
              ),
              TextFormField(
                controller: _descriptionController,
                validator: _validator,
                decoration: InputDecoration(
                  labelText: 'Descripcion',
                  prefixIcon: Icon(Icons.description),
                ),
              ),
              // * Opción 1: Checkbox
              CheckboxListTile(
                title: Text('Es importante'),
                value: isImportant,
                onChanged: (bool? value) {
                  setState(() {
                    isImportant = value ?? false;
                  });
                },
              ),
              // * Opción 2: Switch
              // SwitchListTile(
              //   title: Text('Es importante'),
              //   value: isImportant,
              //   onChanged: (bool value) {
              //     setState(() {
              //       isImportant = value;
              //     });
              //   },
              // ),

              // * Opción 3: Toggle Buttons
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text('Es importante'),
              //     SizedBox(width: 10),
              //     ToggleButtons(
              //       isSelected: [isImportant],
              //       onPressed: (int index) {
              //         setState(() {
              //           isImportant = !isImportant;
              //         });
              //       },
              //       children: [Icon(Icons.check)],
              //     ),
              //   ],
              // ),
              FilledButton(onPressed: _onSubmit, child: Text('Guardar')),
            ],
          ),
        ),
      ),
    );
  }
}
