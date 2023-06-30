import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro6 extends StatelessWidget {
  const Livro6({Key? key}) : super(key: key);

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
                'O que esperar quando você está esperando',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Com respostas tranquilizadoras aos futuros pais, O que esperar quando você está esperando é um guia completo para a gravidez, desde a fase do planejamento até o pós-parto. Leitura obrigatória para grávidas de primeira viagem, esta edição traz novas informações sobre a escolha do médico, os planos de pré-concepção, o parto e os direitos das gestantes, e foi apontada pela prestigiada revista Self como um “clássico na área da saúde”. Claro e abrangente, este guia acompanha mês a mês todas as fases da gestação.',
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
        'https://www.amazon.com.br/esperar-quando-voc%C3%AA-est%C3%A1-esperando/dp/8501065013/ref=sr_1_2?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1D6T776ZBGYJF&keywords=O+que+esperar+quando+voc%C3%AA+est%C3%A1+esperando&qid=1688048131&s=books&sprefix=o+que+esperar+quando+voc%C3%AA+est%C3%A1+esperando%2Cstripbooks%2C178&sr=1-2';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
