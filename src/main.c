#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/uart.h>
#include <zephyr/logging/log.h>
#include <string.h>

/* change this to any other UART peripheral if desired */
#define UART_DEVICE_NODE DT_CHOSEN(zephyr_shell_uart)

#define MSG_SIZE 64

LOG_MODULE_REGISTER(uart_log, LOG_LEVEL_INF);

/* queue to store up to 10 messages (aligned to 4-byte boundary) */
K_MSGQ_DEFINE(uart_msgq, MSG_SIZE, 10, 4);

static const struct device *const uart_dev = DEVICE_DT_GET(UART_DEVICE_NODE);

/* receive buffer used in UART ISR callback */
static char rx_buf[MSG_SIZE];

K_SEM_DEFINE(semrx, 1, 1);
K_SEM_DEFINE(semtx, 0, 1);

void print_uart(char *buf)
{
    while (*buf) {
        uart_poll_out(uart_dev, *buf++);
    }
}

void serial_rx(void *a, void *b, void *c){
    while(1){
        k_sem_take(&semrx, K_FOREVER);
        uint8_t c;
        int64_t inicio = k_uptime_get();
        int64_t tempo = 0;

        LOG_INF("Fim da impressão! Inicio da escrita!");

        k_msleep(5000);

        snprintf(rx_buf, MSG_SIZE,
                 "ECHO!!!! tempo=%llu ms\r\n",
                 k_uptime_get());

        k_sem_give(&semtx);
    }
}


void serial_tx(void *a, void *b, void *c){
    while (1) {
        k_sem_take(&semtx, K_FOREVER);
        int64_t inicio = k_uptime_get();
        int64_t tempo = 0;
        LOG_INF("Fim da escrita! Inicio da impressão!");

        print_uart(rx_buf);

        while (k_uptime_get() - inicio < 5000) {
            k_msleep(50);
        }

        k_sem_give(&semrx);
    }
}

/*
 * Print a null-terminated string character by character to the UART interface
 */

K_THREAD_DEFINE(uart_rx_thread, 1024, serial_rx, NULL, NULL, NULL, 2, 0, 0);
K_THREAD_DEFINE(uart_tx_thread, 1024, serial_tx, NULL, NULL, NULL, 1, 0, 5);

int main(void)
{
	if (!device_is_ready(uart_dev)) {
		printk("UART device not found!");
		return 0;
	}

	print_uart("Hello! I'm your echo bot.\r\n");
	print_uart("Tell me something and press enter:\r\n");
}