import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF8A65),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20, left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFF8A65),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 2,
                        )
                      ]),
                  child: Badge(
                      badgeColor: Colors.red,
                      padding: EdgeInsets.all(6),
                      badgeContent: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          CupertinoIcons.cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),
          ),
          //Aqui vamos a poner el texto de bienvenida
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Text(
                  "Bienvenido",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Que es lo que estas buscando?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Comienza tu busqueda..",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.filter_list),
              ],
            ),
          ),
          //Aqui van a estar los productos que van a aparecer
          Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          )
        ],
      ))),
    );
  }
}
