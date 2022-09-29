*** Settings ***
Resource        base.robot  

Test Teardown   Close Section 

*** Test Cases   ***
Step 1: Login > Validation Healthdesk FrontEnd
    Open Browser                    https://teleconsulta.stg.iron.fit/login        chrome
    Maximize Browser Window
    Input Text                      css:input[name=email]           doctor.2.testapp@mailna.in
    Input Text                      css:input[type=password]        123456
    Click Element                   xpath:.//button[contains(.,'Logar')]
    Sleep                           2   
    GetWebElement                   xpath://h4[contains(.,'ATENDIMENTOS')]
    GetWebElement                   xpath://h4[contains(.,'NOTIFICAÇÕES')]
    GetWebElement                   xpath://h4[contains(.,'MÉDIA DE AVALIAÇÕES')]
    GetWebElement                   xpath://h4[contains(.,'TEMPO MÉDIO DE ATENDIMENTO')]
    GetWebElement                   xpath://h4[contains(.,'ATENDIMENTOS FINALIZADOS')]
    GetWebElement                   xpath://h4[contains(.,'ATENDIMENTOS EM ABERTO')]
    GetWebElement                   xpath://h4[contains(.,'Performance mês')]
    GetWebElement                   xpath://h4[contains(.,'PACIENTES POR GÊNERO')]
    GetWebElement                   xpath://h4[contains(.,'ATENDIMENTOS POR DOENÇAS')]
    GetWebElement                   xpath://h4[contains(.,'Acompanhamento Do Dia')]
    GetWebElement                   xpath://span[contains(.,'Agendadas')]
    GetWebElement                   xpath://span[contains(.,'Realizadas')]
    GetWebElement                   xpath://span[contains(.,'Não realizadas')]
    GetWebElement                   xpath://span[contains(.,'Próximas Consultas')]
    GetWebElement                   xpath://h4[contains(.,'Agendadas')]
    Sleep                           5
