User Function Lacos()
    Local aArea     := GetArea()
    Local nValor    := 1
    Local cNome     := ""

    //Exemplo de For (Ir do valor 1 até o 10)
    For nValor := 1 To 10
    Next
    Alert("For (++): "+cValToChar(nValor))

    //Exemplo for inverso (Fazer do Valor 10 até 1)
    For nValor := 10 To 1 Step -1
    Next
    Alert("For (--): "+cValToChar(nValor))

    //Exemplo de While(Faça enquanto o valor for diferente de 10)... Também pode ser utilizado o Do While
    nValor := 1
    While nValor != 10
        nValor++
    EndDo
    Alert("While: "+cValToChar(nValor))

    //Exemplo do While composto (mais de 1 teste no laço de repetição)
    nValor := 1
    While nValor != 10 .And. cNome != "Daniel"
    //Se chegar no meio do laço
        If nValor == 5
            cNome := "Daniel"
        EndIf

        nValor++
    EndDo
    Alert("While composto: "+cValToChar(nValor))

    //Exemplo de quebra de laço de repetição (Fazer do Valor 1 até 10, incrementando de 2 em 2)
    For nValor := 1 To 10 Step 2
        //Se o valor for igual a 6, diminui um valor (será 5), e pula o laço
        If nValor == 6
            nValor--
            Loop
        EndIf

        //Se o valor for igual a 7, encerra o laço de repetição
        If nValor == 7
            Exit
        EndIf
    Next
    Alert("For (Quebra): "+cValToChar(nValor))

    RestArea(aArea)
Return
