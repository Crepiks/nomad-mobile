import 'package:flutter/material.dart';
import 'package:nomad/home/views/components/notifications_button.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/avatar.png')))),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "С возвращением,",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    "Саяжан Онласын",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
          const NotificationsButton()
        ],
      ),
    );
  }
}
