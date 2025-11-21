shape: sequence_diagram
rx: "Thread RX"
tx: "Thread TX"
uart: "UART Driver"
buffer: "Buffer Compartilhado"
semrx: "Semáforo RX"
semtx: "Semáforo TX"

rx -> semrx: espera(sem_rx)
semrx -> rx: recebe

rx -> rx: suspensão(5000 ms)
rx -> buffer: escreve mensagem no buffer

rx -> semtx: libera(sem_tx)

semtx -> tx: recebe
tx -> buffer: ler mensagem

tx -> uart: envia mensagem para o terminal serial

tx -> tx: suspensão(5000 ms)
tx -> semrx: libera(sem_rx)

note: "Loop infinito"
rx -> rx: repetir ciclo
