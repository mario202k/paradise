import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paradise/generated/l10n.dart';
import 'package:paradise/pages/home/widgets/grand_ecran_menu.dart';
import 'package:paradise/providers/myChangeNotifier.dart';

class MyHomePage extends HookWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    print('buildMyHomePage');
    final delegate = S.of(context);
    final myChangeNotifier = useProvider(myChangeNotifierProvider);
    myChangeNotifier.initial(delegate);

    final animationFirstArrowController = useAnimationController(
        duration: Duration(milliseconds: 200), initialValue: 0.0);

    final animationSecondArrowController = useAnimationController(
        duration: Duration(milliseconds: 200), initialValue: 0.0);

    return Scaffold(
      body: Stack(
        children: [
          LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: headerImage(
                  context,
                  constraints,
                  animationFirstArrowController,
                  animationSecondArrowController,
                  delegate,
                  myChangeNotifier),
            );
          }),
        ],
      ),
    );
  }

  Widget headerImage(
      BuildContext context,
      BoxConstraints constraints,
      AnimationController animationFirstArrowController,
      AnimationController animationSecondArrowController,
      S delegate,
      MyChangeNotifier myChangeNotifier) {
    return constraints.maxWidth <= 600
        ? ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: constraints.minWidth,
                minHeight: constraints.minHeight,
                maxHeight: constraints.maxHeight,
                maxWidth: constraints.maxWidth),
            child: Column(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: 100,
                  color: Theme.of(context).colorScheme.primary,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            S.of(context).monPanier,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints(maxHeight: 60, maxWidth: 40),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: FaIcon(
                                        FontAwesomeIcons.lightShoppingBag,
                                        size: 45,
                                      ))),
                              Positioned.fill(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Text(
                                          '000',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Theme.of(context).colorScheme.background,
                  width: constraints.maxWidth,
                  height: 50,
                )
              ],
            ))
        : constraints.maxWidth <= 750
            ? ConstrainedBox(
                constraints: BoxConstraints(
                    minWidth: constraints.minWidth,
                    minHeight: constraints.minHeight,
                    maxHeight: constraints.maxHeight,
                    maxWidth: constraints.maxWidth),
                child: Column(
                  children: [
                    Container(
                      width: constraints.maxWidth,
                      height: 100,
                      color: Theme.of(context).colorScheme.primary,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                S.of(context).monPanier,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxHeight: 60, maxWidth: 40),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: FaIcon(
                                            FontAwesomeIcons.lightShoppingBag,
                                            size: 45,
                                          ))),
                                  Positioned.fill(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 3),
                                            child: Text(
                                              '000',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      //color: Theme.of(context).colorScheme.background,
                      width: constraints.maxWidth,
                      height: 50,
                    )
                  ],
                ))
            : GrandEcranMenu(
                constraints: constraints,
                animationFirstArrowController: animationFirstArrowController,
                animationSecondArrowController: animationSecondArrowController,
                delegate: delegate,
                myChangeNotifier: myChangeNotifier,
              );
  }

// ConstrainedBox grandEcran(BoxConstraints constraints, BuildContext context, MyChangeNotifier myChangeNotifier, S delegate, AnimationController animationFirstArrowController, AnimationController animationSecondArrowController) {
//   return ConstrainedBox(
//             constraints: BoxConstraints(
//                 minWidth: constraints.minWidth,
//                 minHeight: constraints.minHeight,
//                 maxHeight: constraints.maxHeight,
//                 maxWidth: constraints.maxWidth),
//             child: Column(
//               children: [
//                 Container(
//                   width: constraints.maxWidth,
//                   height: 100,
//                   color: Theme.of(context).colorScheme.primary,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 35),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: Text(
//                             S.of(context).monPanier,
//                             style: Theme.of(context).textTheme.bodyText1,
//                           ),
//                         ),
//                         ConstrainedBox(
//                           constraints:
//                               BoxConstraints(maxHeight: 60, maxWidth: 40),
//                           child: Stack(
//                             children: [
//                               Positioned.fill(
//                                   child: Align(
//                                       alignment: Alignment.center,
//                                       child: FaIcon(
//                                         FontAwesomeIcons.lightShoppingBag,
//                                         size: 45,
//                                       ))),
//                               Positioned.fill(
//                                   child: Align(
//                                       alignment: Alignment.center,
//                                       child: Padding(
//                                         padding:
//                                             const EdgeInsets.only(top: 10),
//                                         child: Text(
//                                           '000',
//                                           style: Theme.of(context)
//                                               .textTheme
//                                               .bodyText1,
//                                         ),
//                                       ))),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   constraints: BoxConstraints(
//                     minHeight: 60,
//                     maxHeight: 120,
//                     minWidth: constraints.maxWidth,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).colorScheme.background,
//                     boxShadow: <BoxShadow>[
//                       BoxShadow(
//                           color: Colors.black54,
//                           blurRadius: 15.0,
//                           offset: Offset(0.0, 0.75))
//                     ],
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       ...myChangeNotifier.typeToString.values
//                           .map((e) => e == delegate.boissons ?
//                       Column(
//                             children: [
//                               Expanded(
//                                 child: MouseRegion(
//                                   onEnter: (_) {
//                                     print('onEnter');
//                                     animationFirstArrowController.forward();
//                                   },
//                                   onExit: (_) {
//                                     print('onExit');
//                                     animationFirstArrowController.reverse();
//                                   },
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         e,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .bodyText2,
//                                         textAlign: TextAlign.center,
//                                       ),
//                                       Padding(
//                                         padding:
//                                         const EdgeInsets.only(
//                                             left: 10, top: 5),
//                                         child: AnimatedBuilder(
//                                             animation:
//                                             animationFirstArrowController,
//                                             builder: (_, __) {
//                                               return Transform.rotate(
//                                                 origin: Offset(0, -1),
//                                                 angle:
//                                                 animationFirstArrowController
//                                                     .value *
//                                                     math.pi,
//                                                 child: FaIcon(
//                                                   FontAwesomeIcons
//                                                       .lightChevronDown,
//                                                   color: Theme.of(
//                                                       context)
//                                                       .colorScheme
//                                                       .onBackground,
//                                                   size: 12,
//                                                 ),
//                                               );
//                                             }),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 color: Theme.of(context).colorScheme.primary,
//                                 height: 2,width: 150,)
//                             ],
//                           ) :
//                           e==delegate.viandes?SizedBox(
//
//                             height: 60,
//                             child: MouseRegion(
//                               onEnter: (_) {
//                                 print('onEnter');
//                                 animationSecondArrowController.forward();
//
//                               },
//                               onExit: (_) {
//                                 print('onExit');
//                                 animationSecondArrowController.reverse();
//                               },
//                               child: Container(
//                                 color: Colors.green,
//
//                                 child: Column(
//                                   children: [
//                                     Expanded(
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.min,
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             e,
//                                             style: Theme.of(context)
//                                                 .textTheme
//                                                 .bodyText2,
//                                             textAlign: TextAlign.center,
//                                           ),
//                                           Padding(
//                                             padding:
//                                             const EdgeInsets.only(
//                                                 left: 10, top: 5),
//                                             child: AnimatedBuilder(
//                                                 animation:
//                                                 animationSecondArrowController,
//                                                 builder: (_, __) {
//                                                   return Transform.rotate(
//                                                     origin: Offset(0, -1),
//                                                     angle:
//                                                     animationSecondArrowController
//                                                         .value *
//                                                         math.pi,
//                                                     child: FaIcon(
//                                                       FontAwesomeIcons
//                                                           .lightChevronDown,
//                                                       color: Theme.of(
//                                                           context)
//                                                           .colorScheme
//                                                           .onBackground,
//                                                       size: 12,
//                                                     ),
//                                                   );
//                                                 }),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       color: Theme.of(context).colorScheme.primary,
//                                       height: 2,width: 150,)
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           )  : Text(
//                             e,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyText2,
//                             textAlign: TextAlign.center,
//                           ))
//                           .toList(),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 22),
//                         child: SizedBox(
//                           height: 27,
//                           child: Image(
//                             image: AssetImage('assets/drapeauFr.png'),
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ));
// }

}
