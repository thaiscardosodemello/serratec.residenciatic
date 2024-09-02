programa
{
	
	  cadeia convidados[50], nome
       inteiro opcao, lista, contagem=0, total, j
	
	funcao inicio()
	{
		faca{
		     escreva("\n---- MENU DE OPÇÕES ---- \n",
		     "\n (1) Inserir nome \n",
		     " (2) Listar convidados \n",
		     " (3) Remover nome \n",
		     " (4) Pagamento \n",
		     " (0) Sair \n",
			"\nDigite a opção: \n> ")
			leia(opcao)
			escolha(opcao){
		     caso 1: inserirNome() pare		
		     caso 2: listarConvidados() pare				
		     caso 3: removerNome() pare				
		     caso 4: pagamento() pare
			}
							
		}enquanto(opcao != 0)
			pontosLongoFim()
			escreva("\n\tFIM DO PROGRAMA!\n")
			pontosLongoFim()
	}
		
	funcao inserirNome(){
		escreva("\nNome do convidado: \n> ")
		leia(nome)
		para(inteiro i=0; i < 50; i++){
			se(convidados[i] == ""){
				convidados[i] = nome
				contagem++
			pare
   	   		}
		}
      }	
	
      funcao listarConvidados(){
      	pontos()
		escreva("\n   LISTA DE CONVIDADOS\n")
		pontos()
		escreva("\n")
		lista=1
		para(inteiro i=0; i < 50; i++){
			se(convidados[i] != ""){
				escreva(lista,"-", convidados[i], "\n")
				lista++
			}			
		}
		pontosFim()
	}
	funcao removerNome(){
	escreva("\nDigite o nome a ser removido:\n> ")
	leia(nome)
	
	para(inteiro i=0; i < 50; i++){
		se(convidados[i] == nome){
			convidados[i] = ""	
			contagem--			
			pontosLongo()
			escreva("\n   LISTA DE CONVIDADOS ATUALIZADA\n")
			pontosLongo()
			escreva("\n")
			lista = 1
			para(j = 0; j < 50; j++){          	
				se(convidados[j] != ""){
					escreva(lista, "-", convidados[j], "\n")
					lista++ 
				}
			}
			pontosLongoFim()
		}
	}
}
	
	funcao pagamento(){		
		total = contagem * 120
		escreva("\nO valor total a pagar é: R$", total," \nEstão presentes ", contagem, " convidados\n\n" )
	}
	
	funcao vazio pontos() { escreva("\n.........................\n")}
	funcao vazio pontosFim() { escreva("\n.........................\n.........................\n")}
	funcao vazio pontosLongo() { escreva("\n.....................................\n")}
	funcao vazio pontosLongoFim() { escreva("\n.....................................\n.....................................\n")}	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {convidados, 4, 10, 10}-{lista, 5, 22, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */