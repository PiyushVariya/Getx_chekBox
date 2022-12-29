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
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
/*class Demo extends StatefulWidget {
  Demo({
    Key? key,
  }) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  File? file;
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();

  Uint8List? byte;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: byte == null
          ? Container()
          : SfPdfViewer.memory(byte!,
              controller: _pdfViewerController, key: _pdfViewerStateKey),
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
              var path = result.files.single.bytes;
              byte = path;

              setState(() {});
              // setState(() => file = File(path));

              // createExcel();
              print('++++++++ $file');
              print('>>>>>>>>>>>>>> $path');
            },
            icon: Icon(Icons.add)),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _pdfViewerStateKey.currentState!.openBookmarkView();
              },
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(5);
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.25;
              },
              icon: const Icon(
                Icons.zoom_in,
                color: Colors.white,
              ))
        ],
      ),
    ));
  }
}*/

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

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
