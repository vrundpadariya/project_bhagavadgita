import 'package:flutter/cupertino.dart';

class detailpage extends StatelessWidget {
  const detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    allData data = ModalRoute.of(context)!.settings.arguments as allData;
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/s.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 90,
                ),
                Text(
                  "${data.sanskrut}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xff820000,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                  height: 3,
                  color: Color(
                    0xff820000,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "${data.gujrati}",
                  style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600,
                    // fontWeight: FontWeight.bold,
                    color: Color(0xff820000),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                Text(
                  "${data.english}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  };
  }
}
