/*Crie um arquivo novo
 * que irá ler dois valores inteiros
 * e passar pra uma outra função chamada soma
 * que irá imprimir o resultado da soma*/

programa{	
	funcao inicio(){
		entrada()
	}
	funcao entrada(){
		inteiro num1, num2
		
		escreva("Digite o valor 1:\n> ")
		leia(num1)
		escreva("Digite o valor 2:\n> ")
		leia(num2)
		soma(num1,num2)

	}
	funcao soma(inteiro num1, inteiro num2){
		escreva("\nSoma dos números: ", num1+num2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 310; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */