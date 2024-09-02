/*Crie uma função que receba um número como parâmetro e escreva a tabuada desse número.*/
programa{


	//declara variavel
	inteiro num
	inteiro i //variável de controle de iteração
			
	funcao inicio(){		
		escreva("Insira um número: ")
		leia(num)	

		//retorno da mensagem aqui
		escreva("\n---------------\n")
		escreva("-- Resultado --")
		escreva("\n---------------\n")
		tabuada(num)
		
	}
	funcao tabuada(inteiro num){
		para(inteiro i=0; i < 11; i++){//fará o loop 10x
			escreva(num, " x ", i, " = ", num * i, "\n")
		}			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */