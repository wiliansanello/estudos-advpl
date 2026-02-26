/*/{Protheus.doc} zBanco
(long_description)
@type user function
@author user
@since 23/09/2025
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
/*/
User Function zBanco()
    Local aArea    := GetArea()
    Local aAreaB1  := SB1->(GetArea())
    Local cMens    := ""

    //Se a tabela já estiver posicionada
    If Select("SB1") > 0
        MsgStop("Tabela SB1 já está aberta!", "Atenção")
    EndIf

    //Selecionando a tabela de produtos
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))  //B1_FILIAL + B1_COD
    SB1->(DbGoTop())

    //Posicionando no produto de código F00002
    If SB1->(DbSeek(FWxFilial("SB1")+"F00002"))
        Alert(SB1->B1_DESC)
    EndIf

    //Agora, percorro todos os registros e adiciono a descrição em uma variável
    SB1->(DbGoTop())
    While !SB1->(EoF())
        cMens += Alltrim(SB1->B1_DESC)+";"+Chr(13)+Chr(10)

        SB1->(DbSkip())
    EndDO

    //Mostrando a mensagem
    Aviso("Atenção", cMens, {'OK'}, 03)  

    RestArea(aAreaB1)
    RestArea(aArea)  
Return 

/*
O ideal de usar referências:
Modo errado:
    DbSelectArea("SB1")

    While !EoF()
    //Tratamentos para o relatório

        DbSelectArea("SB2")
        //Pega o saldo do produto

        DbSkip()
    EndDo()

Modo certo:
    DbSelectArea("SB1")
    DbSelectArea("SB2")

    //Referência a tabela de produtos
    While ! SB1->(EoF())
        //Tratamentos para o relatório

        DbSelectArea("SB2")
        //Pega o saldo do produto

        SB1->(DbSkip())
    EndDO
*/
