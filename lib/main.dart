import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/api/api_calling.dart';
import 'package:getx_demo/api_demo.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferences.getInstance().then((value) {
    preferences = value;
    
  });
  runApp(
    const GetMaterialApp(
      home: CheckboxGetxDemo(),
    ),
  );
}


////////////////////////////////////////////////////////
/*
import 'package:better_open_file/better_open_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:universal_html/html.dart' show AnchorElement;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';

class FilePickerDemo extends StatefulWidget {
  @override
  State<FilePickerDemo> createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  File? file;
  String? path;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  */
/*void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    if (result == null) {
      print("No file selected");
    } else {
      print(result.files.single.name);
    }
  }*//*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: [
                  'jpg',
                  'pdf',
                  'doc',
                  'docx',
                  'xls',
                  'xlsx',
                  'txt'
                ],
                allowMultiple: false,
              );

              if (result == null) return;
              var path = result.files.single.path!;
              path = path;
              // setState(() => image = path);
              setState(() => file = File(path));

              // createExcel();
              print('++++++++ $file');
            },
            icon: Icon(Icons.add)),
      ),
      body: SafeArea(
        child: Center(
          child: (file != null)
              ? PDFView(
                  filePath: file?.path,
                )
              : Container(),
        ),
      ),
    );
  }

// Future<void> createExcel() async {
//   final Workbook workbook = Workbook();
//   final Worksheet sheet = workbook.worksheets[0];
//   sheet.getRangeByName('A1').setText('Hello World!');
//   final List<int> bytes = workbook.saveAsStream();
//   workbook.dispose();
//
//   if (kIsWeb) {
//     AnchorElement(
//         href:
//             'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
//       ..setAttribute('download', 'Output.xlsx')
//       ..click();
//   } else {
//     final String path = (await getApplicationSupportDirectory()).path;
//     final String fileName =
//         Platform.isWindows ? '$path\\Output.xlsx' : '$path/Output.xlsx';
//     final File file = File(fileName);
//     await file.writeAsBytes(bytes, flush: true);
//     OpenFile.open(fileName);
//   }
// }
}
*/
