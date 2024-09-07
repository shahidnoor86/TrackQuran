import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackquran/logic/bloc/books/books_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<BooksBloc>().add(GetBooks());
    return BlocBuilder<BooksBloc, BooksState>(
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            ListView.builder(
              itemCount: state.books!.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                String prod = state.books![index];
                return Card(
                  margin: const EdgeInsets.all(0),
                  color: Colors.blueGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          prod,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ]),
        );
      },
    );
  }
}
