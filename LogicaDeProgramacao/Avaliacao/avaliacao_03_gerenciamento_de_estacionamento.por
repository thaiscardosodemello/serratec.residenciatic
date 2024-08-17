/*Desenvolva um algoritmo para gerenciamento de vagas de estacionamento.*/
programa{
	
	logico vagas[30]
	inteiro opcao, numeroVaga
		
	funcao inicio(){
		para(inteiro i=0; i < 30; i++){
			vagas[i] = falso
		}
	
		faca{
		escreva("\n..... MENU DE OPÇÕES .....\n",
		     "\n (1) Entrada de veículos \n",
		     " (2) Saida de veículos \n",
		     " (3) Listar vagas \n",
		     " (4) Sair do programa \n",		     
			"\n..........................\n",
			"\nDigite a opção: \n> ")
			
			leia(opcao)
			escreva("\n")
			escolha(opcao){
		     caso 1: entrada() pare		
		     caso 2: saida() pare				
		     caso 3: listaVagas() pare		
			}
		}enquanto(opcao != 4)
			pontosLongoFim()
			escreva("\n\t   FIM DO PROGRAMA!\n")
			pontosLongoFim()	
		
	}
	funcao entrada(){
		escreva("\nInsira o numero da vaga: \n> ")
		leia(numeroVaga)
		se(verifica(numeroVaga) == verdadeiro){
			numeroVaga = numeroVaga  - 1
			se(vagas[numeroVaga] == falso){
				vagas[numeroVaga] = verdadeiro     
				escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
				escreva("\n   Carro estacionado na vaga ", numeroVaga +1, "  \n")
				escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
			}senao{
				escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
				escreva("\n   Vaga ocupada!\n")
				escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
			}
		}senao{
			escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
			escreva("\n   Vaga invalida!\n")
			escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
		}	 	  
	}
	funcao saida(){
		escreva("\nInsira o numero da vaga: \n> ")
		leia(numeroVaga)
		se(verifica(numeroVaga) == verdadeiro){
			numeroVaga = numeroVaga  - 1
			se(vagas[numeroVaga] == verdadeiro){
				vagas[numeroVaga] = falso
				escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")                          
				escreva("\n   A vaga ", numeroVaga +1, " foi libeirada!   \n")
				escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
			}senao{
				escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")                        
				escreva("\n   A vaga ", numeroVaga +1, " já esta livre!   \n")
				escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
			}
		}senao{
			escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
			escreva("\n   Vaga inválida!\n")
			escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
		}		
	}
  	funcao logico verifica(inteiro i){  	 	
  	 	se(i > 0 e i <= 30){
  	 		retorne verdadeiro  	 		 
  	 	}senao{
  	 		retorne falso
  	 	}
  	 }
  	 funcao listaVagas(){
  	 	pontos()
  	 	escreva("\n      Lista de Vagas\n")
  	 	pontos()
  	 	escreva("\n")
  	 	para(inteiro i = 0; i < 30; i++){
            se (vagas[i] == falso) 
            {
                escreva(i+1, ") Disponível\n")
            }senao {
                escreva(i+1, ") Ocupada\n")
            }
		}
		pontosFim()		
  	 }
	funcao vazio pontos() { escreva("\n..........................\n")}
	funcao vazio pontosFim() { escreva("\n::::::::::::::::::::::::::\n\n")}
	funcao vazio pontosLongo() { escreva("\n.....................................\n")}
	funcao vazio pontosLongoFim() { escreva("\n::::::::::::::::::::::::::::::::::::\n")}	

}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */