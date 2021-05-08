import 'package:flutter/material.dart';

class WhatsappBar extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(100);

  WhatsappBar({Key key}) : super(key: key);

  @override
  _WhatsappBarState createState() => _WhatsappBarState();
}

class _WhatsappBarState extends State<WhatsappBar>
    with TickerProviderStateMixin {
  final IconData searchIcon = Icons.search;
  final IconData moreSectionIcon = Icons.more_vert;
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: buildTabBarWp(),
      backgroundColor: Color(0xFF2A2F32),
      title: Text(
        'WhatsApp',
        style: TextStyle(color: Color(0xFFB1B3B5)),
      ),
      actions: [
        buildPaddingActionIcon(searchIcon),
        buildPaddingActionIcon(moreSectionIcon),
      ],
    );
  }

  Padding buildPaddingActionIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: InkWell(
        onTap: () {},
        child: Icon(
          icon,
          color: Color(0xFFB1B3B5),
        ),
      ),
    );
  }

  TabBar buildTabBarWp() {
    return TabBar(
      labelColor: Color(0xFF009688),
      unselectedLabelColor: Color(0xFFB1B3B5),
      tabs: [
        Tab(
          icon: Icon(
            Icons.camera_alt,
            size: 20,
          ),
        ),
        Tab(
          child: Text(
            "SOHBETLER",
            style: TextStyle(fontSize: 11),
          ),
        ),
        Tab(
            child: Text(
          "DURUM",
          style: TextStyle(fontSize: 11),
        )),
        Tab(
            child: Text(
          "ARAMALAR",
          style: TextStyle(
            fontSize: 11,
          ),
        )),
      ],
      indicatorColor: Color(0xFF009588),
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }
}
