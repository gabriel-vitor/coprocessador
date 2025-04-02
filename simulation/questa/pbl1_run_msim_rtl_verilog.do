transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_adicao.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_subtracao.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_multiplicacao.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_mult_escalar.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_transposta.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_oposta.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/matriz_determinante.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/coprocessador.v}
vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/tpo4_gll/coprocessador {/home/aluno/Documentos/tpo4_gll/coprocessador/top_DE1_SoC.v}

