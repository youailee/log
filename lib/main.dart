import 'package:flutter/material.dart';
import 'const/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1034,
        height: 666,
        color: DashboardStyle.mainColor,
        padding: EdgeInsets.only(left:40.0, top: 37.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Zone',
                    style: TextStyle(
                      fontSize: 16,
                      color: DashboardStyle.whiteText,
                      height: 18 / 16,
                    ),
                  ),
                  SizedBox(width: 17,),
                  Container(
                    width: 200,
                    height: 300,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 24,),
                  Text(
                    'Key words',
                    style: TextStyle(
                      fontSize: 16,
                      color: DashboardStyle.whiteText,
                      height: 18 / 16,
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    width: 150,
                    height: 32,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: DashboardStyle.borderColor), // 设置激活状态下的边框颜色
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: DashboardStyle.blackButtonBorder), // 设置非激活状态下的边框颜色
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 24,),
                  Text(
                    'Importance',
                    style: TextStyle(
                      color: DashboardStyle.whiteText,
                      fontSize: 16,
                      height: 18/16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
