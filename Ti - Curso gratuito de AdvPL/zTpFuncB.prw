#Include "Protheus.ch"

/*/{Protheus.doc} zTpFuncB
ription)
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
User Function zTpFuncB()

    Local aArea := GetArea()

    //Mostra mensagem e chama função estática
    MsgInfo("Estou na função u_zTpFUncB()", "Atenção")
    fTesteB()

    RestArea(aArea)
Return 


Static FUnction fTesteB (cPar1)
    Local aArea := GetArea()
    Default cPar1 := ""

    //Mostrando mensagem
    MsgInfo("Estou em uma função estática <b>(B)</b>, "+cPar1+"!", "Atenção")
    
    RestArea(aArea)
Return
