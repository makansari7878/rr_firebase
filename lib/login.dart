import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login '),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,),
                    ),
                  ),
                  SizedBox(height: 10.0,),
// **************** User Name ****************
                  Row(
                    children: [
                      Text('Email Address:',style:TextStyle(fontSize: 20.0),),
                      SizedBox(width: 20.0,),
                      SizedBox(width: 220.0,
                        child: TextField(
                          onChanged: (value) {},
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          keyboardType: TextInputType.emailAddress,

                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            hintText: 'Your Email',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
// **************** Password ****************
                  Row(
                    children: [
                      Text('Password: ',style: TextStyle(fontSize: 20.0),),
                      SizedBox(width: 20.0,),
                      SizedBox(width: 220.0,

                        child: TextField(
                          onChanged: (value) {},
                          //obscureText: true,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
// ************* Create Button **********
                  Center(
                    child: Container(
                      width: 100,
                      child:ElevatedButton(

                        child: Text("Login",

                          style:TextStyle(fontSize:20,color: Colors.white),),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}