#include 'Totvs.ch'

/*/{Protheus.doc} zExRecLo
Programa para testes gerais de desenvolvimento
@type user function
@author Wilian Ansanello
@since 18/11/2025

/*/
User Function zExRecLo()

     /*
    //Inserção
    RecLock('ZA0',.T.)
        ZA0->ZA0_FILIAL := FWxFilial('ZA0')
        ZA0->ZA0_CAMPO1 := 'AAA'
        ZA0->ZA0_CAMPO2 := 'BBB'
    ZA0->(MsUnlock())

     MsgInfo("Código: "+cValToChar(ZA0->ZA0_COD)+Chr(13)+Chr(10)+;
            "Campo 1 : "+ZA0->ZA0_CAMPO1+Chr(13)+Chr(10)+;
            "Campo 2 : "+ZA0->ZA0_CAMPO2 ,;
             "Inclusão")    
       
    //Alteração
    DbSelectArea('ZA0')
    ZA0->(DbSetOrder(1))

    If ZA0->(DbSeek('0'+FWxFilial('ZA0')))
        RecLock('ZA0', .F.)
            ZA0->ZA0_CAMPO1 = 'TESTE'
            ZA0->ZA0_CAMPO2 = 'TST1'
        ZA0->(MsUnlock())
    
    //Alterar registro via DbGoTo

    DbSelectArea('ZA0')
    ZA0->(DbGoTo(1))

    RecLock('ZA0',.F.)
        ZA0->ZA0_CAMPO1 = 'ALTERA'
        ZA0->ZA0_CAMPO2 = 'ALT2'
    ZA0->(MsUnlock())

    MsgInfo("Código: "+cValToChar(ZA0->ZA0_COD)+Chr(13)+Chr(10)+;
            "Campo 1 atualizado: "+ZA0->ZA0_CAMPO1+Chr(13)+Chr(10)+;
            "Campo 2 atualizado: "+ZA0->ZA0_CAMPO2 ,;
             "Alteração")

    EndIf    

    //Exclusão de registro
    DbSelectArea('ZA0')
    ZA0->(DbGoTo(1))
    
    RecLock("ZA0",.F.)
        DbDelete()
    ZA0->(MsUnlock())
    */

    // Verificando se pode manipular o registro
    If RecLock("ZA0", .F.)
        ZA0->(MsUnlock())
            ZA0->ZA0_CAMPO1 := 'TRAVA'        
        ZA0->(MsUnlock())
    
    else
        MsgStop("Não foi possível travar o registro para manipulação", "Atenção")
    EndIf

Return 
