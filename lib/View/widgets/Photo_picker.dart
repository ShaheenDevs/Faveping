import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BuildPhotoPicker extends StatefulWidget {
  final String labelText;

  const BuildPhotoPicker({required this.labelText});

  @override
  _BuildPhotoPickerState createState() => _BuildPhotoPickerState();
}

class _BuildPhotoPickerState extends State<BuildPhotoPicker> {
  String? pickedFileName; // Variable to store the picked file name

  Future<XFile?> _pickPhoto(BuildContext context) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image =
          await picker.pickImage(source: ImageSource.gallery);
      return image;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo',
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 2),
        Container(
          height: 42, // Set the height of the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 1.0,
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () async {
                  final image = await _pickPhoto(context);
                  if (image != null) {
                    // If image is picked, update the file name
                    setState(() {
                      pickedFileName = image.name;
                    });
                  }
                },
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFB605AE).withOpacity(0.1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: const Text(
                    'Pick Photo',
                    style: TextStyle(
                      fontFamily: 'Baloo',
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  pickedFileName ?? 'No file chosen..', // Display picked file name if available, otherwise show default message
                  style: TextStyle(
                    fontFamily: 'Baloo',
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
