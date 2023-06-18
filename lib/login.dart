import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFFFA500),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * .25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/topImage.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Merhaba, \nHosgeldin",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60),
                    TextField(
                      decoration: customInputDecoration("Kullanici Adi"),
                    ),
                    SizedBox(height: 40),
                    TextField(
                      decoration: customInputDecoration("Sifre"),
                    ),
                    customSizedBox(),
                    Center(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                              onPressed: () {},
                              child: Container(
                                child: Text(
                                  "Sifremi Unuttum",
                                  style: TextStyle(
                                    color: Colors.purple[222],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 210,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 65),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(57),
                              color: Color(0xFF0000FF)),
                          child: Center(
                            child: Container(
                              child: Text(
                                "Giriş Yap",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    customSizedBox(),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Hesap Olustur',
                          style: TextStyle(
                            color: Colors.purple[222],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
        height: 40,
      );

  InputDecoration customInputDecoration(String hinText) {
    return InputDecoration(
      hintText: hinText,
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}
