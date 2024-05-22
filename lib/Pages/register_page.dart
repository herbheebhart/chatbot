import "package:chatbot_app/components/my_button.dart";
import "package:chatbot_app/components/my_textfield.dart";
import "package:flutter/material.dart";
class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key,    required this.onTap });
@override
 State <RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  // text controller
final emailController = TextEditingController();
  final PasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  // signup user
  void signUp() {}
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
        
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
               const SizedBox(height: 50),
            // logo
              const Icon(
                Icons.message,
                size:80,
              ),
                const SizedBox(height: 25),
            // create acct  message
               const Text("Create an accout buddy",
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
            controller: PasswordController, 
            hintText:"password",  
            obscureText: true,
            ),
            // confirm password
              // Password message
                const SizedBox(height: 10), 
                MyTextField(
            controller:confirmPasswordController , 
            hintText:"confirm password",   
            obscureText: true,
            ),
             const SizedBox(height: 20),
            // signup button
           MyButton(onTap:signUp, text: "Sign up..."),
            const SizedBox(height: 50),
            // not a member registernow
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Already a member?"),
              const SizedBox(height:4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "You can login now...",
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

