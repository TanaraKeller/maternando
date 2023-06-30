import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro5 extends StatelessWidget {
  const Livro5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const CircularProgressIndicator(
      color: Colors.pink,
    );
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 400,
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
                'Mãe fora da caixa',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Quando vivia meu luto do puerpério, em sua fase mais latente, ler os textos da Thaís Vilarinho me acalentou e fortaleceu para aceitar o meu renascimento. O Mãe Fora da Caixa não é só um livro de relatos de vivências maternas, é também um abraço de cura. Aqui nos sentimos representadas e acolhidas nos desafios e nas doçuras da maternidade. Aqui somos impulsionadas a nos libertarmos dos pré-conceitos sobre o mundo materno e a nos permitir a audácia de sonhar, de nos reinventar e de viver a maternidade de forma leve, prazerosa, sem críticas, regras e julgamentos.',
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
        'https://www.amazon.com.br/s?k=mae+fora+da+caixa&i=stripbooks&sprefix=mae+fora+d%2Cstripbooks%2C248&ref=nb_sb_ss_fb_1_10';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
