/*Desenvolva um algoritmo para faturamento hospitalar.*/    
programa {
    
	cadeia nome, telefone, especialidade, nomePacienteInternado, telefonePacienteInternado
	logico quartos[20]
	inteiro opcao, numeroQuarto, totalPessoasConsultadas = 0, totalConsultas = 0, totalInternacoes = 0
	real faturamentoConsultas = 0.00, valorInternacoes = 500.00, faturamentoInternacoes = 0.00, valorConsulta

	funcao inicio() {

		faca {
			escreva("\n..... MENU DE OPÇÕES .....\n",
	                 "\n (1) Consulta Ambulatorial \n",
	                 " (2) Internação \n",
	                 " (3) Listar Quartos \n",
	                 " (4) Faturamento \n",
	                 " (5) Sair do Programa \n",      
	                "\n..........................\n",
	                "\nDigite a opção: \n> ")
	                
	           leia(opcao)
	           escreva("\n")
	           escolha(opcao) {
	                caso 1: consultaAmbulatorial() pare
	                caso 2: internacao() pare
	                caso 3: listarQuartos() pare
	                caso 4: faturamento() pare 
	           }
		} enquanto (opcao != 5)
		pontosLongoFim()
		escreva("\n\t   FIM DO PROGRAMA!\n")
		pontosLongoFim()
    }
    
    funcao consultaAmbulatorial() {

        escreva("\nNome do paciente: \n> ")
        leia(nome) 
        escreva("\nTelefone do paciente: \n> ")
        leia(telefone)
        escreva("\nQual a especialidade da consulta? \n> ")
        leia(especialidade)
        
        se (especialidade == "Pediatria" ou especialidade == "Pediatra") {
            valorConsulta = 150.00
        } senao {
            valorConsulta = 120.00
        }
        
        faturamentoConsultas = faturamentoConsultas + valorConsulta
        totalConsultas = totalConsultas + 1
        totalPessoasConsultadas = totalPessoasConsultadas + 1
        
        escreva("\n┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
        escreva("\n   Paciente: ", nome, "\n   Registrado para consulta ambulatorial.\n")
        escreva("   Especialidade: ", especialidade, "\n")
        escreva("   Valor da consulta: R$ ", valorConsulta, "\n")
        escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
    }

    funcao internacao() { 
        escreva("\nNome do paciente para internação: \n> ")
        leia(nomePacienteInternado)
        
        escreva("\nTelefone do paciente: \n> ")
        leia(telefonePacienteInternado)

        escreva("\nNúmero do quarto: \n> ") 
        leia(numeroQuarto)
        
        se (verifica(numeroQuarto) == verdadeiro) {
            se (quartos[numeroQuarto - 1] == falso) { 
                quartos[numeroQuarto - 1] = verdadeiro
                faturamentoInternacoes = faturamentoInternacoes + valorInternacoes
                totalInternacoes = totalInternacoes + 1
                
                escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
                escreva("\n   Quarto ", numeroQuarto, " reservado com sucesso!  \n") 
                escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
                
            } senao {
                escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
                escreva("\n   Quarto ", numeroQuarto, " está ocupado !\n")
                escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
            }
        } senao {
			escreva("┎┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┒")
			escreva("\n   Quarto inválido!\n")
			escreva("┖┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┚ \n")
        }         
    }

    funcao logico verifica(inteiro i) {     
        se (i > 0 e i <= 20) {
            retorne verdadeiro
        } senao {
            retorne falso
        }
    }
                
    funcao listarQuartos() {
		pontos()
		escreva("\n      Lista de Quartos\n")
		pontos()
		escreva("\n")
		para (inteiro i = 0; i < 20; i++) {
			se (quartos[i] == falso) {
				escreva(i + 1, ") Disponível\n")
			} senao {
				escreva(i + 1, ") Ocupada\n")
			}
		}
		pontosFim()
    }
    
    funcao faturamento() {
        real totalFaturamento = faturamentoConsultas + faturamentoInternacoes
        escreva("\nNúmero total de consultas: ", totalConsultas, "\n")
        escreva("Número total de internações: ", totalInternacoes, "\n")
        escreva("Total faturado com consultas: R$ ", faturamentoConsultas, "\n")
        escreva("Total faturado com internações: R$ ", faturamentoInternacoes, "\n")
        escreva("Total geral arrecadado: R$ ", totalFaturamento, "\n")
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
 * @POSICAO-CURSOR = 54; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */