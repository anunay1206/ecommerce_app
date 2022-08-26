import 'package:ecommerce_anunay/constants.dart';
import 'package:ecommerce_anunay/models/Product.dart';
import 'package:ecommerce_anunay/screens/Welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_anunay/models/Category.dart';
import 'package:ecommerce_anunay/screens/home/components/section_title.dart';
import 'package:ecommerce_anunay/screens/home/components/product_card.dart';
import 'package:ecommerce_anunay/screens/home/components/new_arrival_products.dart';
import 'package:ecommerce_anunay/screens/home/components/popular_products.dart';
import 'package:ecommerce_anunay/screens/details/components/color_dot.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.grey.shade300,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                      )),
                    ),
                    // Text(
                    //   "ShopAtHome",
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 26),
                    // )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: Icon(Icons.help),
              ),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: Icon(Icons.info_rounded),
              ),
              title: Text(
                "About Us",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ));
                },
                icon: Icon(Icons.exit_to_app),
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: SvgPicture.asset("assets/icons/menu.svg"),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "E-7 ARERA COLONY, BHOPAL",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ShopAtHome",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              "Best Items only!!",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search..",
                        filled: true,
                        fillColor: Colors.white,
                        border: outlineInputBorder,
                        enabledBorder: outlineInputBorder,
                        focusedBorder: outlineInputBorder,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset("assets/icons/Search.svg"),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: SizedBox(
                            height: 48,
                            width: 48,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              defaultBorderRadius)))),
                              child:
                                  SvgPicture.asset("assets/icons/Filter.svg"),
                            ),
                          ),
                        ))),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                demo_categories.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: CategoryCard(
                    icon: demo_categories[index].icon,
                    title: demo_categories[index].title,
                    press: () {},
                  ),
                ),
              )),
            ),
            const SizedBox(
              height: 3,
            ),
            const NewArrival(),
            const SizedBox(
              height: 3,
            ),
            const Popular(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
              label: "Explore"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
              label: "Cart"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
              label: "Profile"
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.icon, required this.title, required this.press})
      : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 4,
            vertical: defaultPadding / 2,
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                icon,
                height: 40,
                width: 40,
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none);
