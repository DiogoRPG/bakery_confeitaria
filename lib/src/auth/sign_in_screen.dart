import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bakery_confeitaria/src/auth/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF906236),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Nome do App
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(
                        text: "Bakery",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: "Confeitaria",
                          style: TextStyle(
                            color: Color(0xFF423D37),
                          ))
                    ],
                  ),
                ),

                // Categorias
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'Agne',
                    ),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText("Bolos"),
                        RotateAnimatedText("Panetones"),
                        RotateAnimatedText("Cookies"),
                        RotateAnimatedText("Brownie"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          //Formulario
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // E-mail
                const CustomTextField(
                  icon: Icons.email,
                  label: "E-mail",
                ),

                // Senha
                const CustomTextField(
                  icon: Icons.lock,
                  label: "Senha",
                  isSecret: true,
                ),

                // Botão entrar
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF906236),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                // Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Esqueceu sua senha",
                      style: TextStyle(
                        color: Color(0xFF906236),
                      ),
                    ),
                  ),
                ),

                // Divisor
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("ou"),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                // Botão novo usuario
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        side: const BorderSide(
                          width: 2,
                          color: Color(0xFF906236),
                        )),
                    onPressed: () {},
                    child: const Text(
                      "Criar uma conta",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF906236),
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
