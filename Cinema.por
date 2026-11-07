programa
{
	inclua biblioteca Texto --> t
	const inteiro linha = 10 
	const inteiro coluna = 12
	inteiro assentos[linha][coluna]
  	cadeia letras[coluna] = {"A","B","C","D","E","F","G","H","I","J","K","L"}
	funcao listar(){
		escreva("\n")
		para(inteiro i = -1; i < linha;i++){
			se(i!=-1) escreva(i+1," - ")
			para(inteiro j = 0; j < coluna; j++){
				se(i != -1) escreva(assentos[i][j]," ")
				senao {
					se(j == 0) escreva("    ")
					escreva(letras[j]," ")
				}
			}
			escreva("\n")
		}
	}
	funcao reservar(inteiro fileira,cadeia assento){
		inteiro posicao_assento = -1
		para(inteiro i = 0; i < coluna;i++){
			se(letras[i] == t.caixa_alta(assento)) posicao_assento = i 
		}
		se(posicao_assento != -1){
			se(assentos[fileira][posicao_assento] != 1){
				assentos[fileira][posicao_assento] = 1
			} senao escreva("Assento já reservado! Escolha outro\n")
		} senao{
			escreva("Valor do assento inválido!\n")
		}
	}
	funcao inicializar(){
		para(inteiro i = 0; i < linha;i++){
			para(inteiro j = 0; j < coluna; j++){
				assentos[i][j] = 0
			}
		}
    
	}
	funcao inicio()
	{
		inicializar()
		inteiro  fileira 
		cadeia assento
		faca{
			listar()
			escreva("Insira um valor negativo ou zero na fileira para encerrar o programa\n")
			escreva("Insira a fileira do assento que deseja reservar: ")
			leia(fileira)
			se(fileira > 0){
				escreva("Insira a letra do assento na fileira: ")
				leia(assento)
				reservar(fileira-1,assento)
			} senao pare
		} enquanto(fileira > 0)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1137; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {assentos, 6, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */