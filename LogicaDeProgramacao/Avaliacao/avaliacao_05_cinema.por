programa{
		
	inteiro assentos[10][12], linha, coluna

	funcao inicio(){
		pontos()
		escreva("\n\t\tSala de Cinema\n")
		pontos()
		escreva("\n")
		para(inteiro lin = 0; lin < 10; lin++) {
			para(inteiro col = 0; col < 12; col++) {
				assentos[lin][col] = 0
				escreva(" [",assentos[lin][col], "]")
			}
			escreva("\n")
		}
		pontos()
		escreva("\n")      
	
	faca {
		escreva("\nDigite a linha e coluna do assento.")
		escreva("\nLinha: ")
		leia(linha)
		escreva("Coluna: ")
		leia(coluna)
	
	
		se (linha < 0 ou coluna < 0) {
			pontosLongoFim()
			escreva("\n\t   FIM DO PROGRAMA!\n")
			pontosLongoFim()
			pare
		}
	
		se (assentos[linha-1][coluna-1] == 0) {
			assentos[linha-1][coluna-1] = 1
			escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
			escreva("\n   Assento reservado com sucesso! \n")
			escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
		} senao {
			escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
			escreva("\n   Assento já está reservado! \n")
			escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚\n")
		}
	
		pontos()
		escreva("\n\t\tSala de Cinema\n")
		pontos()
		escreva("\n")
		
		para(inteiro lin = 0; lin < 10; lin++) {
			para(inteiro col = 0; col < 12; col++) {
				escreva(" [",assentos[lin][col], "]")
			}
				escreva("\n")
			}
		pontos()
		escreva("\n")		
		} enquanto (verdadeiro)
	}

	funcao vazio pontos() { escreva("\n.................................................\n") }
	funcao vazio pontosFim() { escreva("\n::::::::::::::::::::::::::\n\n") }
	funcao vazio pontosLongo() { escreva("\n.....................................\n") }
	funcao vazio pontosLongoFim() { escreva("\n::::::::::::::::::::::::::::::::::::\n") }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */