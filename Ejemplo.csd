oundSynthesizer>
     ejemplo1.wav

	<CsOptions>
		-o ejemplo1.mp3
	</CsOptions>
	
	<CsInstruments>
	
		sr	=	10000
		ksmps	=	32
		nchnls	=	2
		0dbfs	=	1

		instr 1
			asig    oscils	.2, 440, 0
        			outs    asig, asig
                endin
		instr 2
			asig    oscils	.2, 100, 100
        			outs    asig, asig
	        endin
                instr 3
			asig    oscils	.2, 200, 100
        			outs    asig, asig
	        endin
		instr 4
			asig    oscils	.2, 1000, 100
        			outs    asig, asig
	        endin
	
	</CsInstruments>
	
	<CsScore>

                ;CICLO do re mi fa sol la si
                i 1	0	1	523.251
		i 4	0	1	523.251
		i 1	1.01	1	587.33
		i 4	1.01	1	587.33
		i 1	2.01	1	659.255
		i 4	2.01	1	659.255
		i 1	3.01	1	698.456
		i 2	3.01	1	698.456
		i 3	4.01	1	783.991
		i 2	4.01	1	783.991
		i 1	5.01	1	880
		i 2	5.01	1	880
		i 1	6.01	1	987.767
		i 2	6.01	1	987.767
		i 1	7.01	1	1046.502
		i 2	7.01	1	1046.502
		i 1     9.01    1       1046.502
		i 2     9.01    1       1046.502
		i 1     10.01   1       987.767
		i 2     10.01   1       987.767
        	i 1     11.01   1       880
        	i 2     11.01   1       880
	        i 1     12.01   1       783.991
	        i 2     12.01   1       783.991
        	i 1     13.01   1       698.456
        	i 2     13.01   1       698.456
	        i 1     14.01   1       659.255
	        i 2     14.01   1       659.255
        	i 1     15.01   1       587.33
        	i 2     15.01   1       587.33
	        i 1     16.01   1       523.251
	        i 2     16.01   1       523.251
	; la misma nota en graves y agudos.
	
		i 1	17.01	3	523.251
		i 2	17.01	3	523.251
		i 3	17.01	3	523.251
		i 4	17.01	3	523.251
	
	</CsScore>
	

</CsoundSynthesizer>	
