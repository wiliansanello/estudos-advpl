#include 'totvs.ch'

class cliente from pessoa

    data codigo
    data loja
   
    method new() constructor
    method grava_cliente()
    method getCgc()

endclass

method new(p_nome, p_nome_reduzido, p_cpf_cnpj, p_cep, p_endereco, p_bairro, p_cidade, p_uf, p_telefone, p_email) class cliente

    _Super:new(p_nome, p_nome_reduzido, p_cpf_cnpj, p_cep, p_endereco, p_bairro, p_cidade, p_uf, p_telefone, p_email)
    self:codigo := ''
    self:loja   := ''

return self 

method grava_cliente() class cliente

return .T.

method getCgc(p_cgc) class cliente
    
    default p_cgc   := '88888'
    self:cpf_cnpj := p_cgc

return self:cpf_cnpj
