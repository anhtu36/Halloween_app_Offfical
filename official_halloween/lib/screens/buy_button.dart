// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../controller/cart_controller.dart';
// import '../model/data_model.dart';

// class BuyButton extends StatelessWidget {
//   final Data product;

//   BuyButton({
//     super.key,
//     required this.product,
//   });
//   CartController cartController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         cartController.addItemInCart(product);
//       },
//       child: Container(
//         height: 50,
//         width: 200,
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Center(
//           child: Text(
//             'Buy Now',
//             style: GoogleFonts.poppins(
//               textStyle: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   fontSize: 18),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
