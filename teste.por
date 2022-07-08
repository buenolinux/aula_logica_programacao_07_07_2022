programa
{
	
// matrizes 
// primeiro para a linha 
// segundo para a coluna
inclua biblioteca Util --> u
	inteiro numeroSorteado = u.sorteia(10,60) 

	inteiro vetNumerosSorteados[50], i,numeroDigitado, numeroEncontrado = 0
	logico pesquisaLinear = falso, condicao = falso
	funcao inicio()
	{
	
		// exibir plataforma

		exibitPlataforma()
		escreva("\n \n número sorteado ",numeroSorteado," \n")
		escreva("\nDigite um número")
		leia(numeroDigitado)
		funcaoPesquisaLinear()
		
		 

			
		escreva("\n \n número sorteado ",numeroSorteado," \n")
		condicao = verdadeiro
	//	limpa()
		se(pesquisaLinear == verdadeiro)
		{
			limpa()
			exibitPlataforma()
		}
	}
	funcao exibitPlataforma()
	{
		para(i=0; i <50; i++)
		{
			vetNumerosSorteados[i] = u.sorteia(10,60)
			se(i % 10 ==0 e i !=0 e i < 50)
			{
				escreva("\nxx  ")	
			}
			senao
			{	se(condicao == verdadeiro e pesquisaLinear == verdadeiro)
				{
					se(  numeroEncontrado == vetNumerosSorteados[i])
					{
						escreva("",vetNumerosSorteados[i],"  ")	
					}
					senao
					{
						escreva("xx  ")
					}
				}
				senao
				{
					escreva("xx  ")
				}	
			}
			
		}	
	}
	// fim função 
	funcao funcaoPesquisaLinear()
	{
		para(i=0; i<50; i++)
		{
			se(numeroDigitado == vetNumerosSorteados[i] e numeroDigitado == numeroSorteado)
			{
				pesquisaLinear   = verdadeiro
				numeroEncontrado = vetNumerosSorteados[i]
			}
		}

		se(pesquisaLinear == verdadeiro)
		{
			
			escreva("Encontrado ",numeroDigitado," ==", numeroEncontrado)
		}
		senao
		{
			escreva("Não encontrado ",numeroDigitado," !=", numeroEncontrado)
		}	
	}
	funcao funcaoExibirNumeros()
	{
		para(i=0; i <50; i++)
		{
			
			se(i % 10 ==0 e i !=0 e i < 50)
			{
				//escreva("\n ",vetNumeros[i]," ")	
			}
			senao
			{
				///escreva(" ",vetNumeros[i]," ")	
			}
		}	
	}
}
