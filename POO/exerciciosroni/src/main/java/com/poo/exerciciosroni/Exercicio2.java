package com.poo.exerciciosroni;

import java.util.Scanner;

public class Exercicio2 {
    public static void resolucao(){
        //2)Construir um algoritmo que leia um número e exiba na tela o seu sucessor e antecessor 
        int n1;

        System.out.println("Digite um número:");
        Scanner leia = new Scanner(System.in);
        n1 = leia.nextInt();

        System.out.println("O antecerssor é: "+(n1-1)+"\nE o sucesso é: "+(n1+1));
    }
}
