import 'package:apphud/apphud.dart';
import 'package:fitess_style_132/main.dart';
import 'package:fitess_style_132/pagesss/main_screen.dart';
import 'package:fitess_style_132/services/web_view_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({super.key, this.isClose = false});
  final bool isClose;

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  bool sdfaafadfa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            if (widget.isClose) {
              Navigator.pop(context);
            } else {
              Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => const MainScreen(),
                ),
                (route) => false,
              );
            }
          },
          child: const Icon(
            Icons.close_rounded,
            size: 33,
          ),
        ),
        actions: [
          InkWell(
            onTap: () async {
              final hasPremiumAccess = await Apphud.hasPremiumAccess();
              final hasActiveSubscription =
                  await Apphud.hasActiveSubscription();
              if (hasPremiumAccess || hasActiveSubscription) {
                await prefs.setBool('ispremmmsd', true);
                showDialog(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Success!'),
                    content: const Text('Your purchase has been restored!'),
                    actions: [
                      CupertinoDialogAction(
                        isDefaultAction: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MainScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Restore purchase'),
                    content: const Text(
                        'Your purchase is not found. Write to support: https://forms.gle/9L6kSU6cEqbfK4CT7'),
                    actions: [
                      CupertinoDialogAction(
                        isDefaultAction: true,
                        onPressed: () => {Navigator.of(context).pop()},
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              }
            },
            child: Text(
              'Restore purchases',
              style: TextStyle(
                fontSize: 14.h,
                fontWeight: FontWeight.w400,
                fontFamily: family,
              ),
            ),
          ),
          SizedBox(width: 22.w),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(width: double.infinity),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56),
                child: Image.asset(
                  'assets/images/prem_image.png',
                ),
              ),
            ),
            Text(
              'Get Premium',
              style: TextStyle(
                fontSize: 30.h,
                fontWeight: FontWeight.w700,
                fontFamily: family,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xff202020),
                  width: 2,
                ),
              ),
              child: FittedBox(
                child: Text(
                  'Unlock “Mindful Breathing Integration”',
                  style: TextStyle(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w700,
                    fontFamily: family,
                    color: const Color(0xff505050),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xff202020),
                  width: 2,
                ),
              ),
              child: Text(
                'Unlock Gallery Photo',
                style: TextStyle(
                  fontSize: 16.h,
                  fontWeight: FontWeight.w700,
                  fontFamily: family,
                  color: const Color(0xff505050),
                ),
              ),
            ),
            SizedBox(height: 33.h),
            InkWell(
              onTap: () async {
                setState(() {
                  sdfaafadfa = true;
                });

                final apphudPaywalls = await Apphud.paywalls();
                print(apphudPaywalls);

                await Apphud.purchase(
                  product: apphudPaywalls?.paywalls.first.products?.first,
                ).whenComplete(
                  () async {
                    if (await Apphud.hasPremiumAccess() ||
                        await Apphud.hasActiveSubscription()) {
                      final hasPremiumAccess = await Apphud.hasPremiumAccess();
                      final hasActiveSubscription =
                          await Apphud.hasActiveSubscription();
                      if (hasPremiumAccess || hasActiveSubscription) {
                        await prefs.setBool('ispremmmsd', true);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: const Text('Success!'),
                            content:
                                const Text('Your purchase has been restored!'),
                            actions: [
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const MainScreen(),
                                    ),
                                    (route) => false,
                                  );
                                },
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: const Text('Restore purchase'),
                            content: const Text(
                                'Your purchase is not found. Write to support: https://forms.gle/9L6kSU6cEqbfK4CT7'),
                            actions: [
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                onPressed: () => {Navigator.of(context).pop()},
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      }
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MainScreen(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                );

                setState(() {
                  sdfaafadfa = false;
                });
                // await prefs.setBool('ispremmmsd', true);
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   CupertinoPageRoute(
                //     builder: (context) => const MainScreen(),
                //   ),
                //   (route) => false,
                // );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 33, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xff202020),
                    width: 2,
                  ),
                ),
                child: sdfaafadfa
                    ? const CircularProgressIndicator.adaptive()
                    : Text(
                        'Buy Premium \$0.99',
                        style: TextStyle(
                          fontSize: 16.h,
                          fontWeight: FontWeight.w600,
                          fontFamily: family,
                          color: const Color(0xffE80000),
                        ),
                      ),
              ),
            ),
            SizedBox(height: 23.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WebStyle(
                          url:
                              'https://docs.google.com/document/d/13xjm0lO7dnYWHo2lyFSJA6MP6tKQLKVQO75-F9putk8/edit?usp=sharing',
                          title: 'Privacy Policy',
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w600,
                      fontFamily: family,
                    ),
                  ),
                ),
                SizedBox(width: 22.w),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WebStyle(
                          url:
                              'https://docs.google.com/document/d/1IrSwgj1U_g5xH0hgZiTh5LyXmTTbf701SjdkoM3Vu8M/edit?usp=sharing',
                          title: 'Terms of use',
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Terms of Use',
                    style: TextStyle(
                      fontSize: 16.h,
                      fontWeight: FontWeight.w600,
                      fontFamily: family,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 23.h),
          ],
        ),
      ),
    );
  }
}
