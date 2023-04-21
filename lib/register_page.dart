import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar: const ColorBuilder(
          Colors.transparent,
          Colors.blue,
        ),
        textColorAppBar: const ColorBuilder(
          Colors.white,
        ),
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1423589989400-cc0270157ed0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.36),
                height: 900,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: colorAnimated.background,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: colorAnimated.background,
    elevation: 0,
    centerTitle: true,
    title: Text(
      "Animated AppBar",
      style: TextStyle(color: colorAnimated.color),
    ),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      color: colorAnimated.color,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.favorite,
          color: colorAnimated.color,
        ),
      )
    ],
  );
}
