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

Descrever aqui de forma textual o comportamento esperado baseado no exemplo oficial.
Link usado como referência:
[https://docs.zephyrproject.org/latest/samples/drivers/uart/echo_bot/README.html](https://docs.zephyrproject.org/latest/samples/drivers/uart/echo_bot/README.html)

## 3.2 Casos de Teste Planejados (TDD)

### CT1 – Eco básico

* Entrada:
* Saída esperada:
* Critério de Aceitação:

### CT2 – Linha vazia

### CT3 – Linha longa

(Adicionar mais casos se necessário.)

## 3.3 Implementação

* Arquivo(s) modificados:
* Justificativa das alterações:

## 3.4 Evidências de Funcionamento

Salvar evidências em `docs/evidence/echo_bot/`.

Exemplo de referência no README:

```
[Link para o log CT1](docs/evidence/echo_bot/ct1_output.txt)
```

Adicionar aqui pequenos trechos ilustrativos:

```
Hello! I'm your echo bot. Tell me something and press enter:
Echo: Hello World!
```

## 3.5 Diagramas de Sequência D2

Vide material de apoio: https://d2lang.com/tour/sequence-diagrams/

Adicionar arquivos (diagrama completo e o código-base para geração do diagrama) em `docs/sequence-diagrams/`.

---

# 4. Etapa 2 – Async API (Transmissão/Recepção Assíncrona)

## 4.1 Descrição do Funcionamento

O código implementa duas threads (RX e TX) que se alternam de forma sincronizada usando semáforos, cada uma executando por 5 segundos antes de liberar a outra. A thread RX aguarda seu semáforo, dorme 5 segundos, monta uma mensagem com o tempo de uptime e grava no buffer compartilhado; em seguida libera a thread TX. A thread TX espera seu semáforo, imprime o conteúdo do buffer no UART usando uart_poll_out(), permanece ativa por 5 segundos e então devolve o controle à thread RX.

## 4.2 Casos de Teste Planejados (TDD)

### CT1 – Transmissão de pacotes e recepção de pacotes

* Entrada: Entrada definida no código (linha 41);
* Saída esperada: Flags de inicialização da leitura, inicialização da impressão e a impressão da mensagem definida em código.
* Critério de Aceitação: Mensagem impressa é a mesma mensagem definida no buffer da leitura sem muito delay.

### CT3 – Verificação de timing dos 5s

* Entrada: Entrada definida no código (linha 41);
* Saída esperada: Flags de inicialização da leitura, inicialização da impressão e a impressão da mensagem definida em código.
* Critério de Aceitação: Timestamp das mensagens de inicialização do RX e do TX variam em aproximadamente 5 segundos. Apenas um log de inicialização de thread (seja do RX ou TX) deve aparecer a cada 5 segundos.

## 4.3 Implementação

* Arquivos modificados: main.c, prj.conf.
* Motivos/Justificativas: Por conta do não funcionamento do código original do async API, toda a lógica do código foi modificada e refeita baseada no código do echo_bot, com o propósito original de funcionar similarmente a como funcionava o echo_bot, mas mantendo a temporalidade desejada do async API: O usuário enviaria uma mensagem em tempo de execução para o terminal serial, que seria armazenada na fila de mensagem durante a fase de leitura (RX). Então, as mensagens da fila seriam repetidas pelo programa na fase de impressão (TX). As fases alternariam entre si de 5 em 5 segundos. A dificuldade de implementar corretamente o envio da mensagem do usuário em tempo de execução fez com que este requisito fosse alterado para a repetição de uma mensagem definida em tempo de projetoo, garantindo a temporalidade desejada para o código. Toda a nova lógica foi implementada no main.c, e o prj.conf foi modificado para especificar apenas as funções necessáiras para o funcionamento do UART0 e para logging (esse útlimo necessário para verificar de forma leve e dinâmica o funcionamento periódico correto do UART).

## 4.4 Evidências de Funcionamento

Salvo em `docs/evidence/async_api/`.

## 4.5 Diagramas de Sequência D2

Diagrama e código correspondente em `docs/sequence-diagrams/`.

# 5. Conclusões da Dupla

* O que deu certo: Foi possível fazer o código funcionar alternado 5 segundos em rx e tx utilizando ferramentas vistas em aulas passadas (semáforos)
* O que foi mais desafiador: Houve dificuldade em implementar a inserção em real-time de input pelo usuário via terminal serial, por conta da natureza dos comandos de leitura e adição de mensagens na fila do UART. O seu funcionamento por interrupções fazia com que a execução do echo sempre simultanea à mensagem enviada, ignorada a temporalidade requerida para o funcionamento asíncrono do UART. Como a equipe não conseguiu resolveu esse problema em tempo habil, decidiu se substituir o input realizado em real-time pela mensagem programa em tempo de projeto.
