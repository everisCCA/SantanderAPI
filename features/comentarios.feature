#encoding: utf-8
#language: pt

@api
Funcionalidade: Serviços de comentário

  Cenário: Criação de comentário
    Dado que enviei um novo comentário
    Quando remover o comentário
    Então espero ter um retorno de sucesso

  Cenário: Deleção de comentário
    Quando enviar um novo comentário
    Então espero ter um retorno de sucesso
