import 'package:fifth_class/models/todo_model.dart';
import 'package:fifth_class/providers/to_do_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ToDoInputBottomsheet extends StatefulWidget {
  const ToDoInputBottomsheet({super.key});

  @override
  State<ToDoInputBottomsheet> createState() => _ToDoInputBottomsheetState();
}

class _ToDoInputBottomsheetState extends State<ToDoInputBottomsheet> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  DateTime pickedDate = DateTime.now();
  DateFormat formatter = DateFormat('dd-MM-yy');
  selectDateTime() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023, 1, 1),
        lastDate: DateTime(2023, 12, 31));
    if (selectedDate != null) {
      pickedDate = selectedDate;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          TextFormField(
            controller: title,
            decoration: const InputDecoration(
                hintText: "Enter Title", labelText: "Title"),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: description,
            decoration: const InputDecoration(
                hintText: "Enter Description", labelText: "Description"),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 40,
                  width: 80,
                  child: ElevatedButton(
                      onPressed: () {
                        selectDateTime();
                      },
                      child: Text('Select Date'))),
              Text(
                formatter.format(pickedDate),
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 52,
            width: size.width,
            child: ElevatedButton(
              onPressed: () {
                print(title.text);
                print(description.text);
                ToDoModel model = ToDoModel(
                    dateTime: formatter.format(pickedDate),
                    description: description.text,
                    title: title.text);

                context.read<ToDoProvider>().addToDo(model);
                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          )
        ],
      ),
    );
  }
}
