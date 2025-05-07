import 'dart:convert';

import 'package:flutter/material.dart';

class SimpleFormScreen extends StatefulWidget {
  const SimpleFormScreen({super.key});

  /// App Route is: `/forms/simple`
  static const String route = '/forms/simple';

  @override
  State<SimpleFormScreen> createState() => _SimpleFormScreenState();
}

class _SimpleFormScreenState extends State<SimpleFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _onSubmit() async {
    if (_formKey.currentState?.validate() ?? false) return;
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final formData = {
      "id": timestamp.toString(),
      "title": _titleController.text,
      "description": _descriptionController.text,
      "created_at": timestamp,
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
      appBar: AppBar(title: Text('Formulario Simple')),
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
              FilledButton(onPressed: _onSubmit, child: Text('Guardar')),
            ],
          ),
        ),
      ),
    );
  }
}
