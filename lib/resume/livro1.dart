import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro1 extends StatelessWidget {
  const Livro1({Key? key}) : super(key: key);

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
                'As 5 linguagens do amor das crianças',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Você sabe falar a linguagem de amor de seu filho? Cada criança possui uma linguagem de amor principal e específica, uma maneira pela qual ela compreende melhor o amor do pai e da mãe. Este livro ensinará você a reconhecer e falar a linguagem de amor fundamental de seu filho ou filha, e o informará sobre as outras quatro linguagens de amor pelas quais as pessoas entendem e oferecem amor.',
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
        'https://www.amazon.com.br/linguagens-amor-das-crian%C3%A7as-Compromisso/dp/8543302536/ref=sr_1_1?keywords=as+5+linguagens+do+amor+das+crian%C3%A7as&qid=1687996665&s=books&sprefix=as+5+linguagens+do+amor+das+%2Cstripbooks%2C331&sr=1-1';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
