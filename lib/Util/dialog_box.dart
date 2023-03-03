import 'package:flutter/material.dart';
import 'package:todoapp/Util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFF5E9CF),
      title: const Text(
        "Yeni Görev Ekle",
        style: TextStyle(color: Colors.black),
      ),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Kullanıcı Görev Girişi
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xFF4D455D),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF4D455D))),
                hintText: "Yeni Görev Ekle...",
              ),
            ),

            //Kaydetme, iptal etme butonu
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Kaydet", onPressed: onSave),
                const SizedBox(
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
