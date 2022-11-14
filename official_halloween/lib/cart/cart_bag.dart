import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:official_halloween/cart/shipping.dart';

import '../controller/cart_controller.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Shopping Cart ( ${cartController.total.value.toString()} item )",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/back.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 300,
        ),
        // Expanded(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: ListView.builder(
        //       itemCount: cartController.cartItems.length,
        //       itemBuilder: (context, index) {
        //         var widthSize = MediaQuery.of(context).size;
        //         // var currentItems =
        //         //     cartController.cartItems[index]; //cartItems[index];
        //         return Card(
        //           color: Colors.grey.shade400,
        //           shape: const RoundedRectangleBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(20)),
        //           ),
        //           //borderRadius: const BorderRadius.all(Radius.circular(20)),

        //           child: Row(
        //             children: [
        //               SizedBox(
        //                 width: 100,
        //                 height: 100,
        //                 child: Image.network(
        //                   cartController.cartItems[index].product!.image
        //                       .toString()
        //                       .toString(),
        //                 ),
        //               ),
        //               Column(
        //                 children: [
        //                   Text(
        //                     cartController.cartItems[index].product!.name
        //                         .toString(),
        //                     style: GoogleFonts.robotoMono(
        //                       textStyle: const TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.black,
        //                           fontSize: 15,
        //                           height: 1.5),
        //                     ),
        //                   ),
        //                 ],
        //               )
        //             ],
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),

        Text(
          "Total Price:  \$${0} ",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
        ),

        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(bottom: 200),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShippingMethod(),
                ),
              );
            },
            child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent[400],
                  borderRadius: BorderRadius.circular(15),
                ),
                //child: Center(

                child: Center(
                  child: Text(
                    'Continue To Shipping',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                )
                //),
                ),
          ),
        ),
      ]),
    );
  }
}
