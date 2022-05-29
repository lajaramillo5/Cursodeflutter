import 'package:flutter/material.dart';
import 'package:inline/View/page_chat.dart';
import 'package:inline/View/page_register.dart';

import '../Util/global_color.dart';

class PageLogin extends StatelessWidget {
  static String routePage = 'viewLogin';

  const PageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColor.colorPrincipal,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            containerLogo(),
            containerPhone(),
            containerButtom(context),
          ],
        ),
      )),
    );
  }

  Widget containerLogo() {
    return Column(
      children: const [
        Image(
          image: AssetImage('assets/image/logo.png'),
          width: 150,
        ),
        Text(
          'inLINE',
          style: TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'logo'),
        ),
      ],
    );
  }

  Widget containerPhone() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: const TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(),
          decoration: InputDecoration(
            hintText: 'Celular',
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.phone_android),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
          )),
    );
  }

  Widget containerButtom(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    PageChat.routePage,
                    (Route<dynamic> route) => route.isFirst);
              },
              child: const Text(
                'INICIAR SESIÓN',
                style:
                    TextStyle(color: GlobalColor.colorPrincipal, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.of(context).pushNamed(PageRegister.routePage);
              },
              child: const Text(
                'REGISTRATE',
                style:
                    TextStyle(color: GlobalColor.colorPrincipal, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
