/* Escrever um algoritmo que calcule o salario final de um vendedor, 
mostre o salário fixo, o valor de vendas e o 
salario final incluindo a comissão sobre as vendas
no mês.

OBS: O algoritmo devera ler:
• O nome do vendedor
• Seu salário fixo
• O valor das vendas no mes
• Sua comissão sobre o valor das vendas efetuadas (em percentual)
• O sistema deverá ter um critério de saída para finalizar o programa

O SISTEMA DEVERÁ APRESENTAR O SEGUINTE RESULTADO (EXEMPLO)
// ---------- SISTEMA DE GESTÃO DE VENDEDORES -----------
// ------------------------------------------------------
// >>> Digite o nome do vendedor: João da Silva
// >>> Digite o salário: 1200
// >>> Informe o valor das suas vendas deste no mês: 550
// >>> Digite a comissão (em percentual): 10
// -------------- R E S U M O --------------
// -- Nome: João da Silva
// -- Salário Líquido: 1200.00
// -- Valor comissão: 55.00
// -- Salário Final (salário + comissão)*/

programa {
	funcao inicio() {
		
		cadeia nomeVendedor
		real salarioFixo, valorVendas, comissaoPercentual, valorComissao, salarioFinal
		logico ativo = verdadeiro

		enquanto(ativo){
			escreva ("Digite o nome do vendedor (ou 'sair' para finalizar):")
			leia(nomeVendedor)
	
			se(nomeVendedor == "sair"){
				ativo = falso
				pare
			}
	
			escreva("Digite o salário fixo: ")
			leia(salarioFixo)
			escreva("Informe o valor das vendas no mês: ")
			leia(valorVendas)
			escreva("Digite a comissão (em percentual): ")
			leia(comissaoPercentual)
	
			valorComissao = (valorVendas * comissaoPercentual)/100
			salarioFinal = salarioFixo + valorComissao
	
			escreva("\n------------RESUMO-----------\n")
			escreva("-- Nome: ", nomeVendedor, "\n")
			escreva("-- Salário Líquido: ", salarioFixo, "\n")
			escreva("-- Valor comissão: ", valorComissao, "\n")
			escreva("-- Salário Final (salário + comissão): ", salarioFinal, "\n")
			escreva("-----------------------------------------\n\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */