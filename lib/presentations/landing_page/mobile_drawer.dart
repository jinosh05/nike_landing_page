import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../env.dart';
import '../../utils/size_config.dart';

class MobileAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const MobileAppBarWidget({Key? key, required this.preferredSiz})
      : super(key: key);
  final Size preferredSiz;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => preferredSiz;
}

class MobileDrawer extends StatefulWidget {
  MobileDrawer({Key? key}) : super(key: key);

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  List<IconData> _icons = [
    Icons.home,
    Icons.collections,
    Icons.info,
    Icons.call
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppBase.gradBlue,
              AppBase.gradPink,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.height_4,
            ),
            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.5),
              radius: SizeConfig.imgSize_25,
              child: Image.asset('assets/shoe.png'),
            ),
            SizedBox(
              height: SizeConfig.height_4,
            ),
            Divider(
              thickness: 3,
              color: AppBase.primaryColor,
            ),
            for (var i = 0; i < AppBase.headings.length; i++)
              ListTile(
                title: Text(
                  AppBase.headings[i],
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: SizeConfig.fs_03,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  _icons[i],
                  color: Colors.white,
                  size: SizeConfig.imgSize_7,
                ),
                onTap: () {
                  debugPrint('Pressed');
                  Navigator.of(context).pop();
                },
              )
          ],
        ),
      ),
    );
  }
}
