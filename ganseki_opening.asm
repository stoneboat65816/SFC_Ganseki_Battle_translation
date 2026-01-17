org $8182D1
	JML dma_title
	
org $818381
	JML write_ishibune
	
org $8182E1
	JML write_title_color
	
org $828271
	JML fade_color
	
org $81CFF8
	JML rewrite_settei
	
org $81D017
	JML write_settei_col
	
org $81D257
	JML settei_shosai
	
org $818E9D
	JML press_color
	
org $80806F
	JSL rewrite_intro
	
org $81B2E2
	JML rewrite_cutscene
	
org $81C3E3
	JML rewrite_ending
	
org $81DD98
	JML rewrite_himitsu
	
org $819147
	JML rewrite_taisen
	
org $81ACBF
	JML rewrite_taisen_make

org $81B239
	LDY #$058C
org $81B244
	LDY #$05B0	//make suuji 
	
org $81D646
	JML rewrite_haji
	
org $81D651
	NOP #3		//write pause