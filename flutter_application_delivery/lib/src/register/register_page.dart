import 'package:flutter/material.dart';
import 'package:flutter_application_delivery/helpers/circle_top.dart';
import 'package:flutter_application_delivery/src/utils/my_colors.dart';
import 'package:flutter_application_delivery/widgets/custom_button.dart';
import 'package:flutter_application_delivery/widgets/custom_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(children: [
        Positioned(top: -100, left: -100, child: CircleTop()),
        Positioned(child: backLoginPage(), top: 30),
        Positioned(
          child: TextLogin(),
          top: 40,
          left: 30,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 10),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.amber,
                ),
                child: Image.asset('assets/img/user_profile_2.png'),
              ),
              const CustomInput(
                label: 'Correo Electronico',
                icon: Icons.mail,
              ),
              const CustomInput(label: 'Nombre', icon: Icons.person),
              const CustomInput(label: 'Apellidos', icon: Icons.person_outline),
              const CustomInput(label: 'Telefono', icon: Icons.phone),
              const CustomInput(label: 'Contraseña', icon: Icons.lock),
              const CustomInput(
                  label: "Confirmar Contraseña", icon: Icons.lock_open),
              CustomButon(label: 'Registrarse'),
            ],
          ),
        )
      ]),
    ));
  }

  Widget backLoginPage() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
    );
  }
}
