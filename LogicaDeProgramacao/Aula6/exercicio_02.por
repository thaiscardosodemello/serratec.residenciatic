/*Preencher uma matriz[4][2] com valores iniciais
fazer uma rotina para o usuário ler um número e exibir uma mensagem se este número existe na matriz
se existir pedir ao usuário para preencher com outro valor.*/
programa{	
	funcao inicio(){

		//declaração de tipo e variável / Matriz já preenchida
		inteiro matriz[4][2] = {{1,2},
						    {3,4},
						    {5,6},
						    {7,8}}
		inteiro numero 
		logico encontrado

		//loop que verifica o número na matriz
		enquanto (verdadeiro) {
			escreva("\nDigite um número para verificar se está na matriz: \n>")
			leia(numero)
		  
			// Verifica se o número está na matriz
			encontrado = falso
			para(inteiro lin=0; lin < 3; lin++){
				para(inteiro col=0; col < 2; col++){
			          se (matriz[lin][col] == numero) {
			              encontrado = verdadeiro
			          }
				}
			}

			// Mensagem que pede novo valor se o número for encontrado
			se (encontrado) {
				escreva("\nO número ", numero, " está na matriz.\n")
				pare
			} senao {
				escreva("\nO número ", numero, " não está na matriz.\n")
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 834; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */