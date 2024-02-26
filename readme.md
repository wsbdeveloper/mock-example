# WireMock - Itau :orange_book:

O WireMock é uma ferramenta de simulação de serviços HTTP que permite criar e gerenciar facilmente simulações de endpoints HTTP. É amplamente utilizado em testes de integração e desenvolvimento de aplicativos para simular comportamentos de serviços externos durante o desenvolvimento e teste de software.

[Documentação Completa](https://wiremock.org/docs/)

Principais características e funcionalidades do WireMock:

- Simulação de Endpoints HTTP: O WireMock permite criar endpoints HTTP simulados que respondem de acordo com configurações específicas definidas pelo usuário.

- Configuração Flexível: Ele oferece uma variedade de opções para configurar o comportamento dos endpoints, como resposta de texto, JSON, XML, resposta de status HTTP, atraso na resposta, entre outros.

- Correspondência de Requisições: O WireMock suporta correspondência de requisições com base em diversos critérios, como URL, método HTTP, cabeçalhos, corpo da requisição (por exemplo, JSONPath, XPath), entre outros.

- Simulação de Cenários Complexos: Com o WireMock, é possível simular cenários complexos, incluindo múltiplas solicitações e respostas, autenticação, autorização, entre outros.

- Interface de Administração: Ele fornece uma interface de administração baseada na web para visualizar e gerenciar simulações, facilitando a configuração e o monitoramento dos endpoints simulados.

- Integração com Testes Automatizados: O WireMock pode ser facilmente integrado em testes automatizados, permitindo simular comportamentos de serviços externos para testes de unidade, integração e sistema.

Em resumo, o WireMock é uma ferramenta poderosa para simular serviços HTTP durante o desenvolvimento e teste de software, ajudando a criar ambientes de teste mais controlados e confiáveis.

## Request Matching

_Request Mapping_ são configurações de chamadas HTTP Request, nele podemos utilizar configurações para nossas chamadas de acordo com a regra do seu mock.

Documentação oficial:

[Wiremock - Request Matching]([https://](https://wiremock.org/docs/request-matching/))

## Stubbing - Esboço

Um recurso principal da simulação da API WireMock é a capacidade de retornar respostas HTTP prontas para solicitações que correspondam aos critérios. Eles são descritos detalhadamente em Correspondência de Solicitações.

### Stub Priority - Prioridades de chamadas

Em arquivos com mais de um _request_ configurada, temos a opção de prioridade ela nos ajuda com as configurações de priorização da mesma URI que está chamando:

Exemplo:

Temos uma simulação de prioridade 1, que esse valor refere-se a um valor muito baixo. Então, quando executarmos a chamada essa configuração será a última entre todas que está com o priority.

```json
{
  "request": {
    "method": "GET",
    "url": "/api/simulação"
  },
  "response": {
    "status": 200,
    "body": "Resposta para simulação com prioridade 1"
  },
  "priority": 1
}
```

Vejamos com uma prioridade mais alta, sendo assim, caso enviarmos uma chamada HTTP:

```json
{
  "request": {
    "method": "GET",
    "url": "/api/simulação"
  },
  "response": {
    "status": 200,
    "body": "Resposta para simulação com prioridade 2"
  },
  "priority": 2
}
```

> Quando executarmos para mesma chamada, se caso a prioridade maior não for acionada a com menor prioridade entra em ação. Isso nos ajuda a configurar cenários de mock para nossas api's.

descrição oficial:

Às vezes, você desejará declarar dois ou mais mapeamentos de stub que “se sobrepõem”, no sentido de que uma determinada solicitação corresponderia a mais de um deles. Por padrão, o WireMock usará o stub correspondente adicionado mais recentemente para satisfazer a solicitação. No entanto, em alguns casos é útil exercer mais controle.

## Request Matching

_Request Mapping_ são configurações de chamadas HTTP Request, nele podemos utilizar configurações para nossas chamadas de acordo com a regra do seu mock.

Configurações que podemos configurar de acordo com cada chamadas e regras da sua API

- URL
- HTTP Method
- Query parameters
- Form parameters
- Headers
- Basic authentication (a special case of header matching)
- Cookies
- Request body
- Multipart/form-data

Documentação oficial:

[Wiremock - Request Matching]([https://](https://wiremock.org/docs/request-matching/))
