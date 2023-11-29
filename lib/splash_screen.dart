import 'package:flutter/material.dart';
import 'package:csit2023/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/csitlogo.png'),
            SizedBox(height: 20.0),
            Text(
              'Welcome CSIT Fam',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(300, 50),
                    side: BorderSide(
                      color: Color.fromARGB(255, 164, 128, 225),
                      width: 2.0,
                    ),
                    backgroundColor: Color.fromARGB(255, 164, 128, 225),
                  ),
                  child: Text(
                    'เริ่มต้นการใช้งาน',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
