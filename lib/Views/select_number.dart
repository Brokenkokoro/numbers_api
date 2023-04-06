import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numbers_api/Providers/numbers_provider.dart';
import 'package:numbers_api/Widgets/input_decoration.dart';
import 'package:numbers_api/Widgets/widgets.dart';
import 'package:numbers_api/main.dart';

class SelectNumber extends ConsumerWidget {
  const SelectNumber({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nprovider = ref.watch(numbersProvider);
    final String? leyenda = nprovider.leyenda;
    return Scaffold(
      body: Stack(
        children: [
          const ImageBackground(),
          ButtonAndContainer(leyenda: leyenda, nprovider: nprovider),
        ],
      ),
    );
  }
}

class ButtonAndContainer extends StatelessWidget {
  const ButtonAndContainer({
    super.key,
    required this.leyenda,
    required this.nprovider,
  });

  final NumbersProvider nprovider;
  final String? leyenda;

  @override
  Widget build(BuildContext context) {
    int? number;
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
            child: Text(leyenda != null
                ? 'The number $leyenda'
                : 'Escriba un numero del 1 al 10 y presione el boton'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 6),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autocorrect: false,
              obscureText: false,
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'Escriba un numero entre 1-10',
                  labelText: 'Numero 1-10',
                  prefixIcon: Icons.numbers_rounded),
              onChanged: (value) => number = int.tryParse(value),
              validator: (value) {
                if (value != null && value.length <= 2) {
                  return null;
                }
                return 'Ingrese un numero valido';
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
                if (number != null && number! <= 10) {
                  nprovider.numString(number!);
                }
              },
              child: const Text(
                'numero',
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
