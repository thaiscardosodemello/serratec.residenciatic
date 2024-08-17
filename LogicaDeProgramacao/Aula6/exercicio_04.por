/*Crie um algoritmo informe qual o maior e qual o menor elemento existente em uma matriz 4x3.*/

programa{	
	funcao inicio(){
		
		inteiro matriz[4][3], maiorElemento, menorElemento

		//escreve a matriz
		para(inteiro lin=0; lin < 4; lin++){
			para(inteiro col=0; col < 3; col++){
				escreva("Digite o valor para a matriz: \n>")
				leia(matriz[lin][col])
			}	
	    }	

		//inicializa a comparação
		maiorElemento = matriz[0][0]
		menorElemento = matriz[0][0]

		para(inteiro lin=0; lin < 4; lin++){
			para(inteiro col=0; col < 3; col++){
				//ler maior elemento
			     se (matriz[lin][col] > maiorElemento){
					maiorElemento = matriz[lin][col]
				}
				se (matriz[lin][col] < menorElemento) {
					menorElemento = matriz[lin][col]
				}
			}	
	    }
	
	    escreva("O maior elemento da matriz é: ", maiorElemento, "\n")
	    escreva("O menor elemento da matiz é: ", menorElemento, "\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */