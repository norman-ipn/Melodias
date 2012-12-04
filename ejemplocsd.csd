<CsoundSynthesizer>;
  ; test.csd - a Csound structured data file
  
<CsOptions>
  -W -d -o tone.wav 
</CsOptions>
  
<CsVersion>    ; optional section
  Before 4.10  ; these two statements check for
  After 4.08   ; Csound version 4.09
</CsVersion>
  
<CsInstruments>
  ; originally tone.orc 
  sr = 44100
  kr = 4410
  ksmps = 10
  nchnls = 1
  instr   1 
      a1 oscil p4, p5, 1 ; simple oscillator
         out a1
  endin
</CsInstruments>

<CsScore>
  ; originally tone.sco
  f1 0 8192 10 1
  i1 0 1 20000 1000 ; play one second of one kHz tone
  e
</CsScore>

</CsoundSynthesizer>
