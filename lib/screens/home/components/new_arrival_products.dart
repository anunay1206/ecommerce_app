import 'package:ecommerce_anunay/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'product_card.dart';
import 'package:ecommerce_anunay/models/Product.dart';
import 'section_title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  demo_product.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: ProductCard(
                          image: demo_product[index].image,
                          title: demo_product[index].title,
                          price: demo_product[index].price,
                          bgColor: demo_product[index].bgColor,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                    product: demo_product[index],
                                  ),
                                ));
                          },
                        ),
                      ))),
        )
      ],
    );
  }
}
