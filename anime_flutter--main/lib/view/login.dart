import 'package:anima/main.dart';
import 'package:anima/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final language = ['en', 'ml', 'hi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 30, 41),
      appBar: AppBar(
        title: const Text(
          'Welcome!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton(
              icon: const Icon(
                Icons.language,
                color: Color.fromARGB(255, 139, 139, 139),
              ),
              underline: const SizedBox(),
              items: language
                  .map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (language) {
                if (language != null) {
                  MyApp.setLocale(context, Locale(language));
                }
              },
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 24, 30, 41),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromARGB(255, 24, 30, 41),
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/login1.png',
                height: 150.0,
                width: 150.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.username,
                  hintStyle: const TextStyle(color: Color.fromARGB(255, 105, 104, 104)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.password,
                  hintStyle: const TextStyle(color: Color.fromARGB(255, 105, 104, 104)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const MyHomePage();
                      },
                    ));
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                  ),
                  child: Text(AppLocalizations.of(context)!.login),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
