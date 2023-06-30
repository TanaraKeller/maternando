import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro4 extends StatelessWidget {
  const Livro4({Key? key}) : super(key: key);

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
        child:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'A diferença que a mãe faz',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Há ocasiões em que você fica perdida tentando saber por que seu filho faz o que faz, por que ele diz o que diz e pensa o que pensa? Acalme-se! Os homens não são, nem de longe, tão complexos quanto as mulheres. Mas não se engane: o coração deles é igualmente sensível e se magoa com facilidade. E por mais que ele pareça afastar-se, saiba que ele precisa muito de você. Pra dizer a verdade, de todas as pessoas, você, mãe, é quem faz a maior diferença no mundo de seu filho.',
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
        'https://www.amazon.com.br/diferen%C3%A7a-que-m%C3%A3e-faz-extraordin%C3%A1rio-ebook/dp/B00JXL6S4O/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=17E3NIV29MU1P&keywords=A+diferen%C3%A7a+que+a+m%C3%A3e+faz&qid=1688047919&s=books&sprefix=a+diferen%C3%A7a+que+a+m%C3%A3e+faz%2Cstripbooks%2C183&sr=1-1';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
