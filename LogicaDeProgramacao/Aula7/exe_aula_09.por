programa
{
	inclua biblioteca Matematica --> M
	inclua biblioteca Texto --> T
	inclua biblioteca Util
 --> U
	
	funcao inicio()
	{
		cadeia texto = "Aula de Lógica\n"
		real base, expoente, resultado
		
		escreva(U.sorteia(1, 100))
		U.aguarde(5000)
		escreva(T.caixa_alta("\nSerratec 2024\n"))
		escreva(T.extrair_subtexto(texto, 0, 4))

		escreva("\nDigite a base:")
		leia(base)

		escreva("Digite o expoente:")
		leia(expoente)

		resultado = M.potencia(base,expoente)
		escreva("Resultado:",resultado)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */