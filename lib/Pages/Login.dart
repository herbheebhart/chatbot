import 'package:chatbot_app/components/my_button.dart';
import 'package:chatbot_app/components/my_textfield.dart';
import 'package:chatbot_app/services/auth/auth_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    super.key,  
   required this.onTap
   });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

//  sign in user
void signIn () async {
  final authService = Provider.of<Authservice>(context, listen: false);

  try{
    await authService.signInWithEmailandPassword( 
      emailController.text,
      passwordController.text,
    );
  } catch (e) {
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:Text(
          e.toString(),
          ),
          ),
          );
  }
}
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SafeArea(
        child: Center(
          child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
        
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
               const SizedBox(height: 50),
            // logo
              Icon(
                Icons.message,
                size:80,
              ),
                const SizedBox(height: 25),
            // welcome  message
               const Text("Welcome back to the chat room",
                style: TextStyle(
                  fontSize: 16,
                ),
                ),
                const SizedBox(height: 20),
                // email message
           MyTextField(
            controller: emailController, 
            hintText:"email", 
            obscureText: false,
            ),
              const SizedBox(height: 10), 
            // Password message
                MyTextField(
            controller: passwordController, 
            hintText:"password",  
            obscureText: true,
            ),
             const SizedBox(height: 10),
            // signin button
           MyButton(onTap: () {}, text: "Sign in..."),
            const SizedBox(height: 50),
            // not a member registernow
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("not a member?"),
              const SizedBox(height:4),
                GestureDetector(
                  onTap: widget.onTap,
                  child:const  Text(
                    "Register now...",
                        style:TextStyle(
                    fontWeight:FontWeight.bold, 
                  ),
                    ),
                ),
            
                
                
                ],
            )

          ],
          ),
          ),
      )
    ),
   );
  }
}