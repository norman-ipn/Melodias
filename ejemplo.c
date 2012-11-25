undSynthesizer>
<CsOptions>
	-odac ;Convertidor analogico digital
</CsOptions>
<CsInstruments>
0dbfs = 1

instr oscilador ; Nuestro primer instrumento
asig oscil .2, 440, 1
out asig ; enviamos la señal a los altavoces
endin

instr 1
asig subinstr "oscilador"
out asig
endin

</CsInstruments>
<CsScore>
f1 0 1024 10 1 523.251; Tabla que contiene un ciclo de una onda sinusoidal
i1 0 1	1000.00
i1 1.01 1 587.33
 ; sonará el instrumento 1 desde el segundo 0 durante 5 segundos
</CsScore>
</CsoundSynthesizer>


/* NO LE HAGAN CASO A ESTE ARCHIVO SOLO FUE UNA PRUEBA Y AÚN NO SÉ BIEN COMO  BORRARLO, SUBIRÉ EL CORRECTO EN UN RATO MÁS*/