//Bibliotecas
#Include "Protheus.ch"
#Include "TopConn.ch"

//Se for espanhol
#Ifdef SPANISH
    #Define STR_TESTE   'Un gran poder conlleva una gran responsabilidad'
    #Define STR_TITULO  'Precaución'

#Else
    //Senão, irá testar novamente
    #Ifdef ENGLISH
        #Define STR_TESTE   'With great power comes great responsibility'
        #Define STR_TITULO  'Caution'

    #Else
        #Define STR_TESTE 'Com grandes poderes vêm grandes responsabilidades'
        #Define STR_TITULO 'Atenção'
    #EndIf
#EndIf

//Constantes
#Define STR_PULA    Chr(13)+Chr(10)


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
User Function zConstantes()
    Local aArea := GetArea()

    //Mostrando mensagem
    MsgAlert(STR_TESTE + STR_PULA + "...", STR_TITULO)

    RestArea(aArea)
Return 

