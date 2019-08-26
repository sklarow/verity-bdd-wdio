Feature: Contact Form
    As  an Verity Group stakeholder
    I   want to contact the company using the form

    Scenario: Send Message via Contact Form
        Given I open the url "https://verity.com.br/contato"   
        And   I wait on element "//input[@name='empresa']" for 10000ms to be displayed 
        And   I set "Automation Company" to the inputfield "//input[@name='empresa']"
        And   I set "Sample Name" to the inputfield "//input[@name='nome']"
        And   I set "sample_automation@mail.com" to the inputfield "//input[@name='email']"
        And   I select the option with the text "Elogios" for element "//select"
        And   I set "41999999999" to the inputfield "//input[@name='telefone']"
        And   I set "Sample Message" to the inputfield "//textarea[@name='mensagem']"
        When  I click on the button "//button[@class='submit']"
        And   I wait on element "//div[contains(text(), 'Sua mensagem foi enviado com sucesso!')]" for 10000ms to be displayed
        Then  I expect that element "div.button" contains the text "Sua mensagem foi enviado com sucesso!"