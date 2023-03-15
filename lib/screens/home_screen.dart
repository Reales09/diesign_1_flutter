import 'package:design_1/widgets/custom_bottom_navigationbar.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/card_table.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          Background(),

          //Home Body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // titulo
          PageTittle(),
          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}
