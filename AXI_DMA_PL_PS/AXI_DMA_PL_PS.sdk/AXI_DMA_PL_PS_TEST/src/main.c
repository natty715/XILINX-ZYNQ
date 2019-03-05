
/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
 * axi dma test
 *
*/


#include "dma_intr.h"
#include "timer_intr.h"
#include "sys_intr.h"

static XScuGic Intc; //GIC
static  XAxiDma AxiDma;
static  XScuTimer Timer;//timer

volatile u32 RX_success;
volatile u32 TX_success;

volatile u32 RX_ready=1;
volatile u32 TX_ready=1;

#define TIMER_LOAD_VALUE    166666665 //0.5S

char string_display[17]="";

int Tries = NUMBER_OF_TRANSFERS;
int i;
int Index;
u32 *TxBufferPtr= (u32 *)TX_BUFFER_BASE;
u32 *RxBufferPtr=(u32 *)RX_BUFFER_BASE;
u8 Value=0;
float speed_tx;
float speed_rx;

int axi_dma_test()
{
	int Status;
	TxDone = 0;
	RxDone = 0;
	Error = 0;

	xil_printf("PKT_LEN=%d\r\n",MAX_PKT_LEN);

	for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
			TxBufferPtr[Index] = Value;

			Value = (Value + 1) & 0xFF;
	}
	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((u32)TxBufferPtr, MAX_PKT_LEN*sizeof(u32));
	Timer_start(&Timer);
	while(1)
	//for(i = 0; i < Tries; i ++)
	{
		//RX DMA Transfer

		if(RX_ready)
		{
		   RX_ready=0;
		   Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
					(u32)(MAX_PKT_LEN*sizeof(u32)), XAXIDMA_DEVICE_TO_DMA);

		   if (Status != XST_SUCCESS) {return XST_FAILURE;}
		}

		//TX DMA Transfer
		if(TX_ready)
		{
			TX_ready=0;
			Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) TxBufferPtr,
					(u32)(MAX_PKT_LEN*sizeof(u32)), XAXIDMA_DMA_TO_DEVICE);

			if (Status != XST_SUCCESS) {return XST_FAILURE;}
		}

		if(RxDone)
		{
			RxDone=0;
			RX_ready=1;
			RX_success++;
		}

		if(TxDone)
		{
			TxDone=0;
			TX_ready=1;
			TX_success++;
		}
		if(usec==2)
		{
			usec=0;
			sprintf(string_display,"RX=%d",RX_success);
			xil_printf("%s\r\n",string_display);
			speed_rx = MAX_PKT_LEN*sizeof(u32)*RX_success/1024/1024;
			sprintf(string_display,"RX_sp=%.2fMB/S",speed_rx);
			xil_printf("%s\r\n",string_display);

			sprintf(string_display,"TX=%d",TX_success);
			xil_printf("%s\r\n",string_display);
			speed_tx = (MAX_PKT_LEN)*sizeof(u32)*TX_success/1024/1024;
			sprintf(string_display,"TX_sp=%.2fMB/S",speed_tx);
			xil_printf("%s\r\n",string_display);
			RX_success=0;
			TX_success=0;

		}

		if (Error) {
			xil_printf("Failed test transmit%s done, "
			"receive%s done\r\n", TxDone? "":" not",
							RxDone? "":" not");
			goto Done;
		}

	}

	/* Disable TX and RX Ring interrupts and return success */
	DMA_DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);
Done:
	xil_printf("--- Exiting Test --- \r\n");

	return XST_SUCCESS;

}

int init_intr_sys(void)
{
	DMA_Intr_Init(&AxiDma,0);//initial interrupt system
	Timer_init(&Timer,TIMER_LOAD_VALUE,0);
	Init_Intr_System(&Intc); // initial DMA interrupt system
	Setup_Intr_Exception(&Intc);
	DMA_Setup_Intr_System(&Intc,&AxiDma,TX_INTR_ID,RX_INTR_ID);//setup dma interrpt system
	Timer_Setup_Intr_System(&Intc,&Timer,TIMER_IRPT_INTR);
	DMA_Intr_Enable(&Intc,&AxiDma);

}

int main(void)
{
	init_intr_sys();
	axi_dma_test();
}


