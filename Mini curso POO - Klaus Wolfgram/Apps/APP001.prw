#include 'totvs.ch'

user function app001 // é a mesma coisa que declarar funcion u_app001

    Local oCliente := cliente():new()
    //Local oPessoa := pessoa():new('Wilian Ansanello', 'wilian')
    Local cCGG    := oCliente:getCgc()
    
    oCliente:email      := 'wiliansanello@dev.br'
    oCliente:cpf_cnpj   := '123456789'

    cCGG                := oCliente:getCgc()
    
return oCliente
