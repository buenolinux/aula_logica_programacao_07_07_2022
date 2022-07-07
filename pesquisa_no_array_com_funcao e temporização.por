programa
{
	inclua biblioteca Util -->u
	//inteiro numero_sorteados, vet[10]
	
inteiro i,x, bkp, quantidade = 1000, numero_digitado
	inteiro numero_sorteados, vet[1000], inicial, meio,final
	logico encontrado = falso
	inteiro tempo_inicial, tempo_atual, tempo_total
	cadeia retorno_funcao
	funcao inicio()
	{
		para(i=0; i< quantidade; i++)
		{
			numero_sorteados = u.sorteia(1,2000)
			vet[i] = numero_sorteados
			
		}


		
		

		// exibir dados do vetor 
		/*
		 exibir()

		*/
		escreva("Digite um número para pesquisara \n")
		leia(numero_digitado)
		
		pesquisa_linear()
		
		
		escreva(pesquisa_binaria())

		// Laço de ordenção 
		escreva(ordenacao())


		
	}
	// Criando funções 
	
	funcao cadeia pesquisa_linear()
	{
		tempo_inicial = u.tempo_decorrido()
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
			escreva("Encontrado na pesquisa linear \n")	
		}
		senao
		{
			escreva("Não encontrado na pesquisa linear \n")	
		}
		tempo_atual = u.tempo_decorrido()
		tempo_total = tempo_atual - tempo_inicial
		retorne ( " A pesquisa linear demorou " + tempo_total + " miliss \n")
			
	}
	// final da função pesquisa linear

	funcao cadeia pesquisa_binaria()
	{
		
		 inicial =0
		 final = quantidade
		 encontrado = falso
		tempo_inicial = u.tempo_decorrido()
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
				//escreva(vet[meio]," ")
			
		}

		se (encontrado == verdadeiro )
		{
			escreva(" Valor encontrado na pesquisa binária. \n ")
		}
		senao
		{
			escreva("Valor não encontrado na pesquisa binária. \n")	
		}
		tempo_atual = u.tempo_decorrido()
		tempo_total = tempo_atual - tempo_inicial
		retorne ( " A pesquisa binária demorou " + tempo_total + " miliss \n")	
	}
	// Função de ordenação
	funcao cadeia ordenacao()
	{ 
		tempo_inicial = u.tempo_decorrido()
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
		tempo_atual = u.tempo_decorrido()
		tempo_total = tempo_atual - tempo_inicial
		retorne ( " A ordenação demorou " + tempo_total + " miliss \n")
		 
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
