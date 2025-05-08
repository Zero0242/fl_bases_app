import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickerPlugin {
  /// Escoge una imagen según la fuente especificada
  static Future<XFile?> showImagePickerModal(BuildContext context) async {
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder:
          (context) => SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Seleccionar de galería'),
                  onTap: () {
                    Navigator.of(context).pop(ImageSource.gallery);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text('Tomar foto'),
                  onTap: () {
                    Navigator.of(context).pop(ImageSource.camera);
                  },
                ),
              ],
            ),
          ),
    );
    if (source == null) return null;
    return ImagePicker().pickImage(source: source, imageQuality: 65);
  }
}
