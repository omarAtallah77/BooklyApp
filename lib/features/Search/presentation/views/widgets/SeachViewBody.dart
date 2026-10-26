import 'package:bookly_app/features/Search/presentation/views/widgets/CustoumSearchTextField.dart';
import 'package:bookly_app/features/Search/presentation/views/widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';

class   SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
      SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustoumSearchTextField(),
              SizedBox(height: 20),
              Text("Search Result", style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 20),
              
            ],
            
          ),
        ),
      SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Searchresultlistview(),
            ),
          ),
      ]  
    );
  }
}

