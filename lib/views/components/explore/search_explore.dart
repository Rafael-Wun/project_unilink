import 'package:flutter/material.dart';
import 'package:unilink/views/components/text_field.dart';

class SearchExp extends StatefulWidget {
  const SearchExp({super.key});

  @override
  State<SearchExp> createState() => _SearchExpState();
}

class _SearchExpState extends State<SearchExp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_searchbar()],
      ),
    );
  }

  Widget _searchbar() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NewTextField(
              controller: controller,
              labelText: 'Search Here',
              obsecureText: false,
              borderRadius: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
