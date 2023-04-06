import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numbers_api/Providers/numbers_provider.dart';
import 'package:numbers_api/Widgets/widgets.dart';
import 'package:numbers_api/main.dart';

class RandomNumbers extends ConsumerWidget {
  const RandomNumbers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nprovider = ref.watch(numbersProvider);

    String? history = nprovider.history;
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(),
          ButtonAndContainer(history: history, nprovider: nprovider),
        ],
      ),
    );
  }
}

class ButtonAndContainer extends StatelessWidget {
  const ButtonAndContainer({
    super.key,
    required this.history,
    required this.nprovider,
  });

  final String? history;
  final NumbersProvider nprovider;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            padding: const EdgeInsets.all(30),
            child: Text(history != null
                ? 'The number $history'
                : 'Precione el boton para ver un numero aleatorio'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              onPressed: () async {
                nprovider.randomNumber();
                nprovider.getNumbers();
              },
              child: const Text(
                'Random 1-1000',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
