***Settings***
Resource    base.robot

Test Teardown   Close Section 
**Test Cases****

Step 1: Home screen Login
    [Tags]      login
    Open Browser                https://teleconsulta.stg.iron.fit/login        chrome
    GetWebElement               class:header_login
    
    ${validnome}=               GetWebElement           class:header_login

    Should Contain              ${validnome.text}            Login             
    Sleep                       5

Step 2: Login valid
    [Tags]      login_valid
    Open Browser                https://teleconsulta.stg.iron.fit/login        chrome
    Maximize Browser Window
    Input Text                      css:input[name=email]           doctor.2.testapp@mailna.in
    Input Text                      css:input[type=password]        123456
    Click Element                   xpath:.//button[contains(.,'Logar')]
    GetWebElement                   xpath:.//h2[contains(.,'HealthDesk')]
    GetWebElement                   xpath:.//*[@id='agendaMenu']
    GetWebElement                   xpath:.//*[@id='patientSearchMenu']
    Sleep                           5

Step 3: Login invalid
    [Tags]      login_invalid
    Open Browser                https://teleconsulta.stg.iron.fit/login        chrome
    Maximize Browser Window
    Input Text                      css:input[name=email]           viniciustqa001@gmail.com
    Input Text                      css:input[type=password]        123456
    Click Element                   xpath:.//button[contains(.,'Logar')]
    GetWebElement                   xpath://p[contains(.,'E-mail ou senha inválidos!')]
    Sleep                           5

Step 4: Forgot password (Visual page validation)
    [Tags]      forgot_pass        
    Open Browser                https://teleconsulta.stg.iron.fit/login        chrome
    Maximize Browser Window
    Click Element               xpath://a[contains(.,'Esqueceu a senha?')]
    Input Text                  css:input[name=email]           viniciustqa001@gmail.com
    Click Element               xpath://button[contains(.,'Enviar')]
    Sleep                       5
    GetWebElement               xpath://p[contains(.,'Sucesso, verifique seu e-mail!')]
    Sleep                       5


#Step 4.1: Checking confirmation email       
    #Open Browser                https://yopmail.com/en/         chrome
    #Input Text                  css:input[title=email]          testrobotiron
    #Click Element               xpath://button[contains(.,'')]
    #Sleep                       5
