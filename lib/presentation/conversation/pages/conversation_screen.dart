
   import 'package:final_project/presentation/conversation/widgets/conversation_widget.dart';
import 'package:flutter/material.dart';
  class ConversationScreen extends StatefulWidget {
    const ConversationScreen({Key? key}) : super(key: key);

    @override
    State<ConversationScreen> createState() => _ConversationScreenState();
  }

  class _ConversationScreenState extends State<ConversationScreen> {
    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: ConversationWidget(),
      );
    }
  }
