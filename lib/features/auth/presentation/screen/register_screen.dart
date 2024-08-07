import 'package:flutter/material.dart';
import 'package:woofriend/config/theme/app_theme.dart';

import 'package:woofriend/features/shared/shared.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: colorPrimaryTheme,
        body: IconBackground(
            child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      //if ( !context.canPop() ) return;
                      //context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_rounded,
                        size: 40, color: Colors.white)),
                const Spacer(flex: 1),
                Text('Crear cuenta',
                    style: textStyle.titleLarge?.copyWith(color: Colors.white)),
                const Spacer(flex: 2),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height - 110,
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
    const sizeIcons = Size.square(40);
    const sizeWidth = 10.0;

    const iconUser = "icons/user-square.svg";
    const iconMail = "icons/mail.svg";
    const iconLocation = "icons/location.svg";
    const iconPhone = "icons/device-mobile.svg";
    const iconPassword = "icons/lock.svg";

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Text("Nueva cuenta", style: textStyle.titleMedium),
          const SizedBox(
            height: 35,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SvgIcon(assetIcon: iconUser, size: sizeIcons),
            SizedBox(
              width: sizeWidth,
            ),
            SizedBox(
              width: 240,
              child: CustomTextFormField(
                label: "Nombre",
                keyboardType: TextInputType.name,
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SvgIcon(assetIcon: iconMail, size: sizeIcons),
            SizedBox(
              width: sizeWidth,
            ),
            SizedBox(
              width: 240,
              child: CustomTextFormField(
                label: "Correo electrónico",
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SvgIcon(assetIcon: iconLocation, size: sizeIcons),
            SizedBox(
              width: sizeWidth,
            ),
            SizedBox(
              width: 240,
              child: CustomTextFormField(
                label: "Ubicación",
                keyboardType: TextInputType.streetAddress,
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SvgIcon(assetIcon: iconPhone, size: sizeIcons),
            SizedBox(
              width: sizeWidth,
            ),
            SizedBox(
              width: 240,
              child: CustomTextFormField(
                label: "Teléfono",
                keyboardType: TextInputType.phone,
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SvgIcon(assetIcon: iconPassword, size: sizeIcons),
            SizedBox(
              width: sizeWidth,
            ),
            SizedBox(
              width: 240,
              child: CustomTextFormField(
                obscureText: true,
                label: "Contraseña",
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '¿Ya estás registrado?',
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
          const Spacer(),
          const SizedBox(
            width: 150,
            height: 45,
            child: CustomFilledButton(
                text: "Registrar",
                buttonColor: colorTertiaryTheme,
                colorText: colorSecondaryTheme),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
