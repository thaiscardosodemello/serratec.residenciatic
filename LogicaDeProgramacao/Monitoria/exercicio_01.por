/*1) Desenvolver um algoritmo que leia a altura de 15 pessoas. Este programa deve calcular e
mostrar :
a. A menor altura do grupo;
b. A maior altura do grupo;*/

programa {
  funcao inicio() {
    real alturas[15]/*vetor é a mesma coisa que string*/
    real maiorAltura, menorAltura
    inteiro i

    //Ler as alturas
    para(i = 0; i < 15; i++){//estrutura de repetição
      escreva("Digite a altura da pessoa ", i+1, ": ")
      leia(alturas[i])
    }

    maiorAltura = alturas[0]
    menorAltura = alturas[0]

    //Comparar e encontrar
    para(i=1; i<15; i++){
      se (alturas[i] > maiorAltura){
        maiorAltura = alturas[i]
      }

      se (alturas[i] < menorAltura) {
            menorAltura = alturas[i]
        }
    }

    escreva("A maior altura do grupo é: ", maiorAltura, "\n")
    escreva("A menor altura do grupo é: ", menorAltura, "\n")
    }
  }
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 426; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */