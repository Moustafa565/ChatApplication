import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_task/core/features/home/cubit/home_cubit.dart';
import 'package:nti_task/core/features/home/view/widgets/custom_botton.dart';
import 'package:nti_task/core/features/home/view/widgets/custom_botton_image.dart';
import 'package:nti_task/core/style/image_app.dart';
import 'package:nti_task/core/style/string_app.dart';

import '../../../../style/text_style_app.dart';
import '../widgets/custom_botton_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          HomeCubit cubit = BlocProvider.of(context);
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              drawer: Drawer(
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 200,
                        backgroundImage: NetworkImage(cubit.image)),
                    CustomBottonDrawer(
                      onTap: () {
                        cubit.changText(newText: StringApp.A);
                      },
                      text: StringApp.A,
                    ),
                    CustomBottonDrawer(
                      onTap: () {
                        cubit.changText(newText: StringApp.B);
                      },
                      text: StringApp.B,
                    ),
                    CustomBottonDrawer(
                      onTap: () {
                        cubit.changText(newText: StringApp.C);
                      },
                      text: StringApp.C,
                    ),
                    CustomBottonDrawer(
                      onTap: () {
                        cubit.changText(newText: StringApp.D);
                      },
                      text: StringApp.D,
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                backgroundColor: Colors.black,
                centerTitle: true,
                title: Text(
                  cubit.text,
                  style: textStyle,
                ),
              ),
              body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(cubit.image), fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                      child: Text(
                        cubit.count.toString(),
                        style: textStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 500,
                          ),
                          CustomBotton(
                              iconData: Icons.fingerprint,
                              onTap: () {
                                cubit.add();
                              }),
                          CustomBotton(
                              iconData: Icons.lock_reset_sharp,
                              onTap: () {
                                cubit.reset();
                              }),
                          CustomBotton(
                              iconData: Icons.exposure_minus_1,
                              onTap: () {
                                cubit.minus();
                              }),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomBottonImage(
                              image: ImageApp.backGroundImage2,
                              ontap: () {
                                cubit.changeImage(
                                    newImage: ImageApp.backGroundImage2);
                              }),
                          CustomBottonImage(
                              image: ImageApp.backGroundImage3,
                              ontap: () {
                                cubit.changeImage(
                                    newImage: ImageApp.backGroundImage3);
                              }),
                          CustomBottonImage(
                              image: ImageApp.backGroundImage4,
                              ontap: () {
                                cubit.changeImage(
                                    newImage: ImageApp.backGroundImage4);
                              })
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
