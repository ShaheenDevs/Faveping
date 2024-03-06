import 'package:flutter/material.dart';

class DOBPicker extends StatefulWidget {
  final Function(DateTime)? onDateSelected;

  const DOBPicker({Key? key, this.onDateSelected}) : super(key: key);

  @override
  _DOBPickerState createState() => _DOBPickerState();
}

class _DOBPickerState extends State<DOBPicker> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      if (widget.onDateSelected != null) {
        widget.onDateSelected!(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DOB',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo',
            color: Colors.grey,
          ),
        ),
        // SizedBox(height: 8), // Adjust the spacing as needed
        Stack(
          children: [
            Container(
              height: 42,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200, width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                readOnly: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  hintText: 'Pick DOB',
                  hintStyle: TextStyle(
                    fontSize: 14, // Adjust the font size as needed
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Baloo',
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFFB605AE),
                  ),
                ),
                onTap: () {
                  _selectDate(context);
                },
                controller: TextEditingController(
                  text: _selectedDate != null
                      ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                      : '',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
