onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AXI_DMA_LOOP_opt

do {wave.do}

view wave
view structure
view signals

do {AXI_DMA_LOOP.udo}

run -all

quit -force
