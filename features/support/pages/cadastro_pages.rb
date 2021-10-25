class Cadastro
    include Capybara::DSL

    def email
        return find_field(type: 'email')
    end

    def nome
        return find_field(placeholder: 'Full Name')
    end

    def senha
        return find_field(name: 'password')
    end
end