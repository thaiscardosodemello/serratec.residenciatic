/* Criar um matriz 5x2 do tipo cadeia onde deverá ser inicializada com usuários e senhas. 
Na função inicio o programa deverá ler um usuário e senha.
Deverá ser criada uma função para buscar na matriz se este usuário e senha foram encontrados e retornar se achou ou não este usuário, caso o usuário for
encontrado escreva uma mensagem "Bem vindo ao sistema"
*/

programa {

  cadeia matriz[5][2] = { {"Mahy", "1234"}, 
                          {"Ana","4321"}, 
                          {"Rafael", "5555"}, 
                          {"Ricardo", "9999"},
                          {"Matheus", "7777"}}

  funcao inicio() {
    cadeia usuario, senha

    escreva("Digite o usuario:")
    leia(usuario)

    escreva("Digite a senha:")
    leia(senha)

    se(buscarUsuario(usuario,senha)){
      escreva("Bem vindo ao sistemaa!!\n")
    }senao{
      escreva("Ops!! Usuario ou senha incorreto\n")
    }
  }

  funcao logico buscarUsuario(cadeia usuario, cadeia senha){
    para(inteiro i = 0; i < 5; i++){
      se (matriz[i][0] == usuario e matriz[i][1] == senha){
        retorne verdadeiro
      }
    }
    retorne falso
  }

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */