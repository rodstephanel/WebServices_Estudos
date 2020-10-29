#Include "protheus.ch"
#Include "restful.ch"

/*inicia um servi�o REST*/  /*nome do servi�o*/     /*descri��o do servi�o*/
WSRESTFUL                   helloworld              DESCRIPTION "Primeiro servi�o REST" 
    /*inicia o m�todo*/ /*m�todo*/  /*descri��o do servi�o*/            /*sintaxe para encontrar o servi�o*/
    WSMETHOD            GET         DESCRIPTION "Mostrar Hello World"   WSSYNTAX "/helloworld"
/*encerra o servi�o*/
END WSRESTFUL

/*cria��o do m�todo*/   /*m�todo*/  /*servi�o ao qual esse m�todo pertence*/
WSMETHOD                GET         WSSERVICE helloworld
    /*esse m�todo deve sempre ter o application/jason*/
    ::SetContestType("application/json")
    /*resposta*/
    ::SetResponse('[{"Status":"Hello World"}]')
    /*status de reposta*/
    ::SetStatus(200)

Return .T.
