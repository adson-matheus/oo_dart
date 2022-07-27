class Pessoa {
  String _nome; //privada
  double peso;
  double altura;

  Pessoa(this._nome, this.peso, this.altura);

  @override
  String toString() {
    return 'Nome $_nome, imc = $_imc';
  }

  void setNome(String nome) => _nome = nome;
  String get retornaNome => _nome;
  double get retornaPeso => peso;
  double get _imc => peso / (altura * altura);
}
