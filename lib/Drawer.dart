import 'package:flutter/material.dart';

import 'setting.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => DrawerScreenState();
}

class DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Widi Arrohman"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/img/widi.jpg")),
            accountEmail: Text("widiarrohman1234@gmail.com"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "Setting",
            onTilePressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const Setting(),
              ),
            ),
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "Contacs",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark,
            title: "Saved Message",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
