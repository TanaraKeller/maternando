import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro7 extends StatelessWidget {
  const Livro7({Key? key}) : super(key: key);

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
                'Mãe de primeira viagem',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Saber da chegada do primeiro filho deixa as futuras mamães um tanto atordoadas e cheias de dúvidas, afinal de contas, o bebê não vem com um manual de instruções! Mas, sem dúvidas, esse é o melhor presente que você poderia ganhar: ser mãe. Há uma longa jornada à frente, repleta de grandes descobertas e marcada por muito amor e carinho. Mas o que realmente a espera? Como adaptar-se a esta nova fase com rapidez e segurança?',
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
        'https://www.amazon.com.br/M%C3%A3e-primeira-viagem-maternidade-nascimento-ebook/dp/B00D1BGLYY/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=6VZE075BC1ZB&keywords=M%C3%A3e+de+primeira+viagem&qid=1688050346&s=books&sprefix=m%C3%A3e+de+primeira+viagem%2Cstripbooks%2C428&sr=1-1';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
