#Include "protheus.ch"
#Include "restful.ch"

/*inicia um serviço REST*/  /*nome do serviço*/     /*descrição do serviço*/
WSRESTFUL                   helloworld              DESCRIPTION "Primeiro serviço REST" 
    /*inicia o método*/ /*método*/  /*descrição do serviço*/            /*sintaxe para encontrar o serviço*/
    WSMETHOD            GET         DESCRIPTION "Mostrar Hello World"   WSSYNTAX "/helloworld"
/*encerra o serviço*/
END WSRESTFUL

/*criação do método*/   /*método*/  /*serviço ao qual esse método pertence*/
WSMETHOD                GET         WSSERVICE helloworld
    /*esse método deve sempre ter o application/jason*/
    ::SetContestType("application/json")
    /*resposta*/
    ::SetResponse('[{"Status":"Hello World"}]')
    /*status de reposta*/
    ::SetStatus(200)

Return .T.
