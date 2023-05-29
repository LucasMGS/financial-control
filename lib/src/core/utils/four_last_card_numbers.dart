String fourLastCardNumber(String valCartao) {
  if (valCartao.trim().isEmpty || valCartao.trim().length <= 4) {
    return valCartao;
  }
  var ultimosNumeros =
      valCartao.substring(valCartao.length - 4, valCartao.length);
  return '●●●● $ultimosNumeros';
}
