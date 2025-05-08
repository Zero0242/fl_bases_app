import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({super.key});

  /// App Route is: `/forms/simple`
  static const String route = '/forms/simple';

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastnameController = TextEditingController();
  bool isBlocked = false;
  Uint8List? _previewImage;

  void _onSubmit() async {
    if (_formKey.currentState?.validate() != true) return;
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final avatarUrl = await _uploadAvatar();
    final formData = {
      "name": _nameController.text,
      "lastname": _lastnameController.text,
      "created_at": timestamp,
      "avatar": avatarUrl,
      "isblocked": isBlocked,
    };
    print(jsonEncode(formData));
    _nameController.clear();
    _lastnameController.clear();
    _previewImage = null;
    setState(() {});
  }

  Future<String?> _uploadAvatar() async {
    await Future.delayed(Duration(seconds: 2));
    return "https://ui-avatars.com/api/?name=${_nameController.text}+${_lastnameController.text}";
  }

  String? _validator(String? value) {
    final text = value ?? '';
    if (text.length < 5) return 'Debe contener minimo 5 caracteres';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    const placeholderURL =
        'https://archive.org/download/placeholder-image/placeholder-image.jpg';
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
              // Foto de perfil
              Center(
                child: Badge(
                  label: InkWell(
                    onTap: () {
                      print('Seleccionar nueva foto de perfil');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.camera, color: Colors.white),
                    ),
                  ),
                  alignment: Alignment(1, 0.5),
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage:
                        _previewImage == null
                            ? NetworkImage(placeholderURL)
                            : MemoryImage(_previewImage!),
                  ),
                ),
              ),
              TextFormField(
                controller: _nameController,
                validator: _validator,
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              TextFormField(
                controller: _lastnameController,
                validator: _validator,
                decoration: InputDecoration(labelText: 'Apellido'),
              ),
              SwitchListTile(
                title: Text('¿Bloqueado?'),
                value: isBlocked,
                onChanged: (bool value) {
                  setState(() {
                    isBlocked = value;
                  });
                },
              ),
              FilledButton(onPressed: _onSubmit, child: Text('Guardar')),
            ],
          ),
        ),
      ),
    );
  }
}
