<div align="center">
  <h1> Desenvolvimento de Coprocessador Aritmético para Operações com Matrizes </h1>
  <h3> Universidade Estadual de Feira de Santana </h3>
  <h3> TEC499 (TP04) - MI Sistemas Digitais </h3>
  <h4> Gabriel Vitor Nogueira da Silva, Luana Pedreira Oliveira, Lucca de Almeida Hora Coutinho </h4>
</div>

## Introdução

<p align="justify">
  Operações com matrizes são muito comuns em áreas como processamento de imagens, aprendizado de máquina, simulações científicas e telecomunicações. Como essas aplicações costumam exigir muitos cálculos, usar um coprocessador dedicado pode acelerar o processamento e melhorar o desempenho do sistema.
</p>

<p align="justify">
  Este projeto tem como objetivo desenvolver um coprocessador aritmético para realizar operações com matrizes quadradas de até 5x5 elementos, utilizando a placa DE1-SoC. O sistema será implementado em Verilog e realizará operações como adição, subtração, multiplicação, transposição, cálculo de determinante, entre outras. Além disso, o coprocessador será capaz de trabalhar em paralelo e utilizar arquitetura pipeline para tornar o processamento mais rápido, comunicando-se com o processador ARM da placa por meio de um barramento simples. 
</p>

## Softwares Utilizados e Kit de Desenvolvimento

<p align="justify">
  Durante o desenvolvimento do projeto, foi utilizado o software Intel Quartus Prime, ferramenta essencial para criação e simulação de circuitos digitais em FPGAs. Com ele, foi possível escrever o código em Verilog, fazer a pinagem dos sinais de entrada e saída, instanciar memórias e configurar todos os recursos necessários da placa DE1-SoC. O Quartus também foi utilizado para compilar o projeto e gravar o bitstream na FPGA, permitindo testes práticos e validação do funcionamento do coprocessador. 
</p>

<p align="justify">
	No início do projeto, foi utilizado o DESim, um simulador simples voltado para testes e validação de circuitos desenvolvidos em Verilog. Ele foi útil nas primeiras etapas para verificar o funcionamento básico de alguns módulos, mas acabou sendo descartado por suas limitações em simulações mais complexas. Também foram feitas tentativas de uso do ModelSim, um simulador mais robusto e completo, mas não foi possível utilizá-lo com sucesso devido a dificuldades de configuração e integração com o projeto no Quartus.
</p>

<p align="justify">
O projeto foi desenvolvido utilizando o Kit DE1-SoC, uma plataforma que combina um FPGA da Intel (Cyclone V) com um processador ARM integrado (HPS – Hard Processor System). Essa combinação permite criar sistemas embarcados complexos que integram hardware customizado e software. No projeto, o FPGA foi responsável por executar as operações com matrizes, enquanto o processador ARM foi utilizado para enviar comandos e interagir com o coprocessador. O kit também oferece diversos recursos de entrada e saída, como chaves, LEDs e memória, que foram utilizados ao longo do desenvolvimento e testes.
</p>

<p align="center">
    <img src="images/kitdev.jpg" width="600"/>
    <br/>
    <b>Figura 1.</b> Kit de Desenvolvimento DE1-SoC. <b>Fonte:</b> Terasic.
</p>

## Arquitetura do Computador

<p align="justify">
	 
</p>

<p align="justify">
	
</p>

<p align="justify">
	 
</p>

## Descrição de Instalação

<p align="justify">
	
</p>

## Configuração de Ambiente
<p align="justify">

</p>

## Execução

<p align="justify">
	
</p>

<p align="justify">
	
</p>

## Conclusão

<p align="justify">
	
</p>

<p align="justify">
	
</p>


