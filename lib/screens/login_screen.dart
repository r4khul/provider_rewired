import 'package:flutter/material.dart';
import 'package:provider_rewired/change_and_value_notifier/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final ValueNotifier<bool> _loading;
  late final AuthController _controller;

  @override
  void initState() {
    super.initState();
    _loading = ValueNotifier<bool>(false);
    _controller = AuthController();
  }

  @override
  void dispose() {
    _loading.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListenableBuilder(
                listenable: _controller,
                builder: (context, child) => _controller.isLoggedIn
                    ? Text('The user is logged in!')
                    : Text('The user is logged out!'),
              ),
              ValueListenableBuilder(
                valueListenable: _loading,
                builder: (context, value, child) => FloatingActionButton(
                  onPressed: value
                      ? null
                      : () async {
                          await _controller.login(_loading);
                        },
                  child: value
                      ? Center(child: CircularProgressIndicator())
                      : Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
