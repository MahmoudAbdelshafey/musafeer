import 'package:flutter/material.dart';
const List<String> list = <String>['Country','Egypt', 'Sauadi Arabia'];

class CDropdownMenuExample extends StatefulWidget {
  const CDropdownMenuExample({super.key});

  @override
  State<CDropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<CDropdownMenuExample> {

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
