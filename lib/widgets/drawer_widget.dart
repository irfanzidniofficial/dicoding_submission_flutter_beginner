import 'package:dicoding_submission_flutter_beginner/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: Column(
            children: [
              const Text(
                "Personalize your search & get unlimited access to features",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignInPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Login/ Create Account",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          shape: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          leading: const Icon(
            Icons.search,
          ),
          title: const Text(
            "Beli",
          ),
        ),
        ListTile(
          onTap: () {},
          shape: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          leading: const Icon(
            Icons.search,
          ),
          title: const Text(
            "Disewa",
          ),
        ),
        ListTile(
          onTap: () {},
          shape: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          leading: const Icon(
            Icons.real_estate_agent,
          ),
          title: const Text(
            "Properti Baru",
          ),
        ),
        ListTile(
          onTap: () {},
          shape: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          leading: const Icon(
            Icons.lightbulb,
          ),
          title: const Text(
            "Cari Agen",
          ),
        ),
        ListTile(
          onTap: () {},
          shape: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          leading: const Icon(
            Icons.chat,
          ),
          title: const Text(
            "Tanya Properti",
          ),
        ),
      ],
    );
  }
}
