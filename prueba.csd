<CSoundSynthesizer>

	<CsOptions>
		-odac	; Indica que la la salida pasará por un convertidor Digital-Analógoco (DAC) y será reproducida
	</CsOptions>
	
	<CsInstruments>
	
		sr	=	44100
		ksmps	=	32
		nchnls	=	2
		0dbfs	=	1

		instr 1
			asig    oscils	.2, p4, 0
        			outs    asig, asig
	        endin
	
	</CsInstruments>
	
	<CsScore>
	
		i 1	0	1	523.251
		i 1	1.01	1	587.33
		i 1	2.01	1	659.255
		i 1	3.01	1	698.456
		i 1	4.01	1	783.991
		i 1	5.01	1	880
		i 1	6.01	1	987.767
		i 1	7.01	1	1046.502
		i 1     9.01    1       1046.502
		i 1     10.01   1       987.767
        	i 1     11.01   1       880
	        i 1     12.01   1       783.991
        	i 1     13.01   1       698.456
	        i 1     14.01   1       659.255
        	i 1     15.01   1       587.33
	        i 1     16.01   1       523.251
	
	</CsScore>
	
</CsoundSynthesizer>
