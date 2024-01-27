import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;

  bool _isSubmitButtonEnabled = false;

  void _login() {

    String validEmail = 'test45@yopmail.com';
    String validPassword = 'Test@123';

    if (emailController.text == validEmail && passwordController.text == validPassword) {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),

      );
      print('Login successful');
    } else {

      setState(() {
        errorMessage = 'Invalid email or password';
      });
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  String errorMessage = '';

  void _checkSubmitButton() {

    bool isFilled =
        emailController.text.isNotEmpty && passwordController.text.isNotEmpty;


    setState(() {
      _isSubmitButtonEnabled = isFilled;
    });
  }







  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Expanded(
         child: Column(
           children: [
             const Padding(
               padding: EdgeInsets.only(top: 50),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Promilo",style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                 ],
               ),
             ),
             const SizedBox(height: 70,),
             const Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Hi, Welcome Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
               ],
             ),
             const SizedBox(height: 10,),
             const Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 55),
                   child: Text("Please Sign In To Continue",style: TextStyle(fontWeight: FontWeight.w900),
                   ),
                 )
               ],
             ),
             const SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(left: 40,right: 40),
               child: TextField(
                 onChanged: (_) => _checkSubmitButton(),
                  controller: emailController,
                 decoration: InputDecoration(
                   labelText: 'Enter Email or Mob No',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                   fillColor: Colors.grey[200],
                   filled: true,
                 ),
               ),
             ),
             const Padding(
               padding: EdgeInsets.only(right: 50,top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text("Sign In With OTP",style: TextStyle(color: Colors.blueAccent,fontSize: 16,fontWeight: FontWeight.bold),),
                 ],
               ),
             ),
            const SizedBox(height: 5),
             const Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 55),
                   child: Text("Password",style: TextStyle(fontWeight: FontWeight.w900),),
                 )
               ],
             ),
             Text(
               errorMessage,
               style: const TextStyle(color: Colors.red),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 40,right: 40),
               child: TextField(
                 onChanged: (_) => _checkSubmitButton(),
                  controller: passwordController,
                 decoration: InputDecoration(
                   labelText: 'Enter Password',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                   fillColor: Colors.grey[200],
                   filled: true,
                 ),
               ),
             ),
             const SizedBox(height: 8,),
             Row(

               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 30),
                   child: Checkbox(
                     activeColor: Colors.blue,
                     value: _isChecked,
                     onChanged: (value){
                       setState(() {
                         _isChecked = value!;
                       });
                     },
                   ),
                 ),
                 const Text("Remember Me",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),

                 const Padding(
                   padding: EdgeInsets.only(left: 78),
                   child: Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.blueAccent),)),
                 

               ],

             ),
             const SizedBox(height: 30),
             ElevatedButton(
               onPressed: _isSubmitButtonEnabled ? _login : null,
               child: const Text('Submit'),
             ),
             const SizedBox(height: 6,),
             const Center(child: Text("or",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
             const Divider(color: Colors.lightBlue),
             const SizedBox(height: 15),
             const Flexible(
               flex: 2,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   CircleAvatar(
                     radius: 35.0,
                     backgroundImage: AssetImage('Google-Logo-PNG-File.png'),
                   ),
                   CircleAvatar(
                     radius: 35.0,
                     backgroundImage: AssetImage('link.png'),
                   ),
                   CircleAvatar(
                     radius: 35.0,
                     backgroundImage: AssetImage('facebook.jpg'),
                   ),
                   CircleAvatar(
                     radius: 35.0,
                     backgroundImage: AssetImage('insta.jpg'),
                   ),
                   CircleAvatar(
                     radius: 35.0,
                     backgroundImage: AssetImage('whatsapp.jpg'),
                   ),
                 ],

               ),
             ),
             const SizedBox(height: 30,),
             const Padding(
               padding: EdgeInsets.only(left: 20,right: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Business User?",style: TextStyle(fontSize: 20),),
                   Text("Don't have an account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                 ],
               ),
             ),
             const Expanded(child: SizedBox(height: 6,),),
             const Padding(
               padding: EdgeInsets.only(left: 25,right: 25),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Login Here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                   Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                 ],
               ),
             ),
             const Expanded(child: SizedBox(height: 60,),),
             const Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("By continuing, you agree to",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black54),),
               ],
             ),
             const Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Promilo's Terms of Use & Privacy Policy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
               ],
             )
         
           ],
         ),
       ),
    );
  }
}
