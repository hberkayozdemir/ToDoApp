import 'package:flutter/material.dart';
import 'package:todoapp/Util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple,
      title: Text(
        "Yeni Görev Ekle",
        style: TextStyle(color: Colors.white),
      ),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //Kullanıcı Görev Girişi
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Yeni Görev Ekle...",
              ),
            ),

            //Kaydetme, iptal etme butonu
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Kaydet", onPressed: onSave),
                SizedBox(
                  width: 20,
                ),
                MyButton(text: "İptal Et", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
