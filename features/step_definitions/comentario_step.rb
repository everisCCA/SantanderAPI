# encoding: utf-8

Before('@api') do
  @api = ComentarioApi.new
end

Dado(/^que enviei um novo comentário$/) do
  steps %{
    Quando enviar um novo comentário
  }
end

Quando(/^enviar um novo comentário$/) do
  @response_code = 201
  # Efetua requisição para criar um novo comentário
  @response = @api.criar
  # Validar o status code da resposta
  expect(@response.code).to eq(@response_code)
  # Validar conteúdo da mensagem
  @response.body.should include("id")
end

Quando (/^remover o comentário$/) do
  @response_code = 200
  # Efetua requisição para remover o comentário
  @response = @api.remover 1
  # Validar o status code da resposta
  expect(@response.code).to eq(@response_code)
  # Validar conteúdo da mensagem
  expect(@response.body).to eq('{}')

end

Então (/^espero ter um retorno de sucesso$/) do
  # Validar o status code da resposta
  expect(@response.code).to eq(@response_code)
end
