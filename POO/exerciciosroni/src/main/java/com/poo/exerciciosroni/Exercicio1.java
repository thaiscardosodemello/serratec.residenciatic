package com.poo.exerciciosroni;

import java.util.Scanner;

public class Exercicio1 {
    public static void resolucao(){                         //declaração de método

        //1) Leia dois valores pelo teclado e imprima a soma

		int n1; //INT variável 1 inteiro n1
		int n2; //INT variável 2 inteiro n2

															//em Java, é uma convenção de nomenclatura utilizar letra maiúscula no início dos nomes das classes
		System.out.print("Digite o primeiro numero:");	//Aqui é o "escreva"
		Scanner scannerLeia = new Scanner(System.in);		//Aqui cria o scanner | Scanner trás o import java.util.Scanner 
		n1 = scannerLeia.nextInt();							//Aqui é o "leia"

		System.out.println("O primeiro número é: "+n1+"\n");
		
		System.out.println("Digite o segundo número:");
		n2 = scannerLeia.nextInt();

		System.out.println("O segundo número é: "+n2);

		System.out.println("A soma é:" +(n1+n2));

    }
}
