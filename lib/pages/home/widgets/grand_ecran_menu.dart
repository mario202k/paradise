import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paradise/generated/l10n.dart';
import 'package:paradise/pages/home/widgets/widgetLayoutMenu.dart';
import 'package:paradise/providers/myChangeNotifier.dart';

class GrandEcranMenu extends StatelessWidget {
  final BoxConstraints constraints;
  final MyChangeNotifier myChangeNotifier;
  final S delegate;
  final AnimationController animationFirstArrowController;
  final AnimationController animationSecondArrowController;
  final FocusNode focusNodeMeat = FocusNode();
  final GlobalKey dropdownKeyMeat = GlobalKey();

  GrandEcranMenu(
      {this.constraints,
      this.myChangeNotifier,
      this.delegate,
      this.animationFirstArrowController,
      this.animationSecondArrowController});

  @override
  Widget build(BuildContext context) {
    print('buildGrandEcran');
    return ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: constraints.minWidth,
            minHeight: constraints.minHeight,
            maxHeight: constraints.maxHeight,
            maxWidth: constraints.maxWidth),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: const AssetImage(
                      'assets/images/1B9A8637-scaled-e1601537457173.jpg'),
                ),
                Container(
                  color: Colors.black54,
                  height:constraints.maxWidth<1900? (997 * constraints.maxWidth) / 1900: 997,
                  child: Center(
                      child: SizedBox(
                    width: constraints.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          delegate.bienvenueAuParadiseGrill,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,overflow: TextOverflow.visible,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: 400,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FaIcon(
                                FontAwesomeIcons.lightUtensils,
                              ),
                            ),
                            Container(
                              height: 1,
                              width: 400,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          delegate.paradiseGrillSteakHousePizzaRestaurant,
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Column(
                          children: [
                            OutlineButton(
                              onPressed: () {},

                              borderSide: BorderSide(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.onPrimary),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                                child: Text(delegate.enSavoirPlus,style: Theme.of(context).textTheme.bodyText1,),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ),
              ],
            ),
            Container(
              width: constraints.maxWidth,
              height: 40,
              color: Theme.of(context).colorScheme.secondaryVariant,

            ),
            // Container(
            //   height: 160,
            //
            //   constraints: BoxConstraints(
            //     minWidth: constraints.maxWidth,
            //   ),
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).colorScheme.secondary,
            //     boxShadow: <BoxShadow>[
            //       BoxShadow(
            //           color: Colors.black54,
            //           blurRadius: 15.0,
            //           offset: const Offset(0.0, 0.75))
            //     ],
            //   ),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       ...myChangeNotifier.typeToString.values.map((e) => e ==
            //               delegate.boissons
            //           ? MouseRegion(
            //             onEnter: (_) {
            //               print('onEnter');
            //               animationFirstArrowController.forward();
            //               //openDropdown();
            //             },
            //             onExit: (_) {
            //               print('onExit');
            //               animationFirstArrowController.reverse();
            //               //openDropdown();
            //             },
            //             child: LayoutMenu(),
            //           )
            //           : e == delegate.viandes
            //               ? MouseRegion(
            //                   onEnter: (_) {
            //                     print('onEnter');
            //                     animationSecondArrowController.forward();
            //                     FocusScope.of(context)
            //                         .requestFocus(focusNodeMeat);
            //                   },
            //                   onExit: (_) {
            //                     print('onExit');
            //                     animationSecondArrowController.reverse();
            //                     focusNodeMeat.unfocus();
            //                   },
            //                   child: LayoutMenu(Row(
            //                     mainAxisSize: MainAxisSize.min,
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment:
            //                         CrossAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                         e,
            //                         style: Theme.of(context)
            //                             .textTheme
            //                             .bodyText1,
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 10, top: 5),
            //                         child: AnimatedBuilder(
            //                             animation:
            //                                 animationSecondArrowController,
            //                             builder: (_, __) {
            //                               return Transform.rotate(
            //                                 origin: Offset(0, -1),
            //                                 angle:
            //                                     animationSecondArrowController
            //                                             .value *
            //                                         math.pi,
            //                                 child: FaIcon(
            //                                   FontAwesomeIcons
            //                                       .lightChevronDown,
            //                                   color: Theme.of(context)
            //                                       .colorScheme
            //                                       .onPrimary,
            //                                   size: 12,
            //                                 ),
            //                               );
            //                             }),
            //                       )
            //                     ],
            //                   )),
            //                 )
            //               : LayoutMenu(Text(
            //                   e,
            //                   style: Theme.of(context).textTheme.bodyText1,
            //                   textAlign: TextAlign.center,
            //                 ))),
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 22),
            //         child: SizedBox(
            //           height: 27,
            //           child: Image(
            //             image: AssetImage('assets/drapeauFr.png'),
            //             fit: BoxFit.contain,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ));
  }
}
