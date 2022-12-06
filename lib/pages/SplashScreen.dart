import 'package:flutter/material.dart';

//Clas clases se crean de esta forma
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/splash.png", height: 300),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "Muebles a Medida",
              style: TextStyle(
                color: Color(0xFFFF8A65),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              //utilizo esto para que una vez que avance al home no pueda volver atras
              Navigator.pushReplacementNamed(context, "homePage");
            },
            //para animaciones en el contenedor
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFFF8A65)),
              child: Text(
                "Empecemos",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )),
    );
  }
}
