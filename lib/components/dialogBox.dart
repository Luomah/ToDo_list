import 'package:flutter/material.dart';
import 'package:todo_list/components/buttons.dart';

class dialogBox extends StatelessWidget {
  final controller;
  const dialogBox({
    super.key,
    required this.controller,
});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
          controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new note"
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buttons(text: "Save", onPressed: (){}),

                const SizedBox(width: 8),

                buttons(text: "Cancel", onPressed: (){})],
          )


        ],),
      ),
    );
  }
}
