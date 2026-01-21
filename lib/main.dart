import 'package:flutter/material.dart';

// --- 1. IL PUNTO DI PARTENZA (La "chiave") ---
void main() {
  runApp(const MyApp());
}

// --- 2. L'APP GENERALE (Il "telaio") ---
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '404 Dungeon Not Found',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Qui diciamo all'app di mostrare subito la pagina di Login
      home: const LoginPage(),
    );
  }
}

// --- 3. LA PAGINA DI LOGIN (La "schermata") ---
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // I nostri "microfoni" per leggere cosa scrive l'utente
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //prova
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("404 Dungeon Login"),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Un po' di margine ai lati
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icona temporanea (al posto del drago che non c'era)
              const Icon(Icons.vpn_key, size: 80, color: Colors.deepPurple),

              const SizedBox(height: 30), // Spazio vuoto
              // Campo Email
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email o Username",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20), // Spazio vuoto
              // Campo Password
              TextField(
                controller: _passwordController,
                obscureText: true, // Nasconde i caratteri con i pallini
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30), // Spazio vuoto
              // Bottone di Login
              ElevatedButton(
                onPressed: () {
                  // Qui vediamo se i controller funzionano
                  print("Tentativo di login con:");
                  print("User: ${_emailController.text}");
                  print("Pass: ${_passwordController.text}");
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text(
                    "ENTRA NEL DUNGEON",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
