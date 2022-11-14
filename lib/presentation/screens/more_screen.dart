import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../logic/navigation/size.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: deviceHeight(context) * 0.82,
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                      '25.12.2022 - Winter Convention - Trung tâm Văn hóa Quận '),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                      '27-28.08.2022 - Vietnam-Japan COMIC FES- Nhà thi đấu Nguyễn Du'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                      '02.10.2022 - Cosplay Expo 2022- AEON Tân Phú '),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                      '01.01.2023 - Otaku Festival - Trung tâm Văn hóa Quận 5'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                      '25-26.02.2023 - Japan Vietnam Festival - Công viên 23 tháng 9'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '25-26.02.2023 - Japan Vietnam Festival - Công viên 23 tháng 9',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
