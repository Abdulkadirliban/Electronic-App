// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_2023_test/screens/home.dart';
// import '../common/widget/custom_button.dart';
// import '../common/widget/custom_textfield.dart';
// import '../constant/global_variable.dart';
// import 'item_screen.dart';

// enum Auth { signin, signup }

// class AuthScreen extends StatefulWidget {
//   static const String routeName = '/auth-screen';
//   const AuthScreen({super.key});

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   Auth _auth = Auth.signup;
//   final signUpFormKey = GlobalKey<FormState>();
//   final signInFormKey = GlobalKey<FormState>();
//   final TextEditingController _emailcontrolar = TextEditingController();
//   final TextEditingController _passwordcontrolar = TextEditingController();
//   final TextEditingController _namecontrolar = TextEditingController();
//   bool isloading = false;
//   final auth = FirebaseAuth.instance;
//   register() async {
//     try {
//       isloading = true;
//       setState(() {});
//       var response = await auth.createUserWithEmailAndPassword(
//           email: _emailcontrolar.text, password: _passwordcontrolar.text);
//     } catch (e) {
//       print(e.toString());
//     }
//     isloading = false;
//     setState(() {});
//   }

//   login() async {
//     try {
//       isloading = true;
//       setState(() {});
//       var lgn = await auth.signInWithEmailAndPassword(
//           email: _emailcontrolar.text, password: _passwordcontrolar.text);
//     } catch (e) {
//       print(e);
//       isloading = false;
//       setState(() {});
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _emailcontrolar.dispose();
//     _passwordcontrolar.dispose();
//     _namecontrolar.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: GlobalVariables.greyBackgroundCOlor,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Text(
//                   'Welcome To Our App',
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
//                 ),
//               ),
            
//               ListTile(
//                 tileColor: _auth == Auth.signup
//                     ? GlobalVariables.backgroundColor
//                     : GlobalVariables.greyBackgroundCOlor,
//                 title: const Text(
//                   "Create Acccount",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 leading: Radio(
//                   activeColor: GlobalVariables.secondaryColor,
//                   value: Auth.signup,
//                   groupValue: _auth,
//                   onChanged: (Auth? val) {
//                     setState(() {
//                       _auth = val!;
//                     });
//                   },
//                 ),
//               ),
//               if (_auth == Auth.signup)
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   color: GlobalVariables.backgroundColor,
//                   child: Form(
//                     key: signUpFormKey,
//                     child: Column(
//                       children: [
//                         CustomTextField(
//                           controller: _namecontrolar,
//                           hintText: 'Name',
//                         ),
//                         const SizedBox(height: 10),
//                         CustomTextField(
//                           controller: _emailcontrolar,
//                           hintText: 'Email',
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         CustomTextField(
//                           controller: _passwordcontrolar,
//                           hintText: 'Password',
//                         ),
//                         const SizedBox(height: 10),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.redAccent,
//                             minimumSize: const Size(double.infinity, 50),
//                           ),
//                           onPressed: () {
//                             register();
//                           },
//                           child: isloading
//                               ? CircularProgressIndicator()
//                               : Text('Sign Up'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ListTile(
//                 tileColor: _auth == Auth.signin
//                     ? GlobalVariables.backgroundColor
//                     : GlobalVariables.greyBackgroundCOlor,
//                 title: const Text(
//                   "Sign-In.",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 leading: Radio(
//                   activeColor: GlobalVariables.secondaryColor,
//                   value: Auth.signin,
//                   groupValue: _auth,
//                   onChanged: (Auth? val) {
//                     setState(() {
//                       _auth = val!;
//                     });
//                   },
//                 ),
//               ),
//               if (_auth == Auth.signin)
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   color: GlobalVariables.backgroundColor,
//                   child: Form(
//                     key: signUpFormKey,
//                     child: Column(
//                       children: [
//                         CustomTextField(
//                           controller: _emailcontrolar,
//                           hintText: 'Email',
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         CustomTextField(
//                           controller: _passwordcontrolar,
//                           hintText: 'Password',
                          
//                         ),
//                         const SizedBox(height: 10),
//                         ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.redAccent,
//                             minimumSize: const Size(double.infinity, 50),
//                           ),
//                           onPressed: () {
//                             login();
//                             Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                 builder: (context) => Home(),
//                               ),
//                             );
//                           },
//                           child: isloading
//                               ? CircularProgressIndicator()
//                               : Text('Sign In'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
