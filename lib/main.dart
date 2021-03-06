import 'package:flutter/material.dart';
import 'package:wortel/cubit/word_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/gameplay_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WordCubit(size: 5),
      child: MaterialApp(
        title: 'Wortel',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WordCubit, WordState>(
      listener: (context, state) {
        state.mapOrNull(
          won: (_) {
            showDialog(
              context: context,
              builder: (context) {
                return const WinningDialog();
              },
            );
          },
          gameOver: (state) {
            showDialog(
              context: context,
              builder: (context) {
                return LosingDialog(state.answer);
              },
            );
          },
          warning: (state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          },
        );
      },
      // buildWhen: (_, current) {
      //   return current.maybeMap(
      //     game: (_) => true,
      //     won: (_) => true,
      //     gameOver: (_) => true,
      //     orElse: () => false,
      //   );
      // },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF33BA91),
            title: Image.asset(
              "assets/splash.png",
              height: 64,
            ),
            actions: [
              state.maybeMap(
                gameOver: (_) => const ResetButton(),
                won: (_) => const ResetButton(),
                orElse: () => const GiveupButton(),
              )
            ],
          ),
          body: const GameplayWidget(),
        );
      },
    );
  }
}

class GiveupButton extends StatelessWidget {
  const GiveupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<WordCubit>(context).giveUp();
      },
      icon: const Icon(Icons.flag),
    );
  }
}

class ResetButton extends StatelessWidget {
  const ResetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<WordCubit>(context).reset();
      },
      icon: const Icon(Icons.refresh),
    );
  }
}

class LosingDialog extends StatelessWidget {
  const LosingDialog(
    this.answer, {
    Key? key,
  }) : super(key: key);

  final String answer;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('Maaf Anda kalah')),
      content: Center(
        heightFactor: 1,
        child: Text('Jawaban yang benar adalah $answer'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            BlocProvider.of<WordCubit>(context).reset();
            Navigator.of(context).pop();
          },
          child: const Text('Reset'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Oke'),
        ),
      ],
    );
  }
}

class WinningDialog extends StatelessWidget {
  const WinningDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Center(child: Text('ANDA MENANG!')),
    );
  }
}
