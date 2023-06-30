import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro2 extends StatelessWidget {
  const Livro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const CircularProgressIndicator(
      color: Colors.pink,
    );
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'A Bênção de ter Filhos',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'O ato de educar um filho é um curso intensivo especialmente criado por Deus para mostrar caminhos jamais idealizados. Em meio a situações inusitadas, como os acessos de raiva das crianças e o silêncio dos adolescentes, Deus pode usar os filhos para ensinar os pais. Nesta obra reveladora, Gary Thomas fala sobre o processo da criação de filhos e o que isso representa na jornada espiritual dos pais.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.pinkAccent,
                ),
                child: TextButton(
                  onPressed: openURL,
                  child: const Text('Quero Comprar', style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openURL() async {
    const url =
        'https://www.amazon.com.br/B%C3%AAn%C3%A7%C3%A3o-Ter-Filhos-Gary-Thomas/dp/8573678445/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1IHXJZV3FE69D&keywords=a+ben%C3%A7%C3%A3o+de+ter+filhos&qid=1688046635&s=books&sprefix=a+ben%C3%A7%C3%A3o+de+ter+filhos%2Cstripbooks%2C179&sr=1-1';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
