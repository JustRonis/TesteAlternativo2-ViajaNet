
Dado('que eu acesso a tela de cadastro no site do flipboard') do
  visit "/join"
end

Quando('Preencho meu Email') do
  @cadastro.email.set Faker::Internet.email(domain: 'gmail')
  #Faker::Internet.email(domain: 'example')
end

Quando('preencho meu nome') do
  @cadastro.nome.set "Ronaldo Luiz"
end

Quando('preencho minha senha') do
  @cadastro.senha.set "senhaForte321@jaja"
end

Quando('aciono o botão de continuar') do
  click_button "Continue"
end

Então('devo ser redirecionado para a tela de seleção de preferências') do
  sleep 10
end

Quando('submeto o seguinte formulario de cadastro:') do |table|
  usuario = table.hashes.first
  @cadastro.email.set usuario[:Email]
  @cadastro.nome.set usuario[:FullName]
  @cadastro.senha.set usuario[:senha]

end

Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta_esperada|
  alerta_exibido = find(".message--error")
  expect(alerta_exibido.text).to eql mensagem_alerta_esperada
  sleep 2
end