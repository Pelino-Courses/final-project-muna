flutter create my_login_app
cd my_login_app
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    // Add your login logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Check credentials, make API call, etc.

    // For simplicity, just print the credentials for now
    print('Username: $username\nPassword: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _handleLogin,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
// Example Aqueduct backend code
import 'package:aqueduct/aqueduct.dart';

class MyController extends ResourceController {
  @Operation.post('/login')
  Future<Response> login(@Bind.body() Map<String, dynamic> body) async {
    final username = body['username'] as String;
    final password = body['password'] as String;

    // Implement your authentication logic here
    if (isValidCredentials(username, password)) {
      final token = generateAuthToken(username);
      return Response.ok({'token': token});
    } else {
      return Response.unauthorized();
    }
  }

  bool isValidCredentials(String username, String password) {
    // Replace this with your actual credential validation logic
    return username == 'example' && password == 'password';
  }

  String generateAuthToken(String username) {
    // Replace this with your actual token generation logic
    return 'your_generated_token_here';
  }
