import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Container(
          height: 450,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    prefixIcon: Icon(Icons.person_outline),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIconColor: Colors.grey,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      style: TextStyle(color: Colors.grey),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: check,
                        onChanged: (bool? value) {
                          setState(() {
                            check = value!;
                          });
                        },
                        checkColor: Colors.white,
                        activeColor: Colors.amber,
                      ),
                      Text("Remember me"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.amber,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("LOG IN"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forget password",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Not a member?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("Sign up now !",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    ],
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
