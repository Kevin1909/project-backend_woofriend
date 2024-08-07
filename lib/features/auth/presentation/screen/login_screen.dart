import 'package:flutter/material.dart';
import 'package:woofriend/config/theme/app_theme.dart';

import 'package:woofriend/features/shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: IconBackground(
            child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 80,
            ),
            const Icon(
              Icons.pets_sharp,
              color: Colors.white,
              size: 200,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: size.height - 280,
              width: double.infinity,
              margin: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                  color: Color(0xFFF8F7F7),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const _LoginForm(),
            )
          ]),
        )),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          Text("¡Bienvenido!", style: textStyle.titleLarge),
          const SizedBox(
            height: 65,
          ),
          const CustomTextFormField(
            label: "Correo",
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextFormField(
            label: "Contraseña",
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '¿Olvidaste tu contraseña?',
                style: textStyle.bodyMedium,
              ),
              TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print("boton presionado");
                  },
                  child: Text(
                    'Click aquí',
                    style: textStyle.titleSmall,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 150,
            height: 45,
            child: CustomFilledButton(
                text: "Ingresar",
                buttonColor: colorTertiaryTheme,
                colorText: colorSecondaryTheme),
          ),
          const Spacer(),
          const SizedBox(
            width: 150,
            height: 45,
            child: CustomFilledButton(
              text: "Registrarse",
              buttonColor: colorTertiaryTheme,
              colorText: colorSecondaryTheme,
            ),
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
