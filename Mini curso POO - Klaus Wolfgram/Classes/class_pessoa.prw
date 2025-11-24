#include 'totvs.ch'

/*/{Protheus.doc} pessoa
    (long_description)
    @author user
    @since 01/10/2025
    @version version
    /*/
Class pessoa

    //atributos
    data nome
    data nome_reduzido
    data cpf_cnpj
    data cep
    data endereco
    data bairro
    data cidade
    data uf
    data telefone
    data email

    //métodos
    method new() constructor
    method getCgc()
        
EndClass

method new(p_nome, p_nome_reduzido, p_cpf_cnpj, p_cep, p_endereco, p_bairro, p_cidade, p_uf, p_telefone, p_email) class pessoa

    default p_nome              :=''
    default p_nome_reduzido     :=''
    default p_cpf_cnpj          :=''
    default p_cep               :=''
    default p_endereco          :=''
    default p_bairro            :=''
    default p_cidade            :=''
    default p_uf                :=''
    default p_telefone          :=''
    default p_email             :=''

    self:nome                   := p_nome
    self:nome_reduzido          := p_nome_reduzido
    self:cpf_cnpj               := p_cpf_cnpj
    self:cep                    := p_cep
    self:endereco               := p_endereco
    self:bairro                 := p_bairro
    self:cidade                 := p_cidade
    self:uf                     := p_uf
    self:telefone               := p_telefone
    self:email                  := p_email

return self

method getCgc() class pessoa

    

return self:cpf_cnpj
