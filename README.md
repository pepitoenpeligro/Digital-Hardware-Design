# Digital-Hardware-Design

## Recopilación de todos los proyectos de diseño de hardware digital.

### Proyectos contenidos en el repositorio
1. luzdos: proyecto que incorpora el procesador embebido de Altera (competidor de MicroBlaze de Xilinx). Trata de controlar los switches de la placa DE2-115 y encender los leds incorporados en función de la disposición de los switches (SW[0] -> LED[0] ... SW[7]-> LED[7])
2. contador8bits: proyecto que incorpora el diseño de un contador de 8 bis (0 - 255) funcionalmente completo.

## Sofware CAD usado:
- Quartus II 12.0 sp2 [1].
- Model Sim Altera - Intel FPGA STARTER EDITION 10.5b [2]
- Altera Monitor Program [3]

</br>

## Plataforma de desarrollo
La plataforma de desarrollo sobre la que diseñamos el hardware es: DE2-115.
Esta plataforma contiene en su interior entre otras características:
1. Altera Cyclone IV 4CE115 FPGA.
2. Altera Serial Configuration Device.
3. 2 MB SRAM.
4. 2x 64 MB SDRAM.
5. 8 MB Flash Memory.

</br>

## Tips
### Tip 0:
No confundir la tarjeta con la FPGA. La FPGA (Field Programable Gate Array) es el dispositivo programable que contiene bloques lógicos, los cuales se interconectan para que realicen la funcionalidad que nosotros diseñamos, en nuestro caso con Quartus II sobre ficheros de diseño VHDL. La tarjeta es una plataforma de desarrollo, que contiene, además de la FPGA integrada, otros recursos como disposivos de audios, de video, las memoria RAM, SDRAM, FLASH, y el mecanismo de programación de la FPGA.


### Tip 1:
Para realizar cualquier diseño, antes debemos de tener en nuestra cabeza el circuito que queremos diseñar.

### Tip 2:
Es muy importante tener buenos hábitos de diseño de hardware digital.


### Tip 3:
Si hay algo que no te quede claro o no entiendas de este repositorio, por favor, no dudes en ponerte en contacto con el dueño del repositorio, no come a nadie y siempre está dispuesto a echar una mano ;)


</br>
</br>

- - -
### Referencias
[1] https://www.altera.com/downloads/software/quartus-ii-we/120.html

[2] https://www.altera.com/downloads/software/modelsim-starter/120.html

[3] https://www.altera.com/support/training/university/materials-software.html?&ifup_version=12.0

- - - 
### Enlaces de interés
- Tarjeta DE2-115: ftp://ftp.altera.com/up/pub/Altera_Material/Boards/DE2-115/DE2_115_User_Manual.pdf
- Cyclone IV FPGA: http://www.altera.com/literature/hb/cyclone-iv/cyclone4-handbook.pdf
- Nios II processor [Computer Organization]:  https://www.altera.com/support/training/university/materials-tutorials.html?&ifup_version=12.0
- Información general sobre Nios II (1): https://en.wikipedia.org/wiki/Nios_II
- Información general sobre Nios II (2): https://www.altera.com/products/processors/overview.html
