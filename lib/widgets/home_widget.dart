import 'package:flutter/material.dart';

import 'package:cliche/screens/screens.dart';
import 'package:cliche/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                children: [
                  DataUser(),
                  //Search(),
                  const SizedBox(
                    height: 20,
                  ),
                  const LabelCategoria(label: 'Categorias'),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      child: const Categories()),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          LabelCategoria(
                              label: 'Promociones',
                              btn: const Text(
                                'Ver más',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPress: () {
                                Navigator.pushNamed(
                                    context, HogarScreen.routeName);
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          _Preview(promo: true,),
                          const SizedBox(
                            height: 20,
                          ),
                          LabelCategoria(
                            label: 'Lo más comprado',
                            btn: const Text(
                              'Ver más',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPress: () {
                              Navigator.pushNamed(
                                  context, LacteosHuevosScreen.routeName);
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          _Preview( promo: false,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _decoratorButton() => BoxDecoration(
      color: Colors.green[500], borderRadius: BorderRadius.circular(20));
}

class _Preview extends StatelessWidget {
  final bool promo;

  const _Preview({
    Key? key, required this.promo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
                width: 160,
                child: ItemPreview(
                  promo: promo,
                ));
          }),
    );
  }
}

class LabelCategoria extends StatelessWidget {
  final String label;
  final Widget? btn;
  final VoidCallback? onPress;

  const LabelCategoria({Key? key, required this.label, this.btn, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (btn == null) {
      return Container(
          margin: EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(label,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ));
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(label,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              )),
          MaterialButton(
            onPressed: onPress,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: _btnDecorator(),
                child: btn),
          )
        ],
      );
    }
  }

  BoxDecoration _btnDecorator() => BoxDecoration(
      color: Colors.green, borderRadius: BorderRadius.circular(20));
}
