<!-- --- -->
<!-- hide: navigation -->
<!-- --- -->


# Criptografia


- [ ] Hash Functions
- [ ] salt (valor aleatorio concatenado com a senha)

### Exercicio:
Um sistema de criptografia de chave pública utiliza duas chaves: uma para cifrar e outra para decifrar. Para cifrar uma mensagem, é necessário ter a chave pública do destinatário. Já quem recebe uma mensagem utiliza a sua chave privada para conseguir decifrar o texto cifrado que recebeu. Um exemplo simples de sistema de criptografia de chave pública funciona da seguinte forma:

Bob possui uma chave secreta sk = (d, p, q) e uma chave pública pk = (e, N), onde N = p x q. A chave pública pk é divulgada para quem o Bob desejar, enquanto a chave secreta não é divulgada para qualquer pessoa. 

Assim, se Alice recebeu a chave pública de Bob, ela pode enviar uma mensagem m codificando-a da seguinte forma:

c = m^e mod N

Quando Bob receber a mensagem c enviada pela Alice, ele irá decodificar a mensagem da seguinte forma:

m = cˆd mod N

Considere x mod y como o resto da divisão de x por y – exemplo: 5 mod 3 = 2

Agora, considere um sistema de criptografia de chave pública onde os valores primos utilizados para gerar um módulo são p = 5 e q = 11. Ou seja, o módulo utilizado neste sistema é N = 55. Considerando como chave pública de Bob pk = (7,55) e a chave secreta de Bob sk = (23,5,11). Se Alice enviou a mensagem c = 8, quando Bob decifrar esta mensagem terá:

Justificativa:
Esta questão busca verificar se o aluno entendeu como funciona criptografia de chaves pública (assimétrica). A alternativa B é a correta, pois 8 elevado na 23 e dividido por 55 tem como resto desta divisão 17, ou seja, 8^23 mod 55 = 17. A alternativa A é errada, pois se a mensagem m fosse 2, então o texto cifrado deveria ser c = 18. A alternativa C está errada pois se a mensagem m fosse 7, então o texto cifrado deveria ser c = 28. . A alternativa D está errada pois se a mensagem m fosse 13, então o texto cifrado deveria ser c = 7.


### Exercicio
Questão 10
Seja m uma mensagem que consiste em ℓ blocos AES (por exemplo ℓ=300). Alice criptografa m usando modo de operação CBC e transmite o texto criptografado (ciphertext) para o Bob. Devido a problemas de rede, o bloco de número ℓ/3 é corrompido durante a transmissão. Todos os outros blocos criptografados são transmitidos e recebidos corretamente. 

Quando o Bob decifra o texto criptografado recebido, quantos blocos do texto original estarão corrompidos?

Justificativa:
Entender como os modos de operação de cifras de bloco funcionam é fundamental para construir um software que não revele informações para um atacante. A questão tem por objetivo avaliar se o aluno entendeu o que é um modo de operação e como eles funcionam. A resposta correta é a alternativa B, uma vez que para decifrar um bloco, por exemplo o bloco k, no modo CBC, é necessário o bloco k e o bloco k-1. Assim, se o bloco ℓ/3 é perdido, somente o bloco ℓ/3 e bloco ℓ/3+1 serão perdidos. Para o bloco ℓ/3 é necessário o bloco ℓ/3 e o bloco ℓ/3-1. Para o bloco ℓ/3+1 é necessário o ℓ/3+1 e o bloco ℓ/3. A alternativa A está errada, pois para decifrar o bloco anterior a  ℓ/3, ou seja, bloco ℓ/3-1, preciso do bloco ℓ/3-1 e bloco ℓ/3-2, que não foram perdidos. A alternativa C está errada, pois para decifrar o bloco anterior ao ℓ/3, ou seja ℓ/3-1, preciso do bloco ℓ/3-1 e do bloco ℓ/3-2, que não foram perdidos. A alternativa D está errada, pois para decifrar o bloco ℓ/3+2, por exemplo, preciso do bloco ℓ/3+2 e do bloco ℓ/3+1, que não foram perdidos, e assim por diante.
