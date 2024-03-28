import 'package:flutter/material.dart';
import 'package:dicoding_submission_flutter_beginner/pages/home_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return const SignInSmallPage(
              visible: false,
              paddingH: 20,
            );
          } else if (constraints.maxWidth <= 900) {
            return const SignInSmallPage(
              visible: false,
              paddingH: 120,
            );
          } else {
            return const SignInSmallPage(
              visible: true,
              paddingH: 60,
            );
          }
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: RichText(
          text: const TextSpan(
            text: "Saya setuju untuk Omah's ",
            style: TextStyle(
              color: Colors.grey,
            ),
            children: [
              TextSpan(
                text: "Persyaratan Layanan ",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              TextSpan(text: "dan"),
              TextSpan(
                text: " Kebijakan Privasi ",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text:
                    "termasuk pengumpulan, penggunaan, dan pengungkapan informasi pribadi saya.",
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SignInSmallPage extends StatelessWidget {
  final double paddingH;
  final bool visible;
  const SignInSmallPage({
    Key? key,
    required this.paddingH,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Visibility(
            visible: visible,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 60,
                  top: 60,
                ),
                child: Image.asset(
                  'assets/images/img_banner.jpg',
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  "Selamat Datang di Omah.com",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingH,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingH,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingH,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ));
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Atau"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: paddingH),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/ic_google.png",
                          width: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Lanjutkan dengan Google",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Apakah anda agen property?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Log In ke AggentNet",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
