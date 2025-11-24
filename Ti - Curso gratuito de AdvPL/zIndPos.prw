/*/{Protheus.doc} zIndPos
(long_description)
@type user function
@author user
@since 30/09/2025
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
/*/
User Function zIndPos()

    Local aArea     := FWGetArea()
    Local cDescri   := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) //Vou usar o índice 1
    SB1->(DbGoTop()) //Após a ordenação, garante que a tabela fique no topo

    //Posicionando com o DbSeek, onde passa os campos na sequência do índice
    If SB1->(DbSeek(FWxFilial('SB1') + 'E00001'))
        MsgInfo("Descrição 1: "+SB1->B1_DESC, "Atenção")
    EndIf    

    //Também é possível usar o DbOrderNickName, se o índice tiver um apelido. Exemplo:
    //SE1->(DbOrderNickName("TITPAI"))

    //A função posicione permite retornar um único campo desejado da tabela
    cDescri := posicione('SB1',;            
                          1,;
                          FWxFilial('SB1')+'2404',;
                          'B1_DESC')

    MsgInfo("Descrição 2: "+cDescri, "Atenção")

    FWRestArea(aArea)

Return 
