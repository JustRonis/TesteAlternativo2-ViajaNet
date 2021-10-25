Before do
    @cadastro = Cadastro.new
end

After do
    print = page.save_screenshot("relatorios/prints.png")
    Allure.add_attachment(
        name: "Screenshot",
        type: Allure::ContentType::PNG,
        source: File.open(print)
    )
end