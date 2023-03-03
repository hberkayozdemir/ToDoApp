import 'package:flutter/material.dart';
import 'package:todoapp/Pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  await Hive.initFlutter();
  await ScreenUtil.ensureScreenSize();
  var box = await Hive.openBox("mybox");
  runApp(ToDoApp());
}
class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (ctx, child){
        ScreenUtil.init(ctx);
        return Theme(
            data: ThemeData(
            primarySwatch: Colors.blue,
        ),
        child: HomePage(),
        );
      },


    );
  }
}
