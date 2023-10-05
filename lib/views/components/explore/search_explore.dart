import 'package:flutter/material.dart';

class SearchExp extends StatefulWidget {
  const SearchExp({super.key});

  @override
  State<SearchExp> createState() => _SearchExpState();
}

class _SearchExpState extends State<SearchExp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _searchbar()
        ],
      ),
    );
  }

  Widget _searchbar() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  hintText: 'Search Here'
              ),
            ),
          ],
        ),
      ),
    );
  }

}
