//Criar um algoritmo para ler um número e chamar uma função que deverá incrementar o número mais 10 e retornar o valor incrementado.

programa{

	funcao inicio(){
	inteiro num,num2=0

	escreva("Digite um numero: ")
	leia(num)

	escreva("Resultado: ",soma(num,num2),"\n")
	escreva(num)
	
	}

	//passagem de parametros por referencia (de memoria)
	funcao inteiro soma(inteiro &num, inteiro &num2){
		num = num + 10
		retorne num
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */