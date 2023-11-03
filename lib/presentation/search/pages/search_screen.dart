
   import 'package:final_project/presentation/search/widgets/search_widget.dart';
import 'package:flutter/material.dart';
 class SearchScreen extends StatefulWidget {
   const SearchScreen({Key? key}) : super(key: key);

   @override
   State<SearchScreen> createState() => _SearchScreenState();
 }

 class _SearchScreenState extends State<SearchScreen> {
   @override
   Widget build(BuildContext context) {
     return  const Scaffold(
       body:   SearchWidget(),
     );
   }
 }
