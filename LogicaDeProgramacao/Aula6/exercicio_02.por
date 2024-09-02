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
		logico encontrado //LOGICO armazena valores booleanos (verdadeiro ou falso)

		//loop que verifica o número na matriz
		//ENQUANTO é uma estrutura de controle de fluxo que executa um bloco de código repetidamente enquanto uma condição específica for verdadeira.
		//ENQUANTO é útil em situações onde o número de iterações não é conhecido antes do início da execução do programa.
		//ENQUANTO pode ser FALSO, mas nesse caso o bloco de código dentro do loop não será executado nem uma vez.
		enquanto (verdadeiro) {
			escreva("\nDigite um número para verificar se está na matriz: \n>")
			leia(numero)
		  
			// Verifica se o número está na matriz
			encontrado = falso
			//FALSO /\ é usado para inicializar a variável encontrado antes de começar a verificar os valores na matriz. 
			//Isso garante que a verificação com a suposição de que o número não foi encontrado comece.
			//Se colocasse essa linha dentro do loop para, ela seria reatribuída a falso em cada iteração.
			para(inteiro lin=0; lin < 3; lin++){
				para(inteiro col=0; col < 2; col++){
			          se (matriz[lin][col] == numero) {
			              encontrado = verdadeiro //VERDADEIRO atualiza a variável se o número for encontrado
			          }
				}
			}

			// Mensagem que pede novo valor se o número for encontrado
			se (encontrado) {
				escreva("\nO número ", numero, " está na matriz.\n")
				pare
			} senao {
				escreva("\nO número ", numero, " não está na matriz.\n")
			//para interromper o loop utilize PARE 
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1633; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */