programa
{
	inclua biblioteca Util -->u
	//inteiro numero_sorteados, vet[10]
	
inteiro i,x, bkp, quantidade = 1000, numero_digitado
	inteiro numero_sorteados, vet[1000], inicial, meio,final
	logico encontrado = falso
	funcao inicio()
	{
		para(i=0; i< quantidade; i++)
		{
			numero_sorteados = u.sorteia(1,2000)
			vet[i] = numero_sorteados
			
		}


		// Laço de ordenção 
		ordenacao()
		

		// exibir dados do vetor 
		/*
		 exibir()

		*/
		escreva("Digite um número para pesquisara \n")
		leia(numero_digitado)
		
		//pesquisa_linear()
		pesquisa_binaria()

		


		
	}
	// Criando funções 
	
	funcao pesquisa_linear()
	{
		// Pesquisa linear
		para(x = 0; x < quantidade; x++ )
		{
			se(vet[x]==numero_digitado)
			{
				encontrado = verdadeiro	
			}
			
		}
		se(encontrado == verdadeiro)
		{
			escreva("encontrado ")	
		}
		senao
		{
			escreva("Não encontrado ")	
		}
			
	}
	// final da função pesquisa linear

	funcao pesquisa_binaria()
	{
		
		 inicial =0
		 final = quantidade
		 encontrado = falso
		
		enquanto((inicial <= final)e (nao encontrado ))
		{
			meio = (inicial + final) / 2
			se(vet[meio] == numero_digitado)
			{
				encontrado = verdadeiro
			}
			senao se(vet[meio] >  numero_digitado)
			{
				final = meio -1
			}
			senao{
				inicial = meio +1
				}
				escreva(vet[meio]," ")
			
		}

		se (encontrado == verdadeiro )
		{
			escreva("valor encontrado no vetor. \n ")
		}
		senao
		{
			escreva("Valor inexistente. \n")	
		}	
	}
	// Função de ordenação
	funcao ordenacao()
	{
		para(i= 0; i< quantidade; i++)
		{
			para(x= i+1; x< quantidade; x++)
			{
				se(vet[i] > vet[x])
				{
					   bkp = vet[i]
					vet[i] = vet[x]
					vet[x] = bkp
				}
			}
		
		}	
	}
	// Função de exibir 
	funcao exibir()
	{
		para(i=0; i<quantidade; i++)
		{
			escreva(vet[i]," ")
		}
	}
	
}
