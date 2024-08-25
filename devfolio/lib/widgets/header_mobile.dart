import 'package:devfolio/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/widgets/site_logo.dart';
import 'package:devfolio/constants/colors.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    // Main
    //   Container(
    // height: 60,
    // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    // width: double.maxFinite,
    // decoration: kHeaderDecoration,
    // child: Row(
    //   children: [
    //     SiteLogo(
    //       onTap: () {},
    //     ),
    return Container(
      height: 50.0,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(
              Icons.menu,
              color: CustomColor.whiteSecondary,
            ),
          ),
          const SizedBox(width: 15.0)
        ],
      ),
    );
  }
}
