import 'package:flutter/material.dart';
import 'package:inline/Util/global_color.dart';
import 'package:inline/Util/global_text.dart';
import 'package:inline/Util/global_widget.dart';

class PageRegister extends StatelessWidget {
  static const routePage = 'routeRegister';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Registro',
          style: TextStyle(fontFamily: 'semibold'),
        ),
        backgroundColor: GlobalColor.colorPrincipal,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                containerInfo(),
                containerPhone(),
                containerUser(),
                containerButtom(context)
              ],
            ),
          )),
    );
  }

  Widget containerInfo() {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: GlobalWidget().textTitle(GlobalText.textRegister)
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
                borderSide:
                BorderSide(color: GlobalColor.colorEdge, width: .3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide:
                BorderSide(color: GlobalColor.colorEdge, width: .3)),
          )),
    );
  }

  Widget containerUser() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: const TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(),
          decoration: InputDecoration(
            hintText: 'Usuario',
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(Icons.perm_identity),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide:
                BorderSide(color: GlobalColor.colorEdge, width: .3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide:
                BorderSide(color: GlobalColor.colorEdge, width: .3)),
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
                  primary: GlobalColor.colorPrincipal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'REGISTRAR',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
