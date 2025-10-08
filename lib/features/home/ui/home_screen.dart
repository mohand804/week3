import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week3/core/helpers/spacing.dart';
import 'package:week3/core/theming/colors.dart';
import 'package:week3/features/home/data/model/products_requset_model.dart';
import 'package:week3/features/home/logic/cubit/products_cubit.dart';
import 'package:week3/features/home/ui/widget/bottom_nav_bar.dart';
import 'package:week3/features/home/ui/widget/categories_bloc_builder.dart';
import 'package:week3/features/home/ui/widget/drawer_body.dart';
import 'package:week3/features/home/ui/widget/home_headr.dart';
import 'package:week3/features/home/ui/widget/product_bloc_builder.dart';
import 'package:week3/features/home/ui/widget/search_bar_with_voice_button.dart';
import 'package:week3/features/home/ui/widget/section_header.dart';
import 'package:week3/features/home/ui/widget/user_greeting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getProducts(
      ProductsRequsetModel(page: 1, pageSize: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBody(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeHeadr(),
                verticalSpace(16),
                UserGreeting(),
                verticalSpace(16),
                SearchBarWithVoiceButton(),
                verticalSpace(16),
                SectionHeader(title: 'Choose Category', subtitle: 'View All'),
                verticalSpace(16),
                CategoriesBlocBuilder(),
                verticalSpace(16),
                SectionHeader(title: 'Featured Products', subtitle: 'View All'),
                verticalSpace(16),
                ProductBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
