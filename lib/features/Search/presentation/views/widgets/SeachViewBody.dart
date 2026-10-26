import 'package:bookly_app/features/Search/presentation/views/widgets/CustoumSearchTextField.dart';
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
            ],
            
          ),
        ),
      ],
    );
  }
}

