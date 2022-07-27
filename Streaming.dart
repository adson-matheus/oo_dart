abstract class Streaming {
  late double valorAssinatura;
  late int diasGratis;
  double getAssinaturaAnual();
}

class Netflix implements Streaming {
  @override
  double valorAssinatura = 49.9;
  @override
  int diasGratis = 30;

  @override
  double getAssinaturaAnual() {
    return (valorAssinatura * 11);
  }
}

class AmazonMusic implements Streaming {
  @override
  double valorAssinatura = 14.9;
  @override
  int diasGratis = 30;

  @override
  double getAssinaturaAnual() {
    return (valorAssinatura * 11);
  }
}

class AmazonMusicUnlimited extends AmazonMusic {
  bool ehUnlimited = true;
}
