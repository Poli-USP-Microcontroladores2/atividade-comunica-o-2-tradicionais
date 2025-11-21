# PSI-Microcontroladores2-Aula10
Atividade: Comunicação UART

# Projeto UART – Atividade em Duplas (Echo Bot + Async API)

## 1. Informações Gerais

* Dupla:

  * Integrante 1: Anita Cunha
  * Integrante 2: Alexander Oliveira 

* Objetivo: implementar, testar e documentar aplicações de comunicação UART baseadas nos exemplos oficiais “echo_bot” e “async_api”, utilizando desenvolvimento orientado a testes, diagramas de sequência D2 e registro de evidências.

---

# 2. Estrutura Esperada do Repositório

```
README.md
src/

docs/
  evidence/
  sequence-diagrams/

```

---

# 3. Etapa 1 – Echo Bot (UART Polling/Interrupt)

## 3.1 Descrição do Funcionamento

O funcionamento do código acontece através da interação com um driver serial UART (uart0). O usuário digita uma mensagem no terminal. Essa mensagem é armazenada na fila de mensagens RX através da ativação de uma interrupção. Após a finalização da RSI, o código retorna para o loop na main, que envia no terminal uma mensagem contendo a enviada pelo usuário utilizando o modo polling (não por interrupção, que nem o recebimento de mensagens).

## 3.2 Casos de Teste Planejados (TDD)

## Detalhado dentro de docs no evidence.md

## 3.3 Implementação

* Arquivo(s) modificados: platformio.ini, prj.conf.
* Justificativa das alterações: O platformio.ini precisou ser modificado algumas vezes devido ás necessidades específicas de um dos integrantes da equipe que trabalhava com o pio em plataforma Mac. Além disso, apenas algumas configurações para habilitar logging no prj.conf foram adicionadas. Fora isso, o código executado é exatamente o mesmo apresentado como exemplo do site do zephyr.

## 3.4 Evidências de Funcionamento

Evidências em `docs/evidence/`.

## 3.5 Diagramas de Sequência D2

Diagramas em `docs/sequence-diagrams/`.

# 4. Etapa 2 – Async API (Transmissão/Recepção Assíncrona)

## 4.1 Descrição do Funcionamento

Descrever o comportamento esperado de forma textual, especialmente com a alternância TX/RX.
Link usado como referência:
[https://docs.zephyrproject.org/latest/samples/drivers/uart/async_api/README.html](https://docs.zephyrproject.org/latest/samples/drivers/uart/async_api/README.html)

## 4.2 Casos de Teste Planejados (TDD)

### CT1 – Transmissão de pacotes a cada 5s

### CT2 – Recepção

### CT3 – Verificação de timing dos 5s

(Adicionar mais casos se necessário.)

## 4.3 Implementação

* Arquivos modificados:
* Motivos/Justificativas:

## 4.4 Evidências de Funcionamento

Salvar em `docs/evidence/async_api/`.

Exemplo:

```
Loop 0:
Sending 3 packets (packet size: 5)
Packet: 0
Packet: 1
Packet: 2
```

Ou:

```
RX is now enabled
UART callback: RX_RDY
Data (HEX): 48 65 6C 6C 6F
Data (ASCII): Hello
```

## 4.5 Diagramas de Sequência D2

Vide material de referência: https://d2lang.com/tour/sequence-diagrams/

Adicionar arquivos (diagrama completo e o código-base para geração do diagrama) em `docs/sequence-diagrams/`.

---

# 5. Conclusões da Dupla

* O que deu certo:
* O que foi mais desafiador:
