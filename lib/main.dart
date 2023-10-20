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

  String _selectedValue = ' ';

  List<String> _dropdownValues = [ ' '];

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
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter, // 渐变起始点在顶部中央
                        end: Alignment.bottomCenter, // 渐变结束点在底部中央
                        colors: [
                          Color.fromRGBO(118, 118, 118, 1),
                          Color.fromRGBO(65, 65, 65, 1),
                          Color.fromRGBO(45, 45, 45, 1),
                          Color.fromRGBO(100, 100, 100, 1)
                        ],
                      )
                    ),
                    child: DropdownButton(
                      value: _selectedValue,
                      items: _dropdownValues.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedValue = newValue!;
                        });
                      },
                      icon: Icon(Icons.arrow_drop_down,color: DashboardStyle.whiteText,),
                      iconSize: 20,
                      isExpanded: true,
                      style: TextStyle(
                          color: DashboardStyle.whiteText
                      ),
                      underline: Container(
                        height: 0,
                      ),
                      alignment: Alignment.centerRight,
                    ),
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
                  SizedBox(width: 16,),
                  Container(
                    width: 150,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: DashboardStyle.blackButtonBorder,
                        width: 1
                      )
                    ),
                    padding: EdgeInsets.only(right: 8),
                    child: DropdownButton(
                      value: _selectedValue,
                      items: _dropdownValues.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedValue = newValue!;
                        });
                      },
                      icon: Icon(Icons.arrow_drop_down,color: DashboardStyle.whiteText,),
                      iconSize: 20,
                      isExpanded: true,
                      style: TextStyle(
                        color: DashboardStyle.whiteText
                      ),
                      underline: Container(
                        height: 0,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  SizedBox(width: 38,),
                  Container(
                    width: 110,
                    height: 32,
                    child: TextButton(
                      onPressed: (){
                        //处理点击事件
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(DashboardStyle.lightGreenBorder)
                      ),
                      child: Text(''),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 49,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints:BoxConstraints(minHeight: 77),
                    child: Text(
                      '07-23 10:28:36   (zonel)  Light1  OFF  (Strategy) .',
                      style: TextStyle(
                        color: DashboardStyle.whiteText,
                        fontSize: 18,
                        height: 23 / 18,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints:BoxConstraints(minHeight: 77),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: DashboardStyle.whiteText,
                          fontSize: 18,
                          height: 23 / 18,
                        ),
                        children: [
                          TextSpan(
                            text: '07-23 10:28:36   (zonel)  Sensorl  '
                          ),
                          TextSpan(
                            text: 'dropped',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color:DashboardStyle.orangeText,
                            )
                          )
                        ]
                      ),
                    )
                  ),
                  ConstrainedBox(
                    constraints:BoxConstraints(minHeight: 77),
                    child: Text(
                      '07-23 10:28:36   (zonel)  Light1  dimming  to  50%  (Username) .',
                      style: TextStyle(
                        color: DashboardStyle.whiteText,
                        fontSize: 18,
                        height: 23 / 18,
                      ),
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
