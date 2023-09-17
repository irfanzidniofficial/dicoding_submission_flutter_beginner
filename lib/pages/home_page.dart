import 'package:dicoding_submission_flutter_beginner/pages/detail_page.dart';
import 'package:dicoding_submission_flutter_beginner/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Omah"),
      ),
      drawer: Drawer(
        child: ListView(
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const DetailPage();
                  },
                ));
              },
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
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF0E2638),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text(
                    "Jelajahi Rumah Impianmu",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            hintText: "Search",
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: GridView.builder(
              physics: const PageScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            'assets/images/img_house_01.jpg',
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.red,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 8,
                              ),
                              child: const Text(
                                "APARTEMENT",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                          left: 8,
                          right: 8,
                        ),
                        child: Text(
                          "Rp. 1,2 M",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        child: Text(
                          "Apartemen Studio studo Stuioo",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        child: Text(
                          "Jakarta Barat",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
