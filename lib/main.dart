import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 80),
              Center(child: Image.asset('assets/tree_logo.png', height: 120)),
              const SizedBox(height: 24),
              const Text(
                'Bem-vindo(a) ao\nTree',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 48),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'name@example.com',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfff14726),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {},
                child: const Text('Esqueceu a senha?'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Criar conta',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('ou use um de seus perfis sociais'),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  buildSocialButton(
                    FontAwesomeIcons.twitter,
                    const Color(0xFF1DA1F2),
                  ),
                  buildSocialButton(
                    FontAwesomeIcons.facebookF,
                    const Color(0xFF3B5998),
                  ),
                  buildSocialButton(
                    FontAwesomeIcons.google,
                    const Color(0xFF4285F4),
                  ),
                  buildSocialButton(
                    FontAwesomeIcons.instagram,
                    const Color(0xFFE1306C),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSocialButton(IconData icon, Color backgroundColor) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: FaIcon(icon, color: Colors.white)),
    );
  }
}
