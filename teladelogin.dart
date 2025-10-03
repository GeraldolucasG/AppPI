import 'package:flutter/material.dart';

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
              // Imagem da arvore
              Center(
                child: Image.asset(
                  'assets/tree_logo.png', // Verifique se o caminho da imagem está correto
                  height: 120,
                ),
              ),
              const SizedBox(height: 24),
              // Texto de boas-vindas
              const Text(
                'Bem-vindo(a) ao\nTree',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 48),
              // Campo de email
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'name@example.com',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              // Campo de senha
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 24),
              // Botão de entrar
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
              // Link "Esqueceu a senha?"
              TextButton(
                onPressed: () {},
                child: const Text('Esqueceu a senha?'),
              ),
              const SizedBox(height: 24),
              // Botão "Criar conta"
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
              // Divisor
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
              // Botões de login social
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  buildSocialButton(
                    Icons.facebook,
                    const Color(0xfff14726),
                  ), // Facebook com a cor desejada
                  buildSocialButton(
                    Icons.g_mobiledata,
                    const Color(0xfff14726),
                  ), // Google com a cor desejada
                  buildSocialButton(
                    Icons.apple,
                    Colors.black,
                  ), // Apple, cor preta
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSocialButton(IconData icon, Color color) {
    return Container(
      width: 150, // Ajuste o tamanho conforme necessário
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Icon(icon, color: Colors.white)),
    );
  }
}
