import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro8 extends StatelessWidget {
  const Livro8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 400,
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
                'É seu filho, não um hamster',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'A maior alegria dos pais é ver os filhos bem-sucedidos em seus projetos. Infelizmente, muitos deles acham que seu dever se resume a treiná-los para a roda da vida, esquecendo que a maior herança deixada não é um farto saldo bancário, mas aquela compartilhada no dia a dia. É seu filho, não um hamster nos mostra que, no caminho para uma vida de sucesso, os filhos precisam mais dos pais do que de treinadores. A questão central apresentada por Kevin Leman é levar pais e mães a entenderem até onde compensa sobrecarregar os filhos com tantas atividades.',
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
        'https://www.amazon.com.br/seu-filho-n%C3%A3o-hamster-estresse/dp/8573257393/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3070AVCUNQXN6&keywords=%C3%89+seu+filho%2C+n%C3%A3o+um+hamster&qid=1688050480&s=books&sprefix=%C3%A9+seu+filho+n%C3%A3o+um+hamster%2Cstripbooks%2C484&sr=1-1';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
