programa
{
	
	funcao inicio()
	{
		inteiro numero, resultado = 1
		escreva("Digite o número:")
		leia(numero)
		//escreva("O fatorial de ", numero, " é:", fatorial(numero))

		para(inteiro i=1; i <= numero; i++){
			resultado = resultado * i
		}

		escreva("O fatorial de ", numero, " é:", resultado)
	}
}	/*funcao inteiro fatorial(inteiro i){
		se(1 <= 1){
			retorne 1
		}senao{
			i = i *fatorial(i-1)
			retorne i
		}
	}*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 433; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */