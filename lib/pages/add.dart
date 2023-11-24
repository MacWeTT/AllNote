import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.yellow[600],
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.task_alt_rounded),
              ),
              Tab(
                icon: Icon(Icons.note_add_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: _buildTextFieldWithDropdown(
                      'Urgency',
                      ['Urgent', 'Not Urgent'],
                    ),
                  ),
                  Expanded(
                    child: _buildTextFieldWithDropdown(
                      'Importance',
                      ['Important', 'Not Important'],
                    ),
                  ),
                  Expanded(
                    child: _buildTextField('Task', hintText: 'Enter task name'),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle button press
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Add Task'),
                    ),
                  ),
                ],
              ),
            ),
            const Center(child: Text("Add Note")),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldWithDropdown(String label, List<String> dropdownItems) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(label),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 1,
          child: DropdownButton<String>(
            items: dropdownItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              // Handle dropdown value change
            },
            hint: const Text('Select'),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String label, {String? hintText}) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(label),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
