import 'Pessoa.dart';
import 'Streaming.dart';

void main() {
  //Pessoa.dart
  Pessoa p1 = Pessoa("adson", 72, 1.75);
  p1.setNome("ADSON MATHEUS");
  //print(p1._imc); não é possível acessar
  //print(p1._nome); não é possível acessar
  print(p1.toString());
  print(p1.retornaNome);

  //Streaming.dart
  AmazonMusic netflix = AmazonMusic();
  print('${netflix.diasGratis} dias grátis');

  //herança
  AmazonMusicUnlimited musicUnlimited = AmazonMusicUnlimited();
  print('Os mesmos ${musicUnlimited.diasGratis} dias grátis');

  //polimorfismo
  Streaming assinatura = AmazonMusic();
  double valorAssinaturaAnual = assinatura.getAssinaturaAnual();
  print('Amazon Music anual: ${valorAssinaturaAnual} reais');

  assinatura = Netflix();
  valorAssinaturaAnual = assinatura.getAssinaturaAnual();
  print('Netflix anual: ${assinatura.getAssinaturaAnual()} reais');
}
