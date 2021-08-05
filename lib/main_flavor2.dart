import 'package:flutter/material.dart';
import 'app.dart';
import 'app_initialization.dart';
import 'flavors.dart';

void main() async {
  FlavorStyle.currentFlavor = Flavor.FLAVOR2;
  await appInitialization();
}
