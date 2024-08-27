/*calculo de média*/

programa{	
	funcao inicio(){
		entrada()
	}
	funcao entrada(){
		inteiro num1, num2
		
		escreva("Digite a nota 1:\n> ")
		leia(num1)
		escreva("Digite a nota 2:\n> ")
		leia(num2)

		escreva("\nA média entre os valores é: ", media(num1,num2))

	}
	funcao real media(inteiro num1, inteiro num2){
		real resultado=0.0
		resultado = (num1+num2)/2
		retorne resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */