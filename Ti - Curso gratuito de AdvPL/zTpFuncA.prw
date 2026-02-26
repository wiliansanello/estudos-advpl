#Include "Protheus.ch"

/*/{Protheus.doc} zTpFuncA
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
User Function zTpFuncA()

    Local aArea := GetArea()
    
    //Chamada de função padrão
    Mata010()

    //CHamada de função de usuário
    u_zTpFuncB()

    //Chamada de função estática no mesmo prw
    fTesteA()

    //Chamada de função estática de outro prw
    StaticCall(zTpFuncB, fTesteB, "Daniel")

    RestArea(aArea)
Return 
