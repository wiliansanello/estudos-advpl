#include 'totvs.ch'

/*/{Protheus.doc} app002
(long_description)
@type user function
@author user
@since 03/10/2025
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
/*/
User Function app002

    Local cBaseCSV  := 'C:/ADVPL ESTUDOS/Mini curso POO - Klaus Wolfgram/base_cnpj.csv'
    Local cBuffer   := ''
    Local aBuffer   := array(0)
    Local aCSV      := array(0)
    Local nHdl      := FT_FUSE(cBaseCSV)

    If nHdl < 0
        fwAlertError('Arquivo '+cBaseCSV+' não encontrado','Erro')
        Return .F.
    EndIf

    FT_FGOTOP()

    While .Not. FT_FEOF()

        cBuffer := FT_READLN()
        aBuffer := strToKArr(cBuffer,',')

        If Len(aBuffer) > 1
            aadd(aCSV, aBuffer[1])
        EndIf

        FT_FSKIP()

    EndDo

    FT_FUSE()

    processa({|| app002(aCSV)},"Gerando base de dados","Aguarde...")
Return

Static Function app002(aCSV)

    Local oCliFor
    Local x
    Local lCliente
    Local lFornece

    procregua(Len(aCSV))

    For x := 1 To Len(aCSV)

        incproc()
        sleep(2000)

        oCliFor := fornecedor():new()

        oCliFor := cpf_cnpj := aCSV[x]
        oCliFor :get_dados_cadastrais()

        If Empty(oCliFor:nome)
            Loop
        EndIf

    Next

Return
