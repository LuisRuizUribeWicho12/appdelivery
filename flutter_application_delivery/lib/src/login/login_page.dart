import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_delivery/src/login/login_controller.dart';
import 'package:flutter_application_delivery/src/utils/my_colors.dart';
import 'package:flutter_application_delivery/widgets/custom_button.dart';
import 'package:flutter_application_delivery/widgets/custom_input.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_application_delivery/helpers/circle_top.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Init State');
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      print('Scheduler binding');
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Init State');

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(top: -80, left: -100, child: CircleTop()),
            Positioned(
              child: TextLogin(),
              top: 60,
              left: 25,
            ),
            SingleChildScrollView(
              child: Column(children: [
                _lottieAnimation(),
                const CustomInput(
                    label: 'Correo Electronico', icon: Icons.mail),
                const CustomInput(
                  label: 'Password',
                  icon: Icons.lock,
                ),
                CustomButon(label: 'Ingresar'),
                _textFieldAccount(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _lottieAnimation() {
    return Container(
      margin: EdgeInsets.only(top: 150, bottom: 80),
      child: Lottie.asset('assets/json/delivery.json',
          width: 350, height: 200, fit: BoxFit.fill),
    );
  }

  Widget _imageBanner() {
    return Container(
        margin: EdgeInsets.only(top: 100, bottom: 70),
        child: Image.asset('assets/img/delivery.png', width: 200, height: 200));
  }

  Widget _textFieldAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: () {
            LogginControler(context).goToRegisterPage();
          },
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: MyColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
