import 'package:flutter/material.dart';
import 'package:to_do_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 120,
        child: Column(
          children:[
            //*get user imput
            TextField(
              controller: controller ,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Añadir nueva tarea",    
              ),
            ),
            
            //* buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //*Save button
                MyButton(text: "Guardar", onPressed: onSave),
                
                const SizedBox(width: 8),
                
                //*Cancel Button
                MyButton(text: "Cancel", onPressed: onCancel)
                
                  
              ],
            )
          ]
        ),
      ),
    );
  }
}