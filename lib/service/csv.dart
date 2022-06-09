import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class CsvImport {
  static Future<List<List<dynamic>>> _getFile(filepath) async {
    File f = File(filepath);
    print("CSV to List");
    final input = f.openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(const CsvToListConverter())
        .toList();
    print(fields);

    return fields;
  }

  static Future<List<List<dynamic>>> openFileExplorer(bool mounted) async {
    List<PlatformFile>? _paths;
    final String? _extension = "csv";
    final FileType _pickingType = FileType.custom;
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: false,
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    var file = await _getFile(_paths![0].path);
    return file;
  }
}
