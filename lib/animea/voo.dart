// import 'package:flutter/material.dart';

// class CenterDot extends StatelessWidget {
//   CenterDot({super.key, required this.ctrl})
//       : padd = Tween<double>(
//           begin: 4.80,
//           end: 0.0,
//         ).animate(
//           CurvedAnimation(
//             parent: ctrl,
//             curve: const Interval(
//               0.1,
//               0.15,
//               curve: Curves.fastOutSlowIn,
//             ),
//           ),
//         ),
//         xscale = Tween<double>(
//           begin: 16.0,
//           end: 26.0,
//         ).animate(
//           CurvedAnimation(
//             parent: ctrl,
//             curve: const Interval(
//               0.0,
//               0.76,
//               curve: Curves.fastOutSlowIn,
//             ),
//           ),
//         ),
//         yscale = Tween<double>(
//           begin: 16.0,
//           end: 26.0,
//         ).animate(
//           CurvedAnimation(
//             parent: ctrl,
//             curve: const Interval(
//               0.50,
//               0.95,
//               curve: Curves.linear,
//             ),
//           ),
//         ),
//         scale = Tween<double>(
//           begin: 26.0,
//           end: 27.0,
//         ).animate(
//           CurvedAnimation(
//             parent: ctrl,
//             curve: const Interval(
//               0.94,
//               1.0,
//               curve: Curves.easeInToLinear,
//             ),
//           ),
//         ),
//         color = ColorTween(
//           begin: Colors.transparent,
//           end: Colors.indigo,
//         ).animate(
//           CurvedAnimation(
//             parent: ctrl,
//             curve: const Interval(
//               0.94,
//               0.95,
//               curve: Curves.ease,
//             ),
//           ),
//         ),
//         // scale2 = Tween<double>(
//         //   begin: 20.0,
//         //   end: 24.0,
//         // ).animate(
//         //   CurvedAnimation(
//         //     parent: ctrl,
//         //     curve: const Interval(
//         //       0.0,
//         //       0.15,
//         //       curve: Curves.ease,
//         //     ),
//         //   ),
//         // ),
//         // color2 = ColorTween(
//         //   begin: Colors.transparent,
//         //   end: Colors.indigo,
//         // ).animate(
//         //   CurvedAnimation(
//         //     parent: ctrl,
//         //     curve: const Interval(
//         //       0.15,
//         //       0.16,
//         //       curve: Curves.ease,
//         //     ),
//         //   ),
//         // ),
//         // accti = Tween<double>(
//         //   begin: 1.0,
//         //   end: 0.0,
//         // ).animate(
//         //   CurvedAnimation(
//         //     parent: ctrl,
//         //     curve: const Interval(
//         //       0.6,
//         //       0.8,
//         //       curve: Curves.ease,
//         //     ),
//         //   ),
//         // ),

//         transl = Tween<double>(
//           begin: -10.0,
//           end: 18.0,
//         ).animate(
//           CurvedAnimation(
//             parent: ctrl,
//             curve: const Interval(
//               0.0,
//               0.74,
//               curve: Curves.linear,
//             ),
//           ),
//         );

//   final Animation<double> ctrl;
//   final Animation<double> xscale;
//   final Animation<double> yscale;
//   final Animation<double> scale;
//   final Animation<double> padd;
//   // final Animation<double> scale2;
//   final Animation<double> transl;
//   final Animation<Color?> color;
//   // final Animation<Color?> color2;
//   // final Animation<double> accti;

//   Widget _buildChild(BuildContext context, Widget? child) {
//     // print(
//     // "x: ${xscale.value.round().toDouble()} ${yscale.value.round().toDouble()}");
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           transform: Matrix4.translationValues(transl.value, 0, 0),
//           width: 16,
//           height: 16,
//           decoration: const BoxDecoration(
//             color: Colors.indigo,
//             shape: BoxShape.circle,
//           ),
//         ),
//         Container(
//           alignment: Alignment.center,
//           decoration: BoxDecoration(color: color.value, shape: BoxShape.circle),
//           width: scale.value,
//           height: scale.value,
//           // padding: EdgeInsets.all(padd.value),
//           child: Container(
//             alignment: Alignment.center,
//             decoration: const ShapeDecoration(
//               shape: OvalBorder(),
//               color: Colors.indigo,
//             ),
//             width: xscale.value,
//             height: yscale.value,
//             // child: Container(
//             //   decoration: const BoxDecoration(
//             //     color: Colors.amber,
//             //     shape: BoxShape.circle,
//             //   ),
//             //   width: scale2.value,
//             //   height: scale2.value,
//             // ),
//           ),
//         ),
//         Container(
//           transform: Matrix4.translationValues(-transl.value, 0, 0),
//           width: 16,
//           height: 16,
//           decoration: const BoxDecoration(
//             color: Colors.indigo,
//             shape: BoxShape.circle,
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: ctrl,
//       builder: _buildChild,
//     );
//   }
// }

import 'package:flutter/material.dart';

class CenterDot extends StatelessWidget {
  CenterDot({super.key, required this.ctrl})
      : padd = Tween<double>(
          begin: 8.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: ctrl,
            curve: const Interval(
              0.94,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        xscale = Tween<double>(
          begin: 12.0,
          end: 20.0,
        ).animate(
          CurvedAnimation(
            parent: ctrl,
            curve: const Interval(
              0.2,
              0.86,
              curve: Curves.easeInOutCubicEmphasized,
            ),
          ),
        ),
        yscale = Tween<double>(
          begin: 12.0,
          end: 20.0,
        ).animate(
          CurvedAnimation(
            parent: ctrl,
            curve: const Interval(
              0.1,
              0.99,
              curve: Curves.easeIn,
            ),
          ),
        ),
        scale = Tween<double>(
          begin: 20.0,
          end: 22.0,
        ).animate(
          CurvedAnimation(
            parent: ctrl,
            curve: const Interval(
              0.94,
              1.0,
              curve: Curves.easeInToLinear,
            ),
          ),
        ),
        color = ColorTween(
          begin: Colors.transparent,
          end: Colors.indigo,
        ).animate(
          CurvedAnimation(
            parent: ctrl,
            curve: const Interval(
              0.94,
              0.95,
              curve: Curves.ease,
            ),
          ),
        ),
        // scale2 = Tween<double>(
        //   begin: 20.0,
        //   end: 24.0,
        // ).animate(
        //   CurvedAnimation(
        //     parent: ctrl,
        //     curve: const Interval(
        //       0.0,
        //       0.15,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),
        // color2 = ColorTween(
        //   begin: Colors.transparent,
        //   end: Colors.indigo,
        // ).animate(
        //   CurvedAnimation(
        //     parent: ctrl,
        //     curve: const Interval(
        //       0.15,
        //       0.16,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),
        // accti = Tween<double>(
        //   begin: 1.0,
        //   end: 0.0,
        // ).animate(
        //   CurvedAnimation(
        //     parent: ctrl,
        //     curve: const Interval(
        //       0.6,
        //       0.8,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),

        transl = Tween<double>(
          begin: -18.0,
          end: 18.0,
        ).animate(
          CurvedAnimation(
            parent: ctrl,
            curve: const Interval(
              0.2,
              0.80,
              curve: Curves.decelerate,
            ),
          ),
        );

  final Animation<double> ctrl;
  final Animation<double> xscale;
  final Animation<double> yscale;
  final Animation<double> scale;
  final Animation<double> padd;
  // final Animation<double> scale2;
  final Animation<double> transl;
  final Animation<Color?> color;
  // final Animation<Color?> color2;
  // final Animation<double> accti;

  Widget _buildChild(BuildContext context, Widget? child) {
    // print(
    // "x: ${xscale.value.round().toDouble()} ${yscale.value.round().toDouble()}");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          transform: Matrix4.translationValues(transl.value, 0, 0),
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Colors.indigo,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          alignment: Alignment.center,
          // color: Colors.amber,
          // decoration: BoxDecoration(color: color.value, shape: BoxShape.circle),
          // width: scale.value,
          // height: scale.value,
          child: Container(
            alignment: Alignment.center,
            // padding: EdgeInsets.all(padd.value),
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Colors.indigo,
            ),
            width: xscale.value,
            height: yscale.value,
            // child: Container(
            //   decoration: const BoxDecoration(
            //     color: Colors.amber,
            //     shape: BoxShape.circle,
            //   ),
            //   width: scale2.value,
            //   height: scale2.value,
            // ),
          ),
        ),
        Container(
          transform: Matrix4.translationValues(-transl.value, 0, 0),
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Colors.indigo,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ctrl,
      builder: _buildChild,
    );
  }
}
