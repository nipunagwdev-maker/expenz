import 'package:expense_master_proj_07/constants/colors/colors.dart';
import 'package:expense_master_proj_07/widget/custome_buttton.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  //for the checkbox
  bool _rememberMe = false;

  //form keys for the form validations
  final _formKey = GlobalKey<FormState>();

  //controller for the text form  fields
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  //we can remove this garbage data saved while the form data no need for the next step
  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your\nPersonal Details",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),

                //make the form here
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      //form field for the user name
                      TextFormField(
                        controller: _userNameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter a Your Name";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 20,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      //form filed for user email address
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter a Your E-mail";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 20,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      //form filed for entering user password
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter a Valid Password";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 20,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      //form filed for confirming user password
                      TextFormField(
                        controller: _confirmPasswordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Confirm Your password";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'confirm password',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 20,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      //adding the text after the form files
                      Row(
                        children: [
                          Text(
                            "Remeber me for the next time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),

                          Expanded(
                            child: CheckboxListTile(
                              activeColor: kMainColor,
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            //form is valie --> proess data
                            String userName = _userNameController.text;
                            String email = _emailController.text;
                            String password = _passwordController.text;
                            String confirmPassword =
                                _confirmPasswordController.text;
                          }
                        },
                        child: CustomeButtton(
                          buttonName: "Next",
                          buttonColor: kMainColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
