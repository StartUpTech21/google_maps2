// ignore_for_file: deprecated_member_use
/*
import 'dart:io';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:permission/permission.dart';

import 'Drawer.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool a4 = false;
  int radioValue = 0;
  PermissionName permissionName = PermissionName.Internet;
  String message = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        drawer: const DrawerScreen(),
        body: Center(
          child: Column(
            children: <Widget>[
              Offstage(
                offstage: !Platform.isAndroid,
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: a4,
                      onChanged: (v) {
                        setState(() {
                          a4 = v!;
                        });
                      },
                    ),
                    const Text('Location'),
                  ],
                ),
              ),
              const RaisedButton(
                  onPressed: Permission.openSettings,
                  child: Text("Open settings")),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }

  getPermissionsStatus() async {
    List<PermissionName> permissionNames = [];
    if (a4) permissionNames.add(PermissionName.Location);

    message = '';
    List<Permissions> permissions =
        await Permission.getPermissionsStatus(permissionNames);
    for (var permission in permissions) {
      message +=
          '${permission.permissionName}: ${permission.permissionStatus}\n';
    }
    setState(() {
      message;
    });
  }

  getSinglePermissionStatus() async {
    var permissionStatus =
        await Permission.getSinglePermissionStatus(permissionName);
    setState(() {
      message = permissionStatus.toString();
    });
  }

  requestPermissions() async {
    List<PermissionName> permissionNames = [];
    if (a4) permissionNames.add(PermissionName.Location);
    message = '';
    var permissions = await Permission.requestPermissions(permissionNames);
    for (var permission in permissions) {
      message +=
          '${permission.permissionName}: ${permission.permissionStatus}\n';
    }
    setState(() {});
  }
}
*/
