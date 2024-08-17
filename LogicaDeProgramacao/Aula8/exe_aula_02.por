programa{
	funcao inicio(){
		
		inteiro vetor[] = {5, 10, 18, 20, 2, 8, 14, 16}
		inteiro a=0

		trocarValor(vetor, a)

		imprime(vetor)	
	}
	funcao trocarValor(inteiro &vetor[], inteiro i){
		vetor[i] = 1000	
	}
	funcao imprime(inteiro vetor[]){
		para(inteiro i=0; i < 8; i++){
			escreva(vetor[i],"\n")
		}
		
	}
}
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */