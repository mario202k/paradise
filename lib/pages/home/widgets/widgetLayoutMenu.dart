import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paradise/generated/l10n.dart';

class LayoutMenu extends StatefulWidget {
  final S delagate;
  final String name;
  final AnimationController animationFirstArrowController;
  final AnimationController animationSecondArrowController;


  LayoutMenu(this.delagate, this.name, this.animationFirstArrowController,
      this.animationSecondArrowController);

  @override
  _LayoutMenuState createState() => _LayoutMenuState();
}

class _LayoutMenuState extends State<LayoutMenu> {
  bool displayGrey = false;

  @override
  Widget build(BuildContext context) {
    // return MouseRegion(
    //   onEnter: (_) {
    //     widget.delagate.n?
    //     animationFirstArrowController.forward();
    //     setState(() {
    //       displayGrey = true;
    //     });
    //   },
    //   onExit: (_) {
    //     animationFirstArrowController.reverse();
    //     setState(() {
    //       displayGrey = false;
    //     });
    //   },
    //   child: Container(
    //     color: displayGrey ? Colors.black26 : null,
    //     margin:
    //         EdgeInsetsDirectional.only(start: 12, end: 12, bottom: 0, top: 0),
    //     child: Stack(
    //       children: [
    //         Center(
    //             child:
    //     widget.name ==
    //     widget.delagate.boissons?
    //             Row(
    //           mainAxisSize: MainAxisSize.min,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Text(
    //               e,
    //               style:
    //               Theme.of(context).textTheme.bodyText1,
    //               textAlign: TextAlign.center,
    //             ),
    //             Padding(
    //               padding:
    //               const EdgeInsets.only(left: 10, top: 5),
    //               child: AnimatedBuilder(
    //                   animation:
    //                   animationFirstArrowController,
    //                   builder: (_, __) {
    //                     return Transform.rotate(
    //                       origin: Offset(0, -1),
    //                       angle: animationFirstArrowController
    //                           .value *
    //                           math.pi,
    //                       child: FaIcon(
    //                         FontAwesomeIcons.lightChevronDown,
    //                         color: Theme.of(context)
    //                             .colorScheme
    //                             .onPrimary,
    //                         size: 12,
    //                       ),
    //                     );
    //                   }),
    //             )
    //           ],
    //         )
    //         :widget.name ==
    //         widget.delagate.viandes?Row(
    //       mainAxisSize: MainAxisSize.min,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment:
    //       CrossAxisAlignment.center,
    //       children: [
    //         Text(
    //           e,
    //           style: Theme.of(context)
    //               .textTheme
    //               .bodyText1,
    //           textAlign: TextAlign.center,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(
    //               left: 10, top: 5),
    //           child: AnimatedBuilder(
    //               animation:
    //               animationSecondArrowController,
    //               builder: (_, __) {
    //                 return Transform.rotate(
    //                   origin: Offset(0, -1),
    //                   angle:
    //                   animationSecondArrowController
    //                       .value *
    //                       math.pi,
    //                   child: FaIcon(
    //                     FontAwesomeIcons
    //                         .lightChevronDown,
    //                     color: Theme.of(context)
    //                         .colorScheme
    //                         .onPrimary,
    //                     size: 12,
    //                   ),
    //                 );
    //               }),
    //         )
    //       ],
    //     ):Text(
    //       widget.name,
    //       style: Theme.of(context).textTheme.bodyText1,
    //       textAlign: TextAlign.center,
    //     )
    //         ),
    //         displayGrey
    //             ?Positioned.fill(
    //           child: Align(
    //             alignment: Alignment.bottomCenter,
    //             child: Container(
    //               clipBehavior: Clip.hardEdge,
    //               height: 2,
    //               margin: EdgeInsetsDirectional.only(
    //                   start: 0, end: 0, bottom: 0, top: 0),
    //               decoration: BoxDecoration(
    //                 color: Theme.of(context).colorScheme.primary,
    //                 border: Border(
    //                   bottom: BorderSide(
    //                     color: Theme.of(context).colorScheme.primary,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ): SizedBox.shrink(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
