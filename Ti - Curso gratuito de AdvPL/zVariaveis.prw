/*/{Protheus.doc} nomeFunction
(long_description)
@type user function
@author user
@since 05/09/2025
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
/*/
User Function zVariaveis()

    Local aArea := GetArea()

    //Declaração de variáveis
    Local nValor  := 0
    Local dData   := Date()
    Local lTeste  := .T.
    Local cTexto  := "Terminal de Informação"
    Local oObjeto :=TFont:New('Tahoma')
    Local xInfo   := 0
    Local aDados  := {"Wilian", "Ansanello", dData}
    Local bBloco1 := {||        nvalor := 1,;
                                Alert("Valor é igual a "+cValToChar(nValor))}
    Local bBloco2 := {|nValor|  nvalor := 2,;
                                Alert("Valor é igual a "+cValToChar(nValor))}

    //Executando o bloco de código
    EVal(bBloco1)
    EVal(bBloco2, 5)        

    //Alterando valores
    xInfo := "Teste"

    RestArea(aArea)
Return 
