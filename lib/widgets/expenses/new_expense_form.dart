import 'package:flutter/material.dart';

class NewExpenseForm extends StatefulWidget {
  const NewExpenseForm({super.key});

  @override
  State<NewExpenseForm> createState() {
    return _NewExpenseFormState();
  }
}

class _NewExpenseFormState extends State<NewExpenseForm> {
  var title = '';

  void _saveTitleInput(String value) {
    title = value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInput,
            maxLength: 60,
            decoration: const InputDecoration(
              label: Text("Title"),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(title);
                },
                child: const Text('Save Expense'),
              )
            ],
          )
        ],
      ),
    );
  }
}
