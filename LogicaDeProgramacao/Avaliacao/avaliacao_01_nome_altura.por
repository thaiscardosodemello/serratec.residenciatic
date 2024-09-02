programa
{
	funcao inicio()
	{
		cadeia nomes[5]
		real alturas[5]

		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Nome: ")
			leia(nomes[i])
			
			escreva("Altura: ")
			leia(alturas[i])

		     se(alturas[i] < 0){
			escreva("\nAltura inválida!\n\n Digite novamente\n>")
			leia(alturas[i])
		     }
		}
			para(inteiro i=0; i < 5; i++){
			escreva("\nNome: ",nomes[i], "\nAltura: ", alturas[i])	
			}	
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