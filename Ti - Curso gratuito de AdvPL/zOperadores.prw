#Include 'protheus.ch'


User Function zOperadores()
    Local aArea := GetArea()

    Local nValor1 := 5
    Local nValor2 := 3
    Local cTexto1 := "Wilian Ansanello"
    Local cTexto2 := "Ansanello"

    //Atribuição
    nValor1 := 6 //Existe também o replace, porém ele é utilizado para campos (RecLock)

    //Manipulação
    nValor1++       //Soma 1 na variável. Equivale a nValor1 := nValor1 + 1
    nValor1--       //Subtrai 1 na variável. Equivale a nValor1 -1
    nValor1 *= 2    //Multiplica o valor. Equivale a nValor1 := nValor1 * 2
    nValor1 /= 2    //Divide o valor. Equivale a nValor1 := nValor1 / 2
    nValor1 += 7    // Soma o valor. Equivale a nValor1 := nValor1 + 7
    nValor1 -= 7    //Substrai o valor. Equivale a nValor1 := nValor1 - 7

    //testes
    //ConOut("Testes: ") Imprime no arquivo console.log

    alert("Testes: ")
    alert(nValor1 == nValor2)       //Exatamente igual
    alert(! (nValor1 == nValor2))   //Negação
    alert(nValor1 != nValor2)       //Diferente de (também pode ser usado <>)
    alert(cTexto2 $ cTexto1)        //Está contido
    alert(nValor1 > nValor2)        //É maior que. Tem o >= (maior ou igual) também
    alert(nValor1 < nValor2)        //É menor que. Tem o <= (menor ou igual) também
    alert("Testes compostos: ")
    alert((1 == 1) .And. (1 != 1))  //Só retorna verdadeiro se todos os testes forem verdadeiros
    alert((1 == 1) .Or. (1 != 1))   //Retorna verdadeiro se qualquer teste for verdadeiro
    
    //Macro Substituição
    &("nValor3 := 8")
    alert(nValor3)

    RestArea(aArea)
Return
