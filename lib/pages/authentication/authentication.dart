import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Login", style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )),
                ],
              ),
               SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomText(text: "Welcome back to the admin panel.", color: lightGrey,),
                ],
              ),
               SizedBox(
                height: 15,
              ),
             
              TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))
                  ),
                ),
 SizedBox(
                height: 15,
              ),
                 
              TextField(
                obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline),
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
