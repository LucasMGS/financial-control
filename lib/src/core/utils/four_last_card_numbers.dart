String fourLastCardNumber(String valCartao) {
  var ultimosNumeros =
      valCartao.substring(valCartao.length - 4, valCartao.length);
  return '●●●● $ultimosNumeros';
}
