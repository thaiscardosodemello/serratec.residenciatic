programa
{
/*1) Criar um matriz 5x2 do tipo cadeia onde deverá ser inicializada com usuários e senhas. 
 * Na função inicio o usuário deverá ler um usuário e senha.
Deverá ser criada uma função para buscar na matriz se este usuário e senha foram encontrados 
e retornar se achou ou não este usuário, 
caso o usuário for 
encontrado escreva uma mensagem "Bem vindo ao sistema"
*/

	cadeia usuarios[5][2] = {{"Edu" , "141"}, {"Thaisc" , "321"}, {"Thaiss" , "123"}, {"Joao", "336"}, {"Ryan", "457"}}	
			
	funcao inicio()
	{
		cadeia nome, senha
		logico achou = falso
		faca{
		
		escreva("Insira seu usuario: ")
		leia(nome)

		escreva("Insira sua senha: ")	
		leia(senha)	
			
		achou = login(nome, senha)
		}enquanto(achou == falso)
	}
	
	funcao logico login(cadeia nome, cadeia senha){
		logico nomeEncontrado = falso
		logico senhaEncontrada = falso
		para(inteiro lin=0;lin < 5; lin++){
			se(nome == usuarios[lin][0]){					
			nomeEncontrado = verdadeiro						
			}
			se(senha == usuarios[lin][1]){					
				senhaEncontrada = verdadeiro							
			}
			se(senhaEncontrada e nomeEncontrado){
			escreva("Bem vindo ao sistema")
			retorne verdadeiro
			}			
		}	
		retorne falso
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 738; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usuarios, 11, 8, 8}-{nomeEncontrado, 30, 9, 14}-{senhaEncontrada, 31, 9, 15}-{lin, 32, 15, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */