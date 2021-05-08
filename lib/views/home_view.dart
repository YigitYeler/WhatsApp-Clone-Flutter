import 'package:flutter/material.dart';
import 'package:whatsappclone/viewModels/whatsapp_body_view.dart';
import 'package:whatsappclone/viewModels/whatsappbar_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhatsappBar(),
      body: WhatsappBodyView(),
    );
  }
}
