import 'dart:js';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  void _signOut() async {
    try {
      // Sign out from Firebase Authentication
      await FirebaseAuth.instance.signOut();

      // Sign out from Google Sign-In (if user signed in with Google)
      final GoogleSignIn googleSignIn = GoogleSignIn();
      await googleSignIn.signOut();

      // Navigate back to the Welcome screen
      Navigator.pushNamed(context as BuildContext, '/welcome');
    } catch (error) {
      // Handle sign-out errors
      print('Error signing out: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the DashboardScreen on sign in button pressed
                Navigator.pushNamed(context, '/dashboard');
              },
              child: Text('Sign In'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the SignUpScreen on sign up button pressed
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Sign Up'),
            ),
            OutlinedButton(
              onPressed: () {
                // Perform Google login logic here
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/google_logo.png',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10),
                  Text('Sign in with Google'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: _signOut,
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
