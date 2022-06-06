// import 'dart:convert';
// import 'dart:io';

// import 'package:csv/csv.dart';
// import 'package:file_picker/file_picker.dart';

// class Csv {
//   static Future<List> openFile(filepath) async {
//     List<PlatformFile>? _paths;
//     String? _extension = "csv";
//     FileType _pickingType = FileType.custom;
//     File f = new File(filepath);
//     print("CSV to List");
//     final input = f.openRead();
//     final fields = await input
//         .transform(utf8.decoder)
//         .transform(new CsvToListConverter())
//         .toList();
//     print(fields);
//     return fields;
//   }

//   void _openFileExplorer() async {
//     try {
//       _paths = (await FilePicker.platform.pickFiles(
//         type: _pickingType,
//         allowMultiple: false,
//         allowedExtensions: (_extension?.isNotEmpty ?? false)
//             ? _extension?.replaceAll(' ', '').split(',')
//             : null,
//       ))
//           ?.files;
//     } on PlatformException catch (e) {
//       print("Unsupported operation" + e.toString());
//     } catch (ex) {
//       print(ex);
//     }
//     if (!mounted) return;
//     setState(() {
//       openFile(_paths![0].path);
//       print(_paths);
//       print("File path ${_paths![0]}");
//       print(_paths!.first.extension);
//     });
//   }
// }
