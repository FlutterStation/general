import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

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
    const String? _extension = "csv";
    const FileType _pickingType = FileType.custom;
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: _pickingType,
        allowMultiple: false,
        allowedExtensions: (_extension.isNotEmpty)
            ? _extension.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print('Error: $ex');
    }
    var file = await _getFile(_paths![0].path);
    return file;
  }
}

class CsvExport {
  static Future<bool> getCsv(List<List<dynamic>> data,
      {required String fileName}) async {
    if (await Permission.storage.request().isGranted) {
//store file in documents folder
      // final directory = (await getExternalStorageDirectories(
      //         type: StorageDirectory.downloads))!
      //     .first;
      String dir = "/storage/emulated/0/Download/$fileName.csv";
      String file = dir;

      File f = File(file);

// convert rows to String and write as csv file

      String csv = const ListToCsvConverter().convert(data);
      f.writeAsString(csv);

      return true;
    } else {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();

      return false;
    }
  }
}
