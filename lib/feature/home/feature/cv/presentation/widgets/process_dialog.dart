part of '../screens/cv_screen.dart';
class ProcessDialog extends StatefulWidget {
  final FilePickerResult file;
  final String id;
  final CvBloc cvBloc;
  const ProcessDialog(
      {super.key, required this.cvBloc, required this.file, required this.id});

  @override
  State<ProcessDialog> createState() => _ProcessDialogState();
}

class _ProcessDialogState extends State<ProcessDialog> {
  double _uploadProgress = 0.0;
  @override
  void initState() {
    _uploadPDF(widget.file.files.first.path!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LinearProgressIndicator(
              value: _uploadProgress / 100,
            ),
            spaceH8,
            Text(
              'Upload Progress: ${_uploadProgress.toStringAsFixed(2)}%',
              style: TxtStyles.semiBold16,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _uploadPDF(String pdfFilePath) async {
    try {
      String fileName = pdfFilePath.split('/').last; // Extract the file name
      Reference storageRef =
          FirebaseStorage.instance.ref().child('files/$fileName');
      UploadTask uploadTask = storageRef.putFile(File(pdfFilePath));
      uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
        double progress =
            (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
        setState(() {
          _uploadProgress = progress;
        });
      });
      await uploadTask.whenComplete(() => Navigator.pop(context));
      String pdfUrl = await storageRef.getDownloadURL();
      var newId = AppFormat.generateRandomString();
      widget.cvBloc.add(CvEvent.uploadCV(CVModel(
          id: newId,
          isMainCV: false,
          name: fileName,
          uploadDate: DateTime.now(),
          size: widget.file.files.single.size,
          userId: widget.id,
          url: pdfUrl)));

      print('PDF URL stored in Firestore: $pdfUrl');
    } catch (error) {
      print('Error uploading PDF: $error');
    }
  }
}
