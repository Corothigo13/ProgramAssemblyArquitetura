#Public static void Main (string args[])
#  {
#     string msg = "Bem vindo";
#     string nota ="Nome das músicas:";
#     string demons = "Demons - Imagine Dragons";
#     string heavy = "Heavy - Linkin Park";
#     string fim = "Fim";
#     Console.WriteLine(msg); 
#     Console.WriteLine(nota);
#     Console.WriteLine(demons);
#     Console.WriteLine(heavy);
#     Console.WriteLine(fim);
#     Console.ReadKey();
#   }


        .data
msg:    .asciiz "Bem vindo\n"
nota:   .asciiz "Nome das musicas:\n"
demons: .asciiz "Demons-Imagine Dragons\n"
heavy:  .asciiz "Heavy-Linkin Park\n"
fim:    .asciiz "Fim"
	.extern foobar 4

        .text
        .globl main
main:   li $v0, 4       
        la $a0, msg     
        syscall

        li $v0, 4       
        la $a0, nota    
        syscall

        li $v0, 4       
        la $a0, demons     
        syscall

        li $v0, 4       
        la $a0, heavy    
        syscall

        li $v0, 4       
        la $a0, fim    
        syscall
        lw $t1, foobar
        
        jr $ra          
