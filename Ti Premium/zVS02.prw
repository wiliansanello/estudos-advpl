/*/{Protheus.doc} zVS02
(long_description)
@type user function
@author user
@since 28/10/2025
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
/*/
User Function zVS02()

    Local aArea := FWGetArea()
    Local nAtual := 0

    //Percorrendo 3 posições
    For nAtual := 1 To 3
        fMostrAtu(nAtual)
    Next

    MsgInfo(cValToChar(nAtual), "Atencao")

    FWRestArea(aArea)
Return 

Static Function fMostrAtu(nAtu)
    Local cVar := cValor(nAtu)
Return cVar
