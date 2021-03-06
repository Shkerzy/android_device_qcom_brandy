#ifndef BOARD_GPIO_H
#define BOARD_GPIO_H

//#include "gpio-tlmm-v1.h"
struct gpio_info {
	char name[15];
	unsigned char num;
	unsigned int active_cfg;
	unsigned int inactive_cfg;
};


/*******************************************
 *		LCD MODULE
 ******************************************/
#define GPIO_LCD_RESET	101
#define GPIO_LCD_RESET_CFG	GPIO_CFG(GPIO_LCD_RESET, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_LCD_TE	124
#define GPIO_LCD_TE_CFG		GPIO_CFG(GPIO_LCD_TE,0, GPIO_CFG_INPUT, GPIO_CFG_PULL_UP, GPIO_CFG_2MA)

/* control interface: spi */
#define GPIO_SPI_CS	131
#define GPIO_SPI_CS_CFG		GPIO_CFG(GPIO_SPI_CS, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_SPI_SCK	132
#define GPIO_SPI_SCK_CFG	GPIO_CFG(GPIO_SPI_SCK, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_SPI_MISO	102
#define GPIO_SPI_MISO_CFG	GPIO_CFG(GPIO_SPI_MISO, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_UP, GPIO_CFG_2MA)
#define GPIO_SPI_MOSI	103
#define GPIO_SPI_MOSI_CFG	GPIO_CFG(GPIO_SPI_MOSI, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)

/*******************************************
 *		TOUCH PANEL(CTP) MODULE
 ******************************************/
#define GPIO_CTP_EN         93
#define GPIO_CTP_MCU_INT    18
#define GPIO_CTP_MCU_RST    76

#define GPIO_CTP_EN_CFG         GPIO_CFG(GPIO_CTP_EN, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_CTP_MCU_INT_CFG     GPIO_CFG(GPIO_CTP_MCU_INT, 0, GPIO_CFG_INPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_CTP_MCU_RST_CFG     GPIO_CFG(GPIO_CTP_MCU_RST, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)


/*******************************************
 *              BT MODULE
 ******************************************/
#define GPIO_BT
#define GPIO_BT_RST 		16
#define GPIO_BT_WAKE            42
#define GPIO_BT_RFR             43
#define GPIO_BT_CTS             44
#define GPIO_BT_RX              45
#define GPIO_BT_TX              46
#define GPIO_BT_PCM_DOUT        68
#define GPIO_BT_PCM_DIN         69
#define GPIO_BT_PCM_SYNC        70 
#define GPIO_BT_PCM_CLK         71 
#define GPIO_BT_HOST_WAKE       83

#define GPIO_BT_RST_CFG_ON				GPIO_CFG(GPIO_BT_RST, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_WAKE_CFG_ON            GPIO_CFG(GPIO_BT_WAKE, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_RFR_CFG_ON             GPIO_CFG(GPIO_BT_RFR, 2, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_CTS_CFG_ON             GPIO_CFG(GPIO_BT_CTS, 2, GPIO_CFG_INPUT,  GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_RX_CFG_ON              GPIO_CFG(GPIO_BT_RX, 2, GPIO_CFG_INPUT,  GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_TX_CFG_ON              GPIO_CFG(GPIO_BT_TX, 3, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_PCM_DOUT_CFG_ON        GPIO_CFG(GPIO_BT_PCM_DOUT, 1, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_PCM_DIN_CFG_ON         GPIO_CFG(GPIO_BT_PCM_DIN, 1, GPIO_CFG_INPUT,  GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_PCM_SYNC_CFG_ON        GPIO_CFG(GPIO_BT_PCM_SYNC, 2, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA) 
#define GPIO_BT_PCM_CLK_CFG_ON         GPIO_CFG(GPIO_BT_PCM_CLK, 2, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA) 
#define GPIO_BT_HOST_WAKE_CFG_ON       GPIO_CFG(GPIO_BT_HOST_WAKE, 0, GPIO_CFG_INPUT,  GPIO_CFG_NO_PULL, GPIO_CFG_2MA)

#define GPIO_BT_RST_CFG_OFF			 	GPIO_CFG(GPIO_BT_RST, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_BT_WAKE_CFG_OFF          	GPIO_CFG(GPIO_BT_WAKE, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_RFR_CFG_OFF             GPIO_CFG(GPIO_BT_RFR, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_CTS_CFG_OFF             GPIO_CFG(GPIO_BT_CTS, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_RX_CFG_OFF              GPIO_CFG(GPIO_BT_RX, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_TX_CFG_OFF              GPIO_CFG(GPIO_BT_TX, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_PCM_DOUT_CFG_OFF        GPIO_CFG(GPIO_BT_PCM_DOUT, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_PCM_DIN_CFG_OFF         GPIO_CFG(GPIO_BT_PCM_DIN, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_PCM_SYNC_CFG_OFF        GPIO_CFG(GPIO_BT_PCM_SYNC, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_BT_PCM_CLK_CFG_OFF         GPIO_CFG(GPIO_BT_PCM_CLK, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA) 
#define GPIO_BT_HOST_WAKE_CFG_OFF       GPIO_CFG(GPIO_BT_HOST_WAKE, 0, GPIO_CFG_INPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)


/*******************************************
 *              WLAN MODULE
 ******************************************/
#define GPIO_WLAN_RST_L 26
#define GPIO_WLAN_RST_L_CFG         GPIO_CFG(GPIO_WLAN_RST_L, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)
#define GPIO_WLAN_WAKES_MSM     29
#define GPIO_WLAN_WAKES_MSM_CFG         GPIO_CFG(GPIO_WLAN_WAKES_MSM, 0, GPIO_CFG_OUTPUT, GPIO_CFG_PULL_DOWN, GPIO_CFG_2MA)
#define GPIO_WLAN_CHIP_PWD_L    81
#define GPIO_WLAN_CHIP_PWD_L_CFG         GPIO_CFG(GPIO_WLAN_CHIP_PWD_L, 0, GPIO_CFG_OUTPUT, GPIO_CFG_NO_PULL, GPIO_CFG_2MA)

#endif
