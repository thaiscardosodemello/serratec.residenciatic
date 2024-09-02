/*Fazer um algoritmo com um matriz 3x2 de inteiros.
 * Preencher a matriz fazendo a leitura no console. 
 * Fazer o somatório dos valores das linhas, das colunas da matriz, exibindo na tela os resultados.*/

programa{	
	funcao inicio(){		

		//declara tipo+var
		inteiro matriz[3][2], somaLinhas[3], somaColunas[2]

		//escreve a matriz
		para(inteiro lin=0; lin < 3; lin++){
			para(inteiro col=0; col < 2; col++){
				escreva("Digite o valor para a matriz: \n>")
				leia(matriz[lin][col])
			}	
		}

		//Calcula a soma das linhas
		para(inteiro lin=0; lin < 3; lin++){
			somaLinhas[lin] = 0 
			//obs /\: a inicialização dentro do loop externo é necessário porque está sendo calculada a soma para cada linha individualmente. 
			//Se não reinicializar a soma para cada nova linha, os valores anteriores podem ser somados, resultando em uma soma incorreta.
			para(inteiro col=0; col < 2; col++){
				somaLinhas[lin] = somaLinhas[lin] + matriz[lin][col]
			}
		}
		//Calcula a soma das colunas
		para(inteiro col=0; col < 2; col++){ 
			somaColunas[col] = 0
			para(inteiro lin=0; lin < 3; lin++){				
				somaColunas[col] = somaColunas[col] + matriz[lin][col]
			}
		}
		//Exibi as somas das linhas e das colunas
		escreva("\nSoma das linhas: ")
		para(inteiro lin=0; lin < 3; lin++){
      		escreva(somaLinhas[lin], " ")
		}
		escreva("\nSoma das colunas: ")
		para(inteiro col=0; col < 2; col++){
      		escreva(somaColunas[col], " ")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1348; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 9, 10, 6}-{somaLinhas, 9, 24, 10}-{somaColunas, 9, 39, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */