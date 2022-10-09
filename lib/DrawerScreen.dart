import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerScreen extends StatefulWidget{
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
          accountName: Text("Nimas Rorun Nasiroh"),
          currentAccountPicture: CircleAvatar(
            backgroundImage:AssetImage("assets/img/nimas.jpeg"),
          ),
          accountEmail: Text("e41210035@polije.ac.id"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Secret Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Channel Chat",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "contacts",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "Saved Message",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "Calls",
            onTilePressed: (){},
          ),
        ],
      ),
    );
  }
}
class DrawerListTile extends StatelessWidget{
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed})
  :super(key:key);
  @override
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16),),
    );
  }
}
