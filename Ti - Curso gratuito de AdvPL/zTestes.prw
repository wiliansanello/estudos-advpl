User Function zTestes()

    Local aArea     := GetArea()
    Local dDataTst  := Date()
    Local lQuinta   := .F.

    //Testando se o dia de hoje  é quinta
    If Upper(cDoW(dDataTst)) == "THURSDAY"
        lQuinta := .T.
        Alert("Hoje é quinta!")
    else
        lQuinta := .F.
        Alert("Hoje não é quinta!")
    EndIf

    //Se não for quinta-feira, e for sábado
    If !lQuinta .And. Upper(cDoW(dDataTst)) == "SATURDAY"
        Alert("Sabadão!")
    //Senão, se não for quinta-feira e for domingo
    ElseIf !lQuinta .And. Upper(cDoW(dDataTst)) == "SUNDAY"
        Alert("Domingão")
    EndIf

    //Fazendo case de testes
    Do case
        Case Upper(cDoW(dDataTst) == "MONDAY")
            Alert("Hoje é <b>Segunda</b>")
        Case Upper(cDoW(dDataTst) == "TUESDAY")
            Alert("Hoje é <b>Terça</b>")
        Case Upper(cDoW(dDataTst) = "WEDNESDAY")
            Alert("Hoje é <b>Quarta</b>")
        Case Upper(cDoW(dDataTst) == "THURSDAY")
            Alert("Hoje é <b>Quinta</b>")
        Case Upper(cDoW(dDataTst) == "FRIDAY")
            Alert("Hoje é <b>Sexta</b>")
        Case Upper(cDoW(dDataTst) == "SATURDAY")
            Alert("Hoje é <b>Sábado</b>")
        Otherwise
            Alert("Hoje é <b>Domingo</b>")  
    End case    
    RestArea(aArea)
Return    
