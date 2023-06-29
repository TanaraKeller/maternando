import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Livro3 extends StatelessWidget {
  const Livro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'Maria, a maior educadora da história',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Se educar é uma tarefa dificílima, imagine educar a criança mais instigante que pisou nesta Terra, o menino Jesus. Por que não foi escolhido um grupo de intelectuais entre os fariseus ou especialistas em filosofia grega para formar o homem que dividiria a História? Havia milhares de candidatos, mas uma jovem destacou--se diante do olhar do Autor da existência. Seu nome: Maria. Ela tornou-se a mulher mais famosa da História.',
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
        'https://www.amazon.com.br/Maria-Maior-Educadora-Hist%C3%B3ria-Augusto/dp/8542203046/ref=sr_1_1?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=34PIJUCI0N5BJ&keywords=maria+a+maior+educadora+da+historia+2+edi%C3%A7%C3%A3o&qid=1688047618&s=books&sprefix=maria+a+maior+educadora+da+historia+2+edi%C3%A7%C3%A3o%2Cstripbooks%2C203&sr=1-1';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possivel abrir $url';
    }
  }
}
