import 'package:flutter/material.dart';
import 'package:take_it_and_go/core/constants.dart';
import 'package:take_it_and_go/home.dart';
import 'package:take_it_and_go/screens/wishlist/wishlist.dart';
import 'package:take_it_and_go/widgets/icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        leading: IconButtons(
          icon: Icons.arrow_back,
          buttonFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Container(
            decoration: const BoxDecoration(),
            child: const Text('Logout'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                children: [
                  kHeight10,
                  Row(
                    children: const [
                      kWidth20,
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://www.personality-insights.com/wp-content/uploads/2017/12/default-profile-pic-e1513291410505.jpg'),
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(width: 70),
                      Text(
                        'Thushad T',
                        style: TextStyle(fontSize: 20, color: kBlackColor),
                      )
                    ],
                  ),
                  kHeight10,
                  Divider(thickness: 4, color: kGreyColor),
                  Column(
                    children: [
                      ProfileTitle(
                        title: 'Orders',
                        subTitle: 'Check your order status',
                      ),
                      kDivider,
                      ProfileTitle(
                        title: 'Wishlist',
                        subTitle: 'Your most loved styles',
                      ),
                      kDivider,
                      ProfileTitle(
                        title: 'Address',
                        subTitle: 'Save address for a hassle-free checkout',
                      ),
                      kDivider,
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

class ProfileTitle extends StatelessWidget {
  ProfileTitle({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  String title;
  String subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WishListScreen(),
          ),
        );
      },
      title: Text(title),
      subtitle: Text(
        subTitle,
        style: TextStyle(color: Colors.grey.shade500),
      ),
      trailing: IconButtons(
        icon: Icons.chevron_right,
        buttonFunction: () {},
      ),
    );
  }
}
