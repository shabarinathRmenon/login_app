import 'package:flutter/material.dart';
import 'package:flutter_project/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _namecontroller=TextEditingController();
  TextEditingController _passwordcontroller=TextEditingController();

  final String name='sabari';
  final String password= 'password';

   void validation(){
    if(_namecontroller.text==name && _passwordcontroller.text==password){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
    }else{
    showDialog(context: context, builder: (context){
      return AlertDialog(title: Text('error'),content: Text('in correct values'),actions: [TextButton(onPressed: (){Navigator.of(context).pop();}, child:Text('ok'))],);
    });
   }
   }
   
   
  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(controller: _namecontroller,decoration: InputDecoration(label: Text('Name')),),
            SizedBox(
              height: 10,
            ),
            TextField(controller: _passwordcontroller,decoration: InputDecoration(label: Text('password')),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed:(){
              setState(() {
                validation();
              });
            }
             
            , child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
