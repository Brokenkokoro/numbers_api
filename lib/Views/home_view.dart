import '../Widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          ImageBackground(),
          BodyWidget(),
        ],
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: const [
        Text(
          'NumberTales',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 50),
          child: Text(
            'Cada numero tiene su historia, click en cualquier de los recuadros para descubrirlas.',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ContainersList(),
      ]),
    );
  }
}

class ContainersList extends StatelessWidget {
  const ContainersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = (size.height / 4) * 3;
    return SizedBox(
      width: double.infinity,
      height: height,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeContainer(
              title: "Numeros aleatorios",
              leyend:
                  'Puede seleccionar esta opcion para ver la historia de numeros seleccionados al azar',
              navigation: 'random',
            ),
            HomeContainer(
                title: 'Numeros del Año',
                leyend:
                    'En esta opcion puedes seleccionar un año y se te mostrara un evento importante a respectivo año',
                navigation: 'year'),
            HomeContainer(
                title: 'Numeros del 1-10',
                leyend:
                    'En esta opcion podras inroducir un numero del 1 al 10, retornandote una breve leyenda',
                navigation: 'number'),
          ],
        ),
      ),
    );
  }
}
