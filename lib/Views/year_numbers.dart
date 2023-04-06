import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numbers_api/Providers/numbers_provider.dart';
import 'package:numbers_api/Widgets/input_decoration.dart';
import 'package:numbers_api/Widgets/widgets.dart';
import 'package:numbers_api/main.dart';

class YearNumber extends ConsumerWidget {
  const YearNumber({super.key});

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
    int? year;
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
                : 'Escriba un numero de año y presione el boton'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 6),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autocorrect: false,
              obscureText: false,
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'Escriba un año aqui',
                  labelText: 'Año',
                  prefixIcon: Icons.numbers_rounded),
              onChanged: (value) => year = int.tryParse(value),
              validator: (value) {
                if (value != null && value.length <= 4) {
                  return null;
                }
                return 'Ingrese un año valido';
              },
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          const SizedBox(
            height: 5,
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
                if (year != null) {
                  nprovider.yearTale(year!);
                }
              },
              child: const Text(
                'Año',
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
