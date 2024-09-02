programa{
	funcao inicio(){
		
		/*
		 * sem função
		 * 
		 * inteiro vetor[8]

		para(inteiro i=0; i < 8; i++){
			vetor[i] = sorteia(0,8)
		}

		para(inteiro i=0; i < 8; i++){
			escreva(vetor[i],"\n")
		}*/


		/*com função*/
		inteiro vetor[8]

		sorteio(vetor)
	}
	funcao sorteio(inteiro vetor[]){
		para(inteiro i=0; i < 8; i++){
			vetor[i] = sorteia(1000,8000)
		}
		
		imprimir(vetor)		
	}
	funcao imprimir(inteiro vetor[]){
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
 * @POSICAO-CURSOR = 511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */