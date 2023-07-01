import 'package:flutter/material.dart';
import 'package:flutter_application_delivery/src/utils/my_colors.dart';

class CustomInput extends StatelessWidget {
  // esta es la clase llamada CustomInput cuya extencion es de StatelessWidget
  final String
      label; // esta al igual que las demas son atributos cuyo tipo en este caso es String
  final IconData icon;
  final Color?
      color; //el signo de interrogacion quiere decir que no es un parametro obligatorio para recibir
  final Color? colorIcon;
  const CustomInput(
      //este es el contructor de la clase CustomInput asi mismo esta es una funcion
      {super.key, // esta funcion nos pide hacerle referencia a la llave principal
      required this.label, //al poner el texto require le decimos a la funcion que es necesario que envie ese dato
      this.icon = Icons
          .abc, //al hacer la igualacion se define un valor predeterminado en caso que no se le envie este dato tomara uno por defecto
      this.color,
      this.colorIcon});
  @override //este comando indica que en este cuerpo va a sobreescribir el codigo
  Widget build(BuildContext context) {
    //en este caso este es un metodo ya que esta dentro de una clase
    //asi mismo un widget es un un objeto por el cual se hace referencia atravez de la clase
    return Container(
      //como es un metodo es importante que se le indique que va a regresar en este caso es el codigo
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
          decoration: InputDecoration(
        hintText: label,
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
        hintStyle: TextStyle(color: color ?? MyColors.primaryColor),
        prefixIcon: Icon(
          icon,
          color: colorIcon ?? MyColors.primaryColor,
        ),
      )),
    );
  }
}
