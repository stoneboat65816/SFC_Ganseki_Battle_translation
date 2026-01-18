org $208000
init_7F:
	CLC
	XCE
	SEP #$24
	REP #$10
	PHP
	PHB
	SEP #$20
	LDX #$0000
	LDA #$7F
	PHA
	PLB
	REP #$20
-
	STZ $0000,x
	INX #2
	CPX #$FFFE
	BNE -
	JSL display_near
	PLB
	PLP
	JML $008006
	
dma_title:
	JSL $81D5CD
	REP #$20
	LDA {title}
	AND #$00FF
	ASL
	TAX
	JMP (write_title,x)
	
write_title:
	dw title_jp
	dw title_en1
	dw title_en2
	dw title_vn3
	dw title_vn4
	dw title_vn5
	dw title_vn6
	dw title_vn7
	dw title_vn8
	
title_jp:
	SEP #$20
	JML $8182D5
title_en1:
	JSR dma_titleen1_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE

title_en2:
	JSR dma_titleen2_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE
title_vn3:
	JSR dma_titlevn3_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE
title_vn4:
	JSR dma_titlevn4_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE
title_vn5:
	JSR dma_titlevn5_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE
title_vn6:
	JSR dma_titlevn6_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE
title_vn7:
	JSR dma_titlevn7_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE
title_vn8:
	JSR dma_titlevn8_set
	JSR dma_hiryu_set
	JSR dma_bg2map
	JML $8182DE

dma_titleen1_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo1_set)
	LDA.b #(title_gengo1_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo1_set-title_gengo1_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
	
dma_titleen2_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo2_set)
	LDA.b #(title_gengo2_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo2_set-title_gengo2_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
dma_titlevn3_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo3_set)
	LDA.b #(title_gengo3_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo3_set-title_gengo3_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
dma_titlevn4_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo4_set)
	LDA.b #(title_gengo4_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo4_set-title_gengo4_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
dma_titlevn5_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo5_set)
	LDA.b #(title_gengo5_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo5_set-title_gengo5_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
dma_titlevn6_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo6_set)
	LDA.b #(title_gengo6_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo6_set-title_gengo6_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
dma_titlevn7_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo7_set)
	LDA.b #(title_gengo7_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo7_set-title_gengo7_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
dma_titlevn8_set:
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #(title_gengo8_set)
	LDA.b #(title_gengo8_set>>16)
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #(end_title_gengo8_set-title_gengo8_set)
	STX $75
	LDA #$80
	STA $420B
	RTS
	
dma_hiryu_set:
	LDX #$CF2C
	LDY #$8000
	STX $06DD
	STY $06E0
	LDA #$05
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$6000
	STX $2116
	LDX #$0C00
	STX $75
	LDA #$80
	STA $420B
	RTS
	
dma_bg2map:
	PHB
	LDX #$CE74
	LDY #$8000
	STX $06DD
	STY $06E0
	LDA #$05
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	PEA $7E7E
	PLB #2
	LDX #$8000
	JSL $8185EA
	REP #$20
	LDX #$0800
	LDY #{text_pos}
	LDA #$2A50
	STA $0800
	LDA #$0FFD
	MVN $00,$00
	LDX #$8000
	LDY #$1640
	LDA #$017F
	MVN $7E,$00
	LDY #$0980
	LDA #$067F
	MVN $7E,$00
	LDX #$1648
	JSR _85CC
	LDX #$1672
	JSR _85CC
	SEP #$20
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$4800
	STX $2116
	LDX #$0800
	LDA #$00
	STX $72
	STA $74
	LDX #$1000
	STX $75
	LDA #$80
	STA $420B
	LDX #$CEFF
	LDY #$0800
	STX $06DD
	STY $06E0
	LDA #$05
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	LDX #$0800
	JSL $8185EA
	PLB
	RTS
	
_85CC:
	LDA #$0006
	STA $0000
-
	LDA #$2A50
	STA $0000,x
	STA $0002,x
	STA $0004,x
	TXA 
	CLC
	ADC #$0040
	TAX
	DEC $0000
	BNE -
	RTS
	
write_ishibune:
	JSR write_ishibune_map
	STZ $17F0
	JML $818387
	
write_ishibune_map:
	REP #$20
	LDA #$2A50
	LDX #$1200
	LDY #$0040
-
	STA $0000,x
	INX #2
	DEY
	BNE -
	LDA #$2BC0
	LDX #$1214
	LDY #$000E
-
	STA $0000,x
	CLC
	ADC #$0010
	STA $0040,x
	SEC
	SBC #$000F
	INX #2
	DEY
	BNE -
	LDA #$0100
	LDX #$49E0
	LDY #$1200
	STA $004E
	STX $0050
	STY $0052
	STZ $0054
	LDX #$00CE
	LDY #$0010
	LDA #$7FFF
-
	STA $0000,x
	INX #2
	DEY
	BNE -

	LDY #$0010
	LDA #$2BE0
	LDX #$1290
-
	STA $0000,x
	CLC
	ADC #$0010
	STA $0040,x
	SEC
	SBC #$000F
	INX #2
	DEY
	BNE -

	LDX #$8D9A
	LDY #$00CE
	STX $06FC
	STY $06FE
	SEP #$20
	LDA #$01
	STA $0042
	RTS
	
write_title_color:
	LDX #$8D58
	JSL $008292
	REP #$20
	LDA {title}
	AND #$00FF
	ASL
	TAX
	SEP #$20
	JMP (title_color,x)
	
title_color:
	dw color0
	dw color1
	dw color2
	dw color3
	dw color4
	dw color5
	dw color6
	dw color7
	dw color8

color0:
	JML $8182E8
color1:
	LDX #$0000
-
	LDA title_gengo1_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color2:
	LDX #$0000
-
	LDA title_gengo2_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color3:
	LDX #$0000
-
	LDA title_gengo3_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color4:
	LDX #$0000
-
	LDA title_gengo4_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color5:
	LDX #$0000
-
	LDA title_gengo5_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color6:
	LDX #$0000
-
	LDA title_gengo6_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color7:
	LDX #$0000
-
	LDA title_gengo7_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
color8:
	LDX #$0000
-
	LDA title_gengo8_col,x
	STA $7E00CE,x
	INX
	CPX #$0020
	BNE -
	JML $8182E8
	
fade_color:
	REP #$20
	LDX $06FC
	CPX #$8D9A
	BEQ +
	LDY $06FE
	JML $828279
+
	LDY $06FE
	PHX
	LDA {title}
	AND #$00FF
	ASL
	TAX
	JSR (get_color_info,x)
	PLX
	LDA #$0001
	STA $0000
	LDA #$0010
	STA $0002
_8285:
	LDA [{col_ptr}]
	AND #$001F
	STA $0004
	LDA [{col_ptr}]
	AND #$03E0
	STA $0006
	LDA [{col_ptr}]
	AND #$7C00
	STA $0008
	LDA $0000,y
	AND #$001F
	CMP $0004
	BEQ _82B4
	BCS _82B0
	INC
	BRA _82B1
_82B0:
	DEC
_82B1:
	STZ $0000
_82B4:
	STA $000A
	LDA $0000,y
	AND #$03E0
	CMP $0006
	BEQ _82D1
	BCS _82CA
	CLC
	ADC #$0020
	BRA _82CE
_82CA:
	SEC 
	SBC #$0020
_82CE:
	STZ $0000
_82D1:
	TSB $000A
	LDA $0000,y
	AND #$7C00
	CMP $0008
	BEQ _82EE
	BCS _82E7
	CLC
	ADC #$0400
	BRA _82EB
_82E7:
	SEC
	SBC #$0400
_82EB:
	STZ $0000
_82EE:
	TSB $000A
	LDA $000A
	STA $0000,y
	INC {col_ptr}
	INC {col_ptr}
	INY #2
	DEC $0002
	BEQ _8303
	JMP _8285
_8303:
	SEP #$20
	LSR $0000
	RTL
	
get_color_info:
	dw color_info0
	dw color_info1
	dw color_info2
	dw color_info3
	dw color_info4
	dw color_info5
	dw color_info6
	dw color_info7
	dw color_info8
	
color_info0:
	SEP #$20
	LDA.b #(title_gengo0_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo0_col)
	STA {col_ptr}
	RTS
color_info1:
	SEP #$20
	LDA.b #(title_gengo1_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo1_col)
	STA {col_ptr}
	RTS
color_info2:
	SEP #$20
	LDA.b #(title_gengo2_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo2_col)
	STA {col_ptr}
	RTS
color_info3:
	SEP #$20
	LDA.b #(title_gengo3_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo3_col)
	STA {col_ptr}
	RTS
color_info4:
	SEP #$20
	LDA.b #(title_gengo4_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo4_col)
	STA {col_ptr}
	RTS
color_info5:
	SEP #$20
	LDA.b #(title_gengo5_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo5_col)
	STA {col_ptr}
	RTS
color_info6:
	SEP #$20
	LDA.b #(title_gengo6_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo6_col)
	STA {col_ptr}
	RTS
color_info7:
	SEP #$20
	LDA.b #(title_gengo7_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo7_col)
	STA {col_ptr}
	RTS
color_info8:
	SEP #$20
	LDA.b #(title_gengo8_col>>16)
	STA {col_ptr}+2
	REP #$20
	LDA #(title_gengo8_col)
	STA {col_ptr}
	RTS
	
rewrite_settei:
	LDA #$13
	STA $00212C
	LDA #$82
	STA $002131
	LDA #$00
	XBA
	LDA {gengo}
	ASL
	TAX
	JMP (write_settei,x)
	
write_settei:
	dw settei_jp
	dw settei_en
	dw settei_vn

settei_jp:
	JML $81D004
	
settei_vn:
	JSR init_oam
	PHB
	LDA #$00
	PHA
	PLB
	LDX $00
	PHX
	LDX $02
	PHX
	LDX $04
	PHX
	
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4300
	LDX #$0000
	STX $2116
	LDX #(settei_vn_set)
	STX $00
	LDA.b #(settei_vn_set>>16)
	STA $02
	LDX #(end_settei_vn_set-settei_vn_set)
	STX $03
	JSL write_soku_dma

	LDX #$3000
	STX $2116
	LDX #(settei_vn_map)
	STX $00
	LDA.b #(settei_vn_map>>16)
	STA $02
	LDX #$0800
	STX $03
	JSL write_soku_dma
	
	LDX #$1000
	STX $2116
	LDX #(settei_wall_set)
	STX $00
	LDA.b #(settei_wall_set>>16)
	STA $02
	LDX #(end_settei_wall_set-settei_wall_set)
	STX $03
	JSL write_soku_dma
	
	LDX #$3400
	STX $2116
	LDX #(settei_wall_map)
	STX $00
	LDA.b #(settei_wall_map>>16)
	STA $02
	LDX #$0800
	STX $03
	JSL write_soku_dma
		
	LDA #$16
	STA $212C
	STZ $210C
	LDA #$30
	STA $2109
	REP #$20
	LDX #$0000
-
	LDA settei_vn_map,x
	STA $0800,x
	INX #2
	CPX #$0800
	BNE -
	SEP #$20
	PLX
	STX $04
	PLX
	STX $02
	PLX
	STX $00	
	PLB
	JML $81D00E
	
settei_en:
	JSR init_oam
	PHB
	LDA #$00
	PHA
	PLB
	LDX $00
	PHX
	LDX $02
	PHX
	LDX $04
	PHX
	
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4300
	LDX #$0000
	STX $2116
	LDX #(settei_en_set)
	STX $00
	LDA.b #(settei_en_set>>16)
	STA $02
	LDX #(end_settei_en_set-settei_en_set)
	STX $03
	JSL write_soku_dma

	LDX #$3000
	STX $2116
	LDX #(settei_en_map)
	STX $00
	LDA.b #(settei_en_map>>16)
	STA $02
	LDX #$0800
	STX $03
	JSL write_soku_dma
	
	LDX #$1000
	STX $2116
	LDX #(settei_wall_set)
	STX $00
	LDA.b #(settei_wall_set>>16)
	STA $02
	LDX #(end_settei_wall_set-settei_wall_set)
	STX $03
	JSL write_soku_dma
	
	LDX #$3400
	STX $2116
	LDX #(settei_wall_map)
	STX $00
	LDA.b #(settei_wall_map>>16)
	STA $02
	LDX #$0800
	STX $03
	JSL write_soku_dma
		
	LDA #$16
	STA $212C
	STZ $210C
	LDA #$30
	STA $2109
	REP #$20
	LDX #$0000
-
	LDA settei_en_map,x
	STA $0800,x
	INX #2
	CPX #$0800
	BNE -
	SEP #$20
	PLX
	STX $04
	PLX
	STX $02
	PLX
	STX $00	
	PLB
	JML $81D00E
	
write_soku_dma:
	LDX $00
	STX $4302
	LDA $02
	STA $4304
	LDX $03
	STX $4305
	LDA #$01
	STA $420B
	RTL
write_wait_col:
	PHP
	PHY
	REP #$20
	LDY #$0000
-
	LDA [$00],y
	STA [$03],y
	INY #2
	CPY #$0020
	BNE -
	PLY
	PLP
	RTL	
	
init_oam:
	REP #$20
	LDA #$028E
	TCD
	LDX #$0000
	LDA #$F000
-
	STA $00,x
	STZ $02,x
	INX #4
	CPX #$0200
	BCC -
	LDA #$AAAA
-
	STA $00,x
	INX #2
	CPX #$0220
	BCC -
	SEP #$20
	RTS
	
write_settei_col:
	JSL $008292
	LDX $00
	PHX
	LDX $02
	PHX
	LDX $04
	PHX
	LDA {gengo}
	BEQ +
	LDX #(settei_vn_col)
	STX $00
	LDA.b #(settei_vn_col>>16)
	STA $02
-
	LDX #$008E
	STX $03
	LDA #$7E
	STA $05
	JSL write_wait_col
	PLX
	STX $04
	PLX
	STX $02
	PLX
	STX $00
	JML $81D01B
+
	LDX #(settei_jp_col)
	STX $00
	LDA.b #(settei_jp_col>>16)
	STA $02
	BRA -
	
settei_shosai:
	LDA {gengo}
	BNE +
	PHB
	LDA #$81
	PHA
	PLB
	LDA #$00
	XBA
	JML $81D25D
+	
	PHB
	PHK
	PLB
	REP #$20
	LDA $00
	PHA
	LDA {gengo}
	AND #$00FF
	DEC
	ASL
	TAX 
	JMP (gengo_settei_shosai,x)
gengo_settei_shosai:
	dw gengo_en
	dw gengo_vn
		
gengo_vn:	
	LDA #$0006
	STA $00
	LDA {level}
	AND #$00FF
	ASL
	TAX
	LDA level_sentei_vn,x
	TAY
	LDX #$08F2
-
	LDA $0000,y
	STA $0000,x
	INC
	STA $0040,x
	INX #2
	INY #2
	DEC $00
	BNE -
	LDA {1pspecial}
	JSL $82832D
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $09B2
	INC
	STA $09B2+0x40
	LDA {2pspecial}
	JSL $82832D
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0A32
	INC
	STA $0A32+0x40
	LDA {1phandicap}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0AF2
	INC
	STA $0AF2+0x40
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0AF4
	INC
	STA $0AF4+0x040
	
	LDA {2phandicap}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0B72
	INC
	STA $0B72+0x40
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0B74
	INC
	STA $0B74+0x040
	LDA #$0003
	STA $00
	LDA {biganime}
	AND #$00FF
	ASL
	TAX
	LDA anime_sentei_vn,x
	TAY
	LDX #$0C32
-
	LDA $0000,y
	STA $0000,x
	INC
	STA $0040,x
	INY #2
	INX #2
	DEC $00
	BNE -
	LDA #$0003
	STA $00
	LDA {smallanime}
	AND #$00FF
	ASL
	TAX
	LDA anime_sentei_vn,x
	TAY
	LDX #$0CB2
-
	LDA $0000,y
	STA $0000,x
	INC
	STA $0040,x
	INY #2
	INX #2
	DEC $00
	BNE -
	
	LDA {bgm}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0D72
	INC
	STA $0D72+0x040
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0D74
	INC
	STA $0D74+0x040
	LDA {sfx}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0DF2
	INC
	STA $0DF2+0x040
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$203A
	STA $0DF4
	INC
	STA $0DF4+0x040
	PLA
	STA $00
	SEP #$20
	JML $81D34D
	
gengo_en:
	LDA #$0005
	STA $00
	LDA {level}
	AND #$00FF
	ASL
	TAX
	LDA level_sentei_en,x
	TAY
	LDX #$08F2
-
	LDA $0000,y
	STA $0000,x
	INC
	STA $0040,x
	INX #2
	INY #2
	DEC $00
	BNE -
	LDA {1pspecial}
	JSL $82832D
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $09B2
	INC
	STA $09B2+0x40
	LDA {2pspecial}
	JSL $82832D
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0A32
	INC
	STA $0A32+0x40
	LDA {1phandicap}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0AF2
	INC
	STA $0AF2+0x40
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0AF4
	INC
	STA $0AF4+0x040
	
	LDA {2phandicap}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0B72
	INC
	STA $0B72+0x40
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0B74
	INC
	STA $0B74+0x040
	LDA #$0003
	STA $00
	LDA {biganime}
	AND #$00FF
	ASL
	TAX
	LDA anime_sentei_en,x
	TAY
	LDX #$0C32
-
	LDA $0000,y
	STA $0000,x
	INC
	STA $0040,x
	INY #2
	INX #2
	DEC $00
	BNE -
	LDA #$0003
	STA $00
	LDA {smallanime}
	AND #$00FF
	ASL
	TAX
	LDA anime_sentei_en,x
	TAY
	LDX #$0CB2
-
	LDA $0000,y
	STA $0000,x
	INC
	STA $0040,x
	INY #2
	INX #2
	DEC $00
	BNE -
	
	LDA {bgm}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0D72
	INC
	STA $0D72+0x040
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0D74
	INC
	STA $0D74+0x040
	LDA {sfx}
	JSL $82832D
	LDA $07AE
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0DF2
	INC
	STA $0DF2+0x040
	LDA $07AF
	AND #$00FF
	ASL
	CLC
	ADC #$209A
	STA $0DF4
	INC
	STA $0DF4+0x040
	PLA
	STA $00
	SEP #$20
	JML $81D34D
	
level_sentei_vn:
	dw level_easy_vn
	dw level_normal_vn
	dw level_hard_vn
	dw level_master_vn
anime_sentei_vn:
	dw anime_on_vn
	dw anime_off_vn

level_easy_vn:
	dw $207C, $207E, $20C4, $20C4, $20C4, $20C4
level_normal_vn:
	dw $2070, $2072, $2074, $2076, $2078, $207A
level_hard_vn:
	dw $2080, $2082, $2084, $20C4, $20C4, $20C4
level_master_vn:
	dw $20C6, $20C8, $20CA, $20CC, $20CE, $20D0
	
anime_on_vn:
	dw $20D2, $20D4, $20D6
anime_off_vn:
	dw $20D8, $20DA, $20DC
	
level_sentei_en:
	dw level_easy_en
	dw level_normal_en
	dw level_hard_en
	dw level_master_en
	
level_easy_en:
	dw $2050, $2052, $2054, $2056, $00DE, $00DE
level_normal_en:
	dw $2058, $205A, $205C, $205E, $2060, $00DE
level_hard_en:
	dw $2062, $2064, $2066, $2068, $00DE, $00DE
level_master_en:
	dw $206A, $206C, $206E, $2070, $2072, $2074
	
anime_sentei_en:
	dw anime_on_en
	dw anime_off_en
anime_on_en:
	dw $2074, $2076, $00DE
anime_off_en:
	dw $2078, $207A, $00DE
	
press_color:
	PHD
	LDA #$0000
	PHA
	PLD
	LDA #$0010
	STA $0000
	LDA {title}
	AND #$00FF
	ASL
	TAX
	JSR (get_color_info,x)
	LDX #$0000
	TXY
-
	LDA [{col_ptr}],y
	STA $00CE,x
	INX #2
	INY #2
	DEC $00
	BNE -
	PLD
	JML $818EB3
	
rewrite_intro:
	PHB
	LDA #$80
	STA $2100
	LDA #$00
	XBA
	LDA {gengo}
	BNE +
	JML $81D835
+
	ASL
	TAX
	JSR (ppu_setting,x)
	JSL $00826A
	JSR write_font_ptr
	JSR dma_intro_bg2set
	JSR dma_intro_bg2map
	JSR init_bg3_vram
	LDX #$A539
	JSL $008292	//write color buffer
	JSR transfer_color	//hdma
	JSR write_text_color
	STZ {cutscene_trigger}
	LDA #$07
	STA $004D
	LDA #$F6
	JSL $8283B8	//sfx
	LDA #$0D
	JSL $828364 //bgm
	PHD
	REP #$20
	LDA #$0000
	PHA
	PLD
	STZ {shift}
	STZ {line}
	STZ {map_pos}
	STZ {map_counter}
	STZ {line_kage}
	SEP #$20
	LDX #$2000
	STX {starting_vram}
	PLD
	LDA #$00
	STA $2100
	STZ $0FF0
	STZ $0FF1
	STZ $0809
	STZ $080A
	STZ $080B
	STZ $0820
	STZ $0821
	STZ $0822
	STZ $0823
	STZ $06DC
loop_intro:
	STZ $0041
-
	LDA $0041
	BEQ -
	JSR dma_text_tileset
	JSR dma_text_tilemap
	JSR kumoyuki
	JSR ankoku
	LDA #$00
	XBA
	LDA $06DC
	ASL
	TAX
	JMP (intro_jump,x)
intro_jump:
	dw intro0
	dw intro1
	dw intro2
	dw intro3
intro0:
	DEC $0FF0
	BPL +
	LDA #$03
	STA $0FF0
	LDA $0FF1
	INC
	CMP #$10
	BEQ _81D8C3
	STA $0FF1
	STA $002100
	JMP loop_intro
_81D8C3:
	JSR write_text_pos
	INC $06DC
+
	JMP loop_intro
intro1:
	JSL $82849D
	JSR text_shori
	BCS _81D8F4
	LDA $0022
	ORA $002E
	AND #$80
	BEQ _81D8E6
	LDA #$00
	BRA _81D8F6
_81D8E6:
	LDA $0023
	ORA $002F
	AND #$10		//start
	BEQ _81D907
	LDA #$00
	BRA _81D8F6
_81D8F4:
	LDA #$80
_81D8F6:
	STA $0FF0
	LDA #$0F
	STA $0FF1
	LDA #$F5
	JSL $8283B8	//sfx
	INC $06DC
_81D907:
	JMP loop_intro
	
intro2:
	JSR text_shori
	DEC $0FF0
	BPL +
	LDA #$02
	STA $0FF0
	LDA $0FF1
	DEC
	BMI _81D926
	STA $0FF1
	STA $002100
	BRA +
_81D926:
	LDA #$F6
	JSL $8283B8  //sfx
	LDA #$80
	STA $002100
	STZ $004D
	INC $06DC
+
	JMP loop_intro
	
intro3:
	STZ $0041
	LDA #$01
	STA $07B8
	PLB
	RTL
	
	
ppu_setting:
	dw ppu_jp
	dw ppu_en
	dw ppu_vn
	
ppu_jp:
	LDX #$A4CA
	JSL $008231
	RTS
ppu_en:
ppu_vn:
	LDX #(ppu_para)
	JSL write_ppu
	RTS
	
ppu_para:
	db $21
	dw  $001E
	db $01, $03, $05, $09, $06, $00, $07, $30
	db $08, $34, $09, $0C, $0B, $00, $0C, $02, $0D, $00
	db $0D, $00, $0E, $00, $0E, $00, $0F, $00, $0F, $00
	db $10, $00, $10, $00, $11, $00, $11, $00, $12, $00
	db $12, $00, $23, $00, $24, $00, $25, $00, $2C, $06
	db $2D, $01, $2E, $00, $2F, $00, $30, $02, $31, $02
	db $32, $E0
	
ppu_setting_cutscene:
	dw ppu_cutscene_jp
	dw ppu_cutscene_en
	dw ppu_cutscene_vn
	
ppu_cutscene_jp:
	LDX #$9D1C
	JSL $008231
	RTS
	
ppu_cutscene_en:
ppu_cutscene_vn:
	LDX #(ppu_para_cutscene)
	JSL write_ppu
	RTS

ppu_para_cutscene:
	db $21
	dw  $001E
	db $01, $03, $05, $09, $06, $00, $07, $30
	db $08, $34, $09, $40, $0B, $00, $0C, $02, $0D, $00
	db $0D, $00, $0E, $00, $0E, $00, $0F, $00, $0F, $00
	db $10, $00, $10, $00, $11, $00, $11, $00, $12, $00
	db $12, $00, $23, $00, $24, $00, $25, $00, $2C, $06
	db $2D, $00, $2E, $00, $2F, $00, $30, $00, $31, $00
	db $32, $E0
	
write_ppu:
	PHD
	PHY
	PHB
	PHK
	PLB
	PEA $0000
	PLD
	LDA $0000,x
	STA $01
	INX
	LDY $0000,x
	INX #2
-
	LDA $0000,x
	STA $00
	INX
	LDA $0000,x
	STA ($00)
	INX
	DEY
	BNE -
	PLB
	PLY
	PLD
	RTL
	
dma_intro_bg2set:
	PHB
	PEA $0000
	PLB #2
	LDX #$EFBA
	LDA #$1E
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$89A9
	LDA #$05
	STX $06DD
	STA $06DF
	LDX #$C000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70	
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #$6000
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS
	
dma_intro_bg2map:
	PHB
	PEA $0000
	PLB #2
	LDX #$DE57
	LDA #$0D
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$DF67
	LDA #$0D
	STX $06DD
	STA $06DF
	LDX #$8800
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	REP #$20
	LDX #$8800
	LDY #$1000
	LDA #$07FF
	MVN $7E,$00
	SEP #$20
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$3000
	STX $2116
	LDX #$1000
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS
	
transfer_color:
	PHB
	REP #$20
	LDX #$9D5B
	LDY #$0810
	LDA #$0009
	MVN $00,$00
	LDX #$A61B
	LDY #$0830
	LDA #$000F
	MVN $00,$00
	LDX #$A62B
	LDY #$0840
	LDA #$000C
	MVN $00,$00
	SEP #$20
	PHD
	PEA $4300
	PLD
	LDX #$1202		//bg3 scroll
	STX $00
	LDX #$0810
	STX $02
	STZ $04
	STZ $07
	LDX #$0F02
	STX $10
	LDX #$0830
	STX $12
	STZ $14
	STZ $17
	LDX #$0D42
	STX $20
	LDX #$0840
	STX $22
	STZ $24
	STZ $27
	PLD
	PLB
	RTS
	
dma_text_tileset:
	PHB
	PEA $8080
	PLB #2
	LDA {dma_trigger}
	BEQ +
	LDA #$80
	STA $2115
	LDX #$1801
	STX $4370
	LDX {dma_vram}
	STX $2116
	LDX {dma_adr}
	STX $4372
	LDX {dma_size}
	STX $4375
	LDA {dma_bank}
	STA $4374
	LDA #$80
	STA $420B
	STZ {dma_trigger}
+	
	PLB
	RTS
	
dma_text_tilemap:
	PHB
	PEA $0000
	PLB #2
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$1500
	STX $72
	STZ $74
	LDX #$0EA0
	STX $2116
	LDX #$0180
	STX $75
	LDA #$80
	STA $420B
	PEA $0000
	PLD
	PLB
	RTS
dma_himitsu_tilemap:
	PHB
	PEA $0000
	PLB #2
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$1500
	STX $72
	STZ $74
	LDX #$1AA1
	STX $2116
	LDX #$0180
	STX $75
	LDA #$80
	STA $420B
	PEA $0000
	PLD
	PLB
	RTS
	
kumoyuki:
	DEC $0809
	BPL +
	LDA #$01
	STA $0809
	DEC $0834
+
	DEC $080A
	BPL +
	LDA #$03
	STA $080A
	DEC $0837
+
	DEC $080B
	BPL +
	LDA #$05
	STA $080B
	DEC $083A
+
	RTS
	
ankoku:
	LDA #$00
	XBA
	LDA $0820
	ASL
	TAX
	JMP (ankoku_jump,x)
ankoku_jump:
	dw ankoku0
	dw ankoku1
	dw ankoku2
	dw ankoku3
ankoku0:
	JSR _81DD39
	RTS	
ankoku1:
	JSR _81DD39
	DEC $0821
	BPL +
	LDA #$02
	STA $0821
	LDX #$A5DB
	LDY #$00AE
	STX $06FC
	STY $06FE
	JSL $828271
	BCC _81DCE7
	LDA #$01
	TSB $0822
_81DCE7:
	LDX #$A5FB
	LDY #$00CE
	STX $06FC
	STY $06FE
	JSL $828271
	BCC _81DCFE
	LDA #$02
	TSB $0822
_81DCFE:
	LDA $0822
	CMP #$03
	BNE +
	LDX #$A5BB
	LDY #$00EE
	STX $06FC
	STY $06FE
	LDA #$20
	STA $0821
	INC $0820
+
	RTS
	
ankoku2:
	JSR _81DD39
	DEC $0821
	BPL +
	LDA #$04
	STA $0821
	JSL $828271
	BCC +
	INC $0820
+
	RTS
	
ankoku3:
	JSR _81DD39
	RTS
	
_81DD39:
	DEC $0823
	BPL +
	LDA #$01
	STA $0823
	REP #$20
	LDA $0844
	DEC #2
	CMP #$A638
	BCS _81DD52
	LDA #$A67E
_81DD52:
	STA $0844
	STA $0847
	SEP #$20
+
	RTS
	
write_text_pos:
	LDX #$0000
	STX {map_pos}
	LDX #$2000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	LDA {gengo}
	BNE +
	LDX #$DA63
	STX {text_pos}
	RTS
+
	CMP #$01
	BNE +
	LDX #(opening_text_en) 
	STX {text_pos}
	RTS
+	
	LDX #(opening_text_vn) 
	STX {text_pos}
	RTS
	
text_shori:
	LDA #$00
	XBA
	LDA $0800
	ASL
	TAX
	JMP (text_mode,x)
text_mode:
	dw text_mode0
	dw text_mode1
	dw text_mode2
	dw text_mode3
text_mode0:
	DEC $0801	//timer
	BMI +
	JSR write_font_ptr
	JMP end_text_mode
+
	LDA #$05
	STA $0801
	LDX {text_pos}	//text pos
	LDY {map_pos}	//map pos
	PHB
	LDA.b #(opening_text_vn)>>16
	PHA
	PLB
	REP #$20
-
	LDA $0000,x	//read text
	INX
	AND #$00FF
	CMP #$00FF
	BNE +
	PLB
	SEP #$20
	SEC
	JMP end_text
+
	CMP #$00FC	//scroll
	BNE +
	STX {text_pos}
	STZ $0817
	SEP #$20
	LDA #$03
	STA $0800
	JMP _81B6C8
+
	CMP #$00FD	//ankoku
	BNE +
	SEP #$20
	LDA #$01
	STA $0820	//hdma
	REP #$20
	BRA -
+
	CMP #$00FE  //line
	BNE +
	STZ {map_pos}
	STX {text_pos}
	STZ {shift}
	LDA {line_kage}
	ASL
	TAX
	JMP (line_branch,x)

_81B685:
	SEP #$20
	LDA #$05
	STA $0801
	BRA _81B6C8
+
	STA {save_a}
	JSR write_set_buffer
	SEP #$20
	LDA #$7E
	PHA
	PLB
	REP #$20
	LDA {line}
	ASL #7
	CLC
	ADC {map_pos}
	TAY
	LDA {map_counter}
	PHA
	LDA {tile_jun}	
	ORA #$2C00
-
	STA $1502,y
	INC
	STA $1542,y
	INY #2
	INC
	DEC {map_counter}
	BPL -
	PLA
	STA {map_counter}
	STX {text_pos}
	LDA $0808
	AND #$00FF
	BEQ +
	JMP -
+
	SEP #$20
_81B6C8:
	PLB
end_text_mode:
	CLC
end_text:
	RTS
	
text_mode1:
	LDX $0817
	INX
	STX $0817
	CPX #$0010
	BCC +
	PHB
	REP #$20
	LDX #$1580
	LDY #$1500
	LDA #$017F
	MVN $00,$00
	SEP #$20
	PLB
	LDA #$01
	STA $0806
	LDA #$02
	STA $0800
+
	CLC
	RTS	

text_mode2:
	LDX #$0000
	STX $0817
	STZ $0800
	CLC
	RTS
	
text_mode3:
	LDX $0817
	INX
	STX $0817
	CPX #$0030
	BCS +
	CLC
	RTS
+
	LDA {cutscene_trigger}
	BNE +
	REP #$20
	LDX #$0000
-
	STZ $1500,x
	INX #2
	CPX #$0180
	BNE -	
	STZ {line}
	STZ {line_kage}
	STZ {shift}
	STZ {map_counter}
	STZ {map_pos}
	STZ {tile_jun}
	SEP #$20
	LDA #$01
	STA $0806
	LDA #$02
	STA $0800
	CLC
	RTS
+
	REP #$20
	LDX #$0000
	LDA #$00FF
-
	STA $1500,x
	INX #2
	CPX #$0180
	BNE -
	STZ {line}
	STZ {line_kage}
	STZ {shift}
	STZ {map_counter}
	STZ {map_pos}
	STZ {tile_jun}
	SEP #$20
	LDA #$01
	STA $0806
	LDA #$02
	STA $0800
	CLC
	RTS	
	
write_set_buffer:
	PHY
	PHX
	PHP
	LDA {shift}
	BEQ init_tile
	CMP #$0008
	BCC draw_new_tile
	TAX
	AND #$0007
	STA {shift}
	TXA
	LSR #3
	TAY
	TXA
	AND #$00F8
	ASL #2
	TAX
	DEX #2
copy_right_tile:	
	PHY
	LDY #$0010
-	
	LDA {set_buffer}+0x20,x
	STA {set_buffer},x
	DEX #2
	DEY
	BNE -
	JSR update_tile_jun
	JSR update_map_pos
	PLY
	DEY
	BNE copy_right_tile
	LDX #$0000
	LDY #$0010
-	
	STZ {set_buffer}+0x20,x
	STZ {set_buffer}+0x40,x
	STZ {set_buffer}+0x60,x
	STZ {set_buffer}+0x80,x
	STZ {set_buffer}+0xA0,x
	INX #2
	DEY
	BNE -
	BRA draw_new_tile	
init_tile:
	LDX #$0000
	LDY #$0010
-
	STZ {set_buffer},x
	STZ {set_buffer}+0x20,x
	STZ {set_buffer}+0x40,x
	STZ {set_buffer}+0x60,x
	STZ {set_buffer}+0x80,x
	STZ {set_buffer}+0xA0,x
	INX
	INX
	DEY
	BNE -
draw_new_tile:
	LDA {save_a}
	ASL #6
	CLC
	ADC {font_ptr}
	STA {font_ptr}
	LDA {shift}
	AND #$00F8
	ASL #2
	STA {save_x}
	TAX
	LDY #$0000
-
	LDA [{font_ptr}],y
	BEQ +
	JSR shift_pixel
	LDA {set_buffer},x
	ORA {left_byte}
	STA {set_buffer},x
	LDA {set_buffer}+0x20,x
	ORA {right_byte}
	STA {set_buffer}+0x20,x
+
	INX #2
	INY #2
	CPY #$0010
	BNE -
	LDX {save_x}
-
	LDA [{font_ptr}],y
	BEQ +
	JSR shift_pixel
	LDA {set_buffer}+0x10,x
	ORA {left_byte}
	STA {set_buffer}+0x10,x
	LDA {set_buffer}+0x30,x
	ORA {right_byte}
	STA {set_buffer}+0x30,x
+
	INX #2
	INY #2
	CPY #$0020
	BNE -	
	LDX {save_x}
-
	LDA [{font_ptr}],y
	JSR shift_pixel
	LDA {set_buffer}+0x20,x
	ORA {left_byte}
	STA {set_buffer}+0x20,x
	LDA {set_buffer}+0x40,x
	ORA {right_byte}
	STA {set_buffer}+0x40,x
	INX #2
	INY #2
	CPY #$0030
	BNE -	
	LDX {save_x}
-
	LDA [{font_ptr}],y
	JSR shift_pixel
	LDA {set_buffer}+0x30,x
	ORA {left_byte}
	STA {set_buffer}+0x30,x
	LDA $7E0350,x
	ORA {right_byte}
	STA $7E0350,x
	INX
	INX
	INY
	INY
	CPY #$0040
	BNE -	
	LDY {save_a}
	LDA [{width_ptr}],y
	AND #$00FF
	CLC
	ADC {shift}
	STA {shift}
	DEC
	AND #$00F8
	ASL #2
	CLC
	ADC #$0020
	STA {dma_size}
	LDA {tile_jun}
	ASL #3
	CLC
	ADC {starting_vram}
	STA {dma_vram}
	LDA {shift}
	DEC
	LSR #3
	STA {map_counter}
	SEP #$20
	LDA #$FF
	STA {dma_trigger}
	LDX #$0500
	STX {dma_adr}
	LDA #$7E
	STA {dma_bank}
	PLP
	PLX
	PLY
	RTS	

shift_pixel:
	PHX
	PHA
	XBA
	AND #$FF00
	STA {buffer1}
	PLA
	AND #$FF00
	STA {buffer2}
	LDA {shift}
	AND #$0007
	TAX
	BEQ +
-
	LSR {buffer1}
	LSR {buffer2}
	DEX
	BNE -
+
	LDA {buffer1}
	XBA
	AND #$00FF
	STA {left_byte}
	LDA {buffer2}
	AND #$FF00
	ORA {left_byte}
	STA {left_byte}
	LDA {buffer1}
	AND #$00FF
	STA {right_byte}
	LDA {buffer2}
	XBA
	AND #$FF00
	ORA {right_byte}
	STA {right_byte}
	PLX
	RTS
	
init_bg3_vram:
	LDA #$80
	STA $2115
	LDX #$1801
	STX $00
	LDX #(blank)
	STX $02
	LDX #$2000
	STX $05
	LDA.b #(blank)>>16
	STA $04
	LDX #$0C00
	STX $2116
	LDA #$01
	STA $420B	
	LDX #$0800
	STX $05
	LDX #$2000
	STX $2116
	LDA #$01
	STA $420B	
	RTS
	
init_bg3_vram_cutscene:
	REP #$20
	LDX #$0000
	LDA #$00FF
-
	STA $7E8000,x
	INX #2
	CPX #$0800
	BNE -
	LDX #$0000
-
	STA $7E1500,x
	INX #2
	CPX #$0300
	BNE -
	SEP #$20
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	STX $72
	LDX #$0800
	STX $75
	LDA #$7E
	STA $74
	LDX #$4000
	STX $2116
	LDA #$80
	STA $420B
	
	LDX #(blank)
	STX $72
	LDA.b #(blank>>16)
	STA $74
	LDX #$2000
	STX $75
	LDX #$2000
	STX $2116
	LDA #$80
	STA $420B
	RTS
	
update_tile_jun:
	LDA {tile_jun}
	INC #2
	STA {tile_jun}
	RTS
	
write_text_color:
	LDA {gengo}
	CMP #$01
	BNE +
	PHP
	REP #$30
	LDX #$0000
	LDY #$0004
-
	LDA text_color_en,x
	STA $7E00A6,x
	INX #2
	DEY
	BNE -
	PLP
	RTS
+
	PHP
	REP #$30
	LDX #$0000
	LDY #$0004
-
	LDA text_color_vn,x
	STA $7E00A6,x
	INX #2
	DEY
	BNE -
	PLP
	RTS
	
text_color_en:
	dw $0000, $00A, $03FF, $FFFF	
text_color_vn:
	dw $0000, $50E5, $7FB7, $FFFF
	
update_map_pos:
	LDA {map_pos}
	INC #2
	STA {map_pos}
	RTS
	
increment_tile_jun:
	INC {tile_jun}
	INC {tile_jun}
	LDA {map_counter}
	BEQ +
	INC {tile_jun}
	INC {tile_jun}
+
	RTS
	
line_branch:
	dw line0
	dw line1
	dw line2
	dw line3
	dw line4
	dw line5
	dw line6
	dw line7

line0:
	LDA #$0001
	STA {line}
	STA {line_kage}
-
	JSR increment_tile_jun
	JMP _81B685
line1:
	LDA #$0002
	STA {line}
	STA {line_kage}
	BRA -
line2:
	LDA #$0002
	STA {line}
	JSR increment_tile_jun
	INC {line_kage}
-
	SEP #$20
	LDX #$0000
	STX $0817
	STZ $0808
	LDA #$01
	STA $0800
	JMP _81B6C8

line3:
	LDA #$0002
	STA {line}
	INC {line_kage}
	STZ {tile_jun}
	BRA -

line4:
line5:
line6:
	LDA #$00002
	STA {line}
	INC {line_kage}
	JSR increment_tile_jun
	BRA -	

line7:
	LDA #$00002
	STA {line}
	LDA #$0004
	STA {line_kage}
	STZ {tile_jun}
	BRA -
	
write_font_ptr:
	PHD
	REP #$20
	LDA #$0000
	PHA
	PLD
	SEP #$20
	LDA {gengo}
	CMP #$01
	BNE +
	LDA.b #(font0)>>16
	STA.b {font_ptr}+2
	LDX #(font0)
	STX {font_ptr}
	LDA.b #(width0)>>16
	STA.b {width_ptr}+2
	LDX #(width0)
	STX {width_ptr}
	PLD
	RTS	
+
	LDA.b #(font1)>>16
	STA.b {font_ptr}+2
	LDX #(font1)
	STX {font_ptr}
	LDA.b #(width1)>>16
	STA.b {width_ptr}+2
	LDX #(width1)
	STX {width_ptr}
	PLD
	RTS
	
rewrite_cutscene:
	PHB
	LDA #$80
	STA $2100
	LDA #$F6
	JSL $8283B8	//sfx
	LDA #$00
	XBA
	LDA {gengo}
	BNE +
	JML $81B2EE
+
	ASL
	TAX
	JSR (ppu_setting_cutscene,x)
	JSL $00826A		//init oam
	JSR write_font_ptr
	JSR dma_bg12set
	JSR dma_bg1map
	JSR write_cutscene_color
	JSR write_text_color
	JSR dma_cutscene_bg2map
	JSR write_cutscene_hdmatbl
	JSR init_bg3_vram_cutscene
	LDA #$FF
	STA {cutscene_trigger}
	LDA $06DA	//stage
	CMP #$08
	BEQ +
	LDA #$0A
	BRA _B315
+
	LDA #$0C
_B315:
	JSL $828364		//bgm
	LDA #$00
	STA $2100
	STZ $0FF0
	STZ $0FF1
	STZ $0820
	STZ $0821
	STZ $0822
	LDA #$01
	STA $0823
	LDX #$6000
	STX $0824
	LDA #$02
	STA $004D
	STZ $06DC
	LDX #$0000
	STX {shift}
	STX {map_counter}
	STX {map_pos}
	STX {line}
	STX {line_kage}
	STX {tile_jun}
	LDX #$2000
	STX {starting_vram}
loop_cutscene:
	STZ $0041
-
	LDA $0041
	BEQ -
	JSR finalstage_scroll
	JSR dma_text_tileset
	JSR dmacutscenetxt_map
	LDA #$00
	XBA
	LDA $06DC
	ASL
	TAX
	JMP (cutscene_branch,x)
cutscene_branch:
	dw cutscene0
	dw cutscene1
	dw cutscene2
	dw cutscene3
	
dma_bg12set:
	PHB
	PEA $0000
	PLB #2
	LDX #$8000
	LDA #$1E
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDA #$00
	XBA
	LDA $06DA
	DEC #2
	STA $0000
	ASL
	CLC
	ADC $0000
	TAY
	LDX $9D6C,y
	LDA $9D6E,y
	STX $06DD
	STA $06DF
	LDX #$8800
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDA #$00
	XBA
	LDA $06DA
	DEC #2
	STA $0000
	ASL
	CLC
	ADC $0000
	TAY
	LDX $9D81,y
	LDA $9D83,y
	STX $06DD
	STA $06DF
	LDX #$A400
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$89A9
	LDA #$05
	STX $06DD
	STA $06DF
	LDX #$C000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #$6000
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS
	
dma_bg1map:
	PHB
	REP #$20
	LDX #$8000
	LDY #$8001
	LDA #$0000
	STA $7E8000
	LDA #$07FF
	MVN $7E,$7E
	SEP #$20
	PEA $0000
	PLB #2
	LDA #$00
	XBA 
	LDA $06DA
	DEC #2
	STA $0000
	ASL
	CLC
	ADC $0000
	TAY
	LDX $9D96,y
	CPX #$FFFF
	BEQ +
	LDA $9D98,y
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
+
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$3000
	STX $2116
	LDX #$1000
	STX $75
	LDA #$80
	STA $420B
	LDX #$8505
	LDA #$1E
	STX $06DD
	STA $06DF
	LDX #$1000
	STX $06E0
	STZ $06E2
	JSL $8281F6
	PLB
	RTS
	
write_cutscene_color:
	PHB
	PEA $0000
	PLB #2
	REP #$20
	LDX #$9DAB
	LDY #$008E
	LDA #$001F
	MVN $00,$00
	LDA $06DA
	DEC #2
	AND #$00FF
	XBA
	LSR #2
	CLC
	ADC #$9DCB
	TAX
	LDY #$00AE
	LDA #$003F
	MVN $00,$00
	SEP #$20
	PLB
	RTS
	
dma_cutscene_bg2map:
	PHB
	PEA $0000
	PLB #2
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$1000
	STX $72
	STZ $74
	LDX #$3400
	STX $2116
	LDX #$0800
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS
	
write_cutscene_hdmatbl:
	PHB
	REP #$20
	LDX #$9D5B
	LDY #$0810
	LDA #$0009
	MVN $00,$00
	SEP #$20
	PHD
	PEA $4300
	PLD
	LDX #$1202	//bg3 scroll
	STX $00
	LDX #$0810
	STX $02
	STZ $04
	STZ $07
	LDX #$2C00
	STX $10
	LDA {gengo}
	BNE +
	LDX #$9D65
	STX $12
	STZ $14
	STZ $17
	PLD
	PLB
	RTS
+
	LDX #(hdma_table0)
	STX $12
	LDA.b #(hdma_table0>>16)
	STA $14
	STZ $17
	PLD
	PLB
	RTS
	
finalstage_scroll:
	LDA $06DA
	CMP #$08
	BNE +
	LDA $0825
	STA $00210E
	LDA #$00
	STA $00210E
+
	RTS
	
dmacutscenetxt_map:
	PHB
	PEA $0000
	PLB #2
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$1500
	STX $72
	STZ $74
	LDX #$42A1
	STX $2116
	LDX #$0180
	STX $75
	LDA #$80
	STA $420B
	PEA $0000
	PLD
	PLB
	RTS
	
cutscene0:
	JSR stage8_effect
	DEC $0FF0
	BPL +
	LDA #$01
	STA $0FF0
	LDA $0FF1
	INC
	CMP #$10
	BEQ _B37F
	STA $0FF1
	STA $002100
	BRA +
_B37F:
	JSR write_cutscene_txtpos
	LDA #$03
	STA $004D
	INC $06DC
+
	JMP loop_cutscene

cutscene1:
	JSL $82849D
	JSR stage8_effect
	JSR text_shori
	BCS _B3B4
	JSL $8283A5
	LDA $0023
	AND #$10
	BEQ +
	LDA #$00
	BRA _B3B6
_B3B4:
	LDA #$80
_B3B6:
	STA $0FF0
	LDA #$0F
	STA $0FF1
	LDA #$F5
	JSL $8283B8
	INC $06DC
+
	JMP loop_cutscene
	
cutscene2:
	JSR text_shori
	JSR stage8_effect
	JSL $8283A5
	DEC $0FF0
	BPL +
	LDA #$02
	STA $0FF0
	LDA $0FF1
	DEC
	BMI _B3ED
	STA $0FF1
	STA $002100
	BRA +
_B3ED:
	LDA #$F6
	JSL $8283B8
	LDA #$80
	STA $002100
	STZ $004D
	INC $06DC
+
	JMP loop_cutscene	

cutscene3:
	STZ $0041
	PLB 
	RTL	

stage8_effect:
	LDA $06DA	//stage
	CMP #$08
	BEQ +
	RTS
+
	DEC $0821
	BPL +
	LDA #$04
	STA $0821
	REP #$20
	LDX #$0000
-
	LDA $00AE,x
	STA $0000
	LDA $00CE,x
	STA $00AE,x
	LDA $0000
	STA $00CE,x
	INX #2
	CPX #$0020
	BCC -
	SEP #$20
+
	LDA $0820
	BEQ +
	DEC $0822
	BPL _C159
	LDA #$02
	STA $0822
	REP #$20
	LDA $00CA
	JSR _C177
	STA $00CA
	LDA $00EA
	JSR _C177
	STA $00EA
	SEP #$20
_C159:
	DEC $0823
	BNE +
	LDA #$47
	JSL $828444
+
	LDA $0825
	BEQ +
	DEC $0824
	BPL +
	LDA #$02
	STA $0824
	DEC $0825
+
	RTS
	

	
_C177:
	STA $0000
	AND #$7C00
	CMP #$7C00
	BEQ +
	CLC
	ADC #$0400
+
	STA $0002
	LDA $0000
	AND #$03E0
	CMP #$03E0
	BEQ +
	CLC
	ADC #$0020
+
	ORA $0002
	STA $0002
	LDA $0000
	AND #$7C00
	ORA $0002
	RTS
	
write_cutscene_txtpos:
	LDA #$00
	XBA
	LDA $06DA
	DEC #2
	ASL
	TAY
	PHB
	PHK
	PLB
	LDA {gengo}
	BNE +
	LDX $B706,y
	STX {text_pos}
	LDX #$0506
	STX {map_pos}
	LDX #$0000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	PLB
	RTS
+
	DEC
	XBA
	LDA #$00
	XBA
	ASL
	TAX
	JMP (stage_text,x)

stage_text:
	dw stage_text_en
	dw stage_text_vn

stage_text_en:
	LDX stage_txt_ptr_en,y
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$0000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	PLB
	RTS
	
stage_text_vn:
	LDX stage_txt_ptr_vn,y
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$0000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	PLB
	RTS
	
stage_txt_ptr_vn:
	dw stage2_text_vn
	dw stage3_text_vn
	dw stage4_text_vn
	dw stage5_text_vn
	dw stage6_text_vn
	dw stage7_text_vn
	dw stage8_text_vn

stage_txt_ptr_en:
	dw stage2_text_en
	dw stage3_text_en
	dw stage4_text_en
	dw stage5_text_en
	dw stage6_text_en
	dw stage7_text_en
	dw stage8_text_en
	
rewrite_ending:
	LDA $078A
	BNE +
	RTL
+
	LDA {gengo}
	BNE +
	JML $81C3EB
+
	PHB 
	LDA #$80
	STA $2100
	LDA #$00
	XBA
	LDA {gengo}
	ASL
	TAX
	JSR (write_ending_ppu,x)
	JSR write_font_ptr
	JSL $00826A  //init oam
	JSR dma_dragon_set
	JSR dma_ending_bg2set
	JSR dma_ending_bg12map
	LDX #$A71A
	JSL $008292	//write ending color
	JSR init_ending_bg3
	LDA #$F6
	JSL $8283B8		//sfx
	LDA #$09
	JSL $828364	//bgm
	JSR ending_hdma
	LDX #$0000
	STX {shift}
	STX {map_counter}
	STX {map_pos}
	STX {line}
	STX {line_kage}
	STX {tile_jun}
	JSR init_ending_bg3map
	JSR write_text_color
	LDA #$00
	STA $2100
	STZ $0FF0
	STZ $0FF1
	STZ $0820
	STZ $0821
	STZ $0822
	LDX #$0100
	STX $0809
	LDA #$03
	STA $004D
	STZ $06DC
	LDA #$FF
	STA {cutscene_trigger}
	LDX #$0000
	STX {shift}
	STX {map_counter}
	STX {map_pos}
	STX {line}
	STX {line_kage}
	STX {tile_jun}
	LDX #$2000
	STX {starting_vram}
loop_ending:
	STZ $0041
-
	LDA $0041
	BEQ -
	JSR ending_bg1_scroll
	JSR dma_text_tileset
	JSR ending_bg3map
	JSL $82849D
	LDA #$00
	XBA
	LDA $06DC
	ASL
	TAX
	JMP (ending_branch,x)
	
write_ending_ppu:
	dw ending_ppu_jp
	dw ending_ppu_en
	dw ending_ppu_vn
ending_ppu_jp:
	LDX #$A6C8
	JSL $008231	//ppu
	RTS
ending_ppu_en:
ending_ppu_vn:
	LDX #(ending_ppu_table)
	JSL write_ppu
	RTS
	
ending_ppu_table:
	db $21
	db $24, $00, $01, $03, $05, $09, $06, $00
	db $07, $31, $08, $38, $09, $2C, $0B, $00
	db $0C, $02, $0D, $00, $0D, $00, $0E, $00
	db $0E, $00, $0F, $00, $0F, $00, $10, $00
	db $10, $00, $11, $00, $11, $00, $12, $00
	db $12, $00, $23, $03, $24, $00, $25, $03
	db $26, $38, $27, $C6, $28, $00, $29, $00
	db $2A, $00, $2B, $00, $2C, $17, $2D, $00
	db $2E, $11, $2F, $00, $30, $00, $31, $00
	db $32, $E0
	
init_ending_bg3:
	PHB
	PHD
	PEA $4300
	PLD
	LDA #$80
	PHA
	PLB
	LDX #$1801
	STX $70
	LDX #(blank)
	STX $72
	LDX #$2000
	STX $75
	LDA.b #(blank>>16)
	STA $74
	LDX #$2000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	PLD
	PLB
	RTS
	
ending_branch:
	dw ending0
	dw ending1
	dw ending2
	dw ending3
	dw ending4
	
ending0:
	DEC $0FF0
	BMI +
	JMP loop_ending
+
	LDA #$03
	STA $0FF0
	LDA $0FF1
	INC
	CMP #$10
	BEQ +
	STA $0FF1
	STA $002100
	JMP loop_ending
+
	LDA #$01
	STA $0821
	INC $06DC
	JMP loop_ending
	
ending1:
	JSR check_bg1pos
	BCC +
	STZ $0821
	INC $06DC
+
	JMP loop_ending
	
ending2:
	JSR _C7E0
	BCC +
	STZ $0FF0
	LDA #$0F
	STA $0FF1
	INC $06DC
	JMP loop_ending

ending3:
	DEC $0FF0
	BNE +
	LDA #$02
	STA $0FF0
	LDA $0FF1
	DEC
	BMI _C4C4
	STA $0FF1
	STA $002100
	BRA +
_C4C4:
	STZ $004D
	INC $06DC
+
	JMP loop_ending

ending4:
	PLB
	RTL
	
dma_dragon_set:
	PHB
	PEA $0000
	PLB #2
	LDX #$B51F
	LDA #$07
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$6000
	STX $2116
	LDX #$3A00
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS
	
dma_ending_bg2set:
	PHB
	PEA $0000
	PLB #2
	LDX #$8000
	LDA #$1E
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$E12B
	LDA #$0D
	STX $06DD
	STA $06DF
	LDX #$8800
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$89A9
	LDA #$05
	STX $06DD
	STA $06DF
	LDX #$C000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #$6000
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS

dma_ending_bg12map:
	PHB
	REP #$20
	LDX #$8000
	LDY #$8001
	LDA #$0000
	STA $7E8000
	LDA #$0FFF
	MVN $7E,$7E
	SEP #$20
	PEA $0000
	PLB #2
	LDX #$8505
	LDA #$1E
	STX $06DD
	STA $06DF
	LDX #$9000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$3000
	STX $2116
	LDX #$1800
	STX $75
	LDA #$80
	STA $420B
	REP #$20
	LDX #$9000
	LDY #$1000
	LDA #$07FF
	MVN $7E,$00
	SEP #$20
	PLB
	RTS
	
ending_bg3map:
	PHB
	PEA $0000
	PLB #2
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$1500
	STX $72
	STZ $74
	LDX #$2E81
	STX $2116
	LDX #$0180
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS
	
ending_hdma:
	PHB
	REP #$20
	LDX #$9D5B
	LDY #$0810
	LDA #$0009
	MVN $00,$00
	SEP #$20
	PHD
	PEA $4300
	PLD
	LDX #$1202
	STX $00
	LDX #$0810
	STX $02
	STZ $04
	STZ $07
	LDX #$2C00
	STX $10
	LDA {gengo}
	BNE +
	LDX #$A713
	STX $12
	STZ $14
	STZ $17
	PLD
	PLB
	RTS
+
	LDX #(hdma_table1)
	STX $12
	LDA.b #(hdma_table1>>16)
	STA $14
	STZ $17
	PLD
	PLB
	RTS	
	
ending_bg1_scroll:
	LDA $0809
	STA $00210D
	LDA $080A
	STA $00210D
	RTS
	
_C733:
	PHB
	PEA $0000
	PLB #2
	REP #$20
	LDA $0822
	AND #$00FF
	XBA
	LSR #2
	CLC
	ADC #$9DEB
	TAX
	LDY #$00CE
	LDA #$001F
	MVN $00,$00
	SEP #$20
	PLB
	RTS

decomp_chara_set:
	PHB
	PEA $0000
	PLB #2
	LDA #$00
	XBA
	LDA $0822	//chara
	STA $0000
	ASL
	CLC
	ADC $0000
	TAY 
	LDX $9D81,y
	LDA $9D83,y
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PLB
	RTS
	
check_bg1pos:
	LDA #$00
	XBA
	LDA $0821
	ASL
	TAX
	JMP (branch_bg1pos,x)
branch_bg1pos:
	dw bg1pos0
	dw bg1pos1
	dw bg1pos2
	dw bg1pos3
	dw bg1pos4
	dw bg1pos5
	dw bg1pos6
	dw bg1pos7
	dw bg1pos8
	dw bg1pos9
	dw bg1pos10
	
bg1pos0:
	CLC
	RTS
bg1pos1:
	LDX #$0100
	STX $0809
	INC $0821
	CLC
	RTS
bg1pos2:
	JSR _C733
	JSR decomp_chara_set
	LDX #$0600
	STX $004E
	LDX #$1200
	LDY #$8000
	LDA #$7E
-
	STX $0050
	STY $0052
	STA $0054
	LDA #$01
	STA $0042
	INC $0821
	CLC
	RTS
bg1pos3:
	LDX #$0600
	STX $004E
	LDX #$1500
	LDY #$8600
	LDA #$7E
	BRA -
bg1pos4:
	LDX #$0400
	STX $004E
	LDX #$1800
	LDY #$8C00
	LDA #$7E
	BRA -
bg1pos5:
	JSR decomp_chara_set2
	JSR fix_faery
	LDX #$0400
	STX $004E
	LDX #$3000
	LDY #$8000
	LDA #$7E
	BRA -
bg1pos6:
	LDX #$0400
	STX $004E
	LDX #$3200
	LDY #$8400
	LDA #$7E
	BRA -
bg1pos7:
	REP #$20
	LDA $0809
	BEQ +
	INC #2
	AND #$01FF
	STA $0809
	SEP #$20
	CLC
	RTS
+
	SEP #$20
	JSR _CCDD
	INC $0821
	CLC
	RTS	
	
bg1pos8:
	JSR text_shori
	BCC +
	LDA #$90
	STA $0823
	INC $0821
+
	CLC
	RTS

bg1pos9:
	DEC $0823
	BNE +
	JSR _CFD5
	INC $0821
+
	CLC
	RTS
	
bg1pos10:
	REP #$20
	LDA $0809
	CMP #$00C0
	BEQ +
	INC #2
	AND #$01FF
	STA $0809
	SEP #$20
	CLC
	RTS
+
	SEP #$20
	INC $0822
	LDA $0822
	CMP #$06
	BCC +
	RTS
+
	LDA #$01
	STA $0821
	CLC
	RTS
	
_CFD5:
	PHP
	REP #$30
	LDX #$0000
	LDA #$00FF
-
	STA $1500,x
	INX #2
	CPX #$0200
	BNE -
	PLP
	RTS

_CCDD:
	LDA #$00
	XBA
	LDA $0822
	ASL
	TAY
	PHB
	PHK
	PLB
	LDA {gengo}
	DEC
	ASL
	TAX
	JMP (write_ending_textpos,x)
write_ending_textpos:
	dw ending_en
	dw ending_vn
ending_en:
	LDX ending_ptr_en,y
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$0000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	PLB
	RTS	
ending_vn:
	LDX ending_ptr_vn,y
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$0000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	PLB
	RTS	
ending_ptr_vn:
	dw ending00_vn
	dw ending01_vn
	dw ending02_vn
	dw ending03_vn
	dw ending04_vn
	dw ending05_vn
ending_ptr_en:
	dw ending00_en
	dw ending01_en
	dw ending02_en
	dw ending03_en
	dw ending04_en
	dw ending05_en
	
decomp_chara_set2:
	PHB
	REP #$20
	LDX #$8000
	LDY #$8001
	LDA #$0000
	STA $7E8000
	LDA #$07FF
	MVN $7E,$7E
	SEP #$20
	PEA $0000
	PLB #2
	LDA #$00
	XBA
	LDA $0822	//chara
	STA $0000
	ASL
	CLC
	ADC $0000
	TAY
	LDX $9D96,y
	LDA $9D98,y
	STX $06DD
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	PLB
	RTS
	
_C7E0:
	LDA #$00
	XBA
	LDA $0821
	ASL
	TAX
	JMP (branch_0821,x)
	
branch_0821:
	dw _0821_00
	dw _0821_01
	dw _0821_02

 _0821_00:
	LDA {gengo}
	DEC
	BNE +
	LDX #(theking_en)
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$2000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	JSR _C99C
	INC $0821
	CLC
	RTS
+	
	LDX #(theking_vn)
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$2000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	JSR _C99C
	INC $0821
	CLC
	RTS

 _0821_01:
	JSR text_shori
	JSR _C870
	LDA $0708
	CMP #$0E
	BNE +
	LDA #$00
	STA $0724
	INC $0821
	+
	CLC
	RTS
	
 _0821_02:
	JSR text_shori
	DEC $0724
	BNE +
	SEC
	RTS
+
	CLC
	RTS
	
_C870:
	LDX #$0706
-
	STX $0700
	LDY $0000,x
	BEQ +
	JSR ($0000,x)
	LDX $0700
	DEC $0005,x
	BPL _C897
	LDA $0007,x
	INC
	CMP $0008,x
	BCC _C891
	LDA #$00
_C891:
	STA $0007,x
	JSR _C8AC
_C897:
	JSR _C905
+
	REP #$20
	LDA $0700
	CLC
	ADC #$0020
	TAX
	SEP #$20
	CPX #$0746
	BCC -
	RTS
	
_C8AC:
	PHB
	PEA $0000
	PLB #2
	LDA $0007,x
	REP #$20
	AND #$00FF
	STA $0000
	ASL
	CLC
	ADC $0000
	CLC
	ADC $0012,x
	TAY
	SEP #$20
	LDA $0000,y
	STA $0005,x
	REP #$20
	LDA $0001,y
	TAY
	LDA $0010,x
	TAX
-
	LDA $0004,y
	AND #$0003
	CMP #$0001
	BEQ +
	BCS _C901
	JSL $82A971
	BRA _C8F0
+
	JSL $82A93D
_C8F0:
	LDA $0002,y
	STA $0290,x
	INX #4
	INY #5
	BRA -
_C901:
	SEP #$20
	PLB
	RTS
	
_C905:
	PHB
	PEA $0000
	PLB #2
	LDX $0700
	LDA $0007,x
	REP #$20
	AND #$00FF
	STA $0000
	ASL
	CLC
	ADC $0000
	CLC
	ADC $0012,x
	TAY
	LDA $0001,y
	TAY
	LDA $0003,x
	STA $0002
	LDA $0010,x
	TAX
	LDA #$0020
	STA $0000
	SEP #$20
-
	LDA $0004,y
	CMP #$02
	BEQ +
	LDA $0000,y
	BMI _C95A
	CLC
	ADC $0002
	STA $028E,x
	BCC _C954
	JSL $82A999
	BRA _C96D
_C954:
	JSL $82A9CD
	BRA _C96D
_C95A:
	CLC
	ADC $0002
	STA $028E,x
	BCC _C969
	JSL $82A9CD
	BRA _C96D
_C969:
	JSL $82A999
_C96D:
	LDA $0003
	CLC
	ADC $0001,y
	STA $028F,x
	INX #4
	INY #5
	DEC $0000
	BNE -
	BRA _C99A
+
	REP #$20
	LDA #$F000
-
	STA $028E,x
	INX #4
	DEC $0000
	BNE -
	SEP #$20
_C99A:
	PLB
	RTS
	
_C99C:
	REP #$20
	LDX #$0706
	LDY #$0707
	STZ $0706
	LDA #$003E
	MVN $00,$00
	SEP #$20
	LDX #(king_animation)
	STX $0706
	STZ $0708
	RTS
	
init_ending_bg3map:
	PHP
	REP #$30
	LDX #$0000
	LDA #$00FF
-
	STA $7E1500,x
	INX #2
	CPX #$0800
	BNE -
	LDA #$1801
	STA $4370
	LDA #$1500
	STA $4372
	LDA #$0800
	STA $4375
	LDA #$2C00
	STA $2116
	SEP #$20
	LDA #$7E
	STA $4374
	LDA #$80
	STA $2115
	STA $420B	
	PLP
	RTS
	
fix_faery:
	LDA $0822
	CMP #$05
	BNE +
	REP #$20
	LDA #$0000
	TAX
-
	STA $7E81EC,x
	STA $7E822C,x
	STA $7E826C,x
	INX #2
	CPX #$0006
	BNE -
	SEP #$20
+
	RTS
	
king_animation:
	LDX $0700
	LDA #$00
	XBA
	LDA $0002,x
	ASL
	TAX
	JMP (animation,x)
animation:
	dw animation00
	dw animation01
	dw animation02
	dw animation03
	dw animation04
	dw animation05
	dw animation06
	dw animation07
	dw animation08
	dw animation09
	dw animation0A
	dw animation0B
	dw animation0C
	dw animation0D
	dw animation0E

animation00:
	LDX $0700
	STZ $0005,x
	REP #$20
	LDA #$87F0
	STA $0003,x
	LDA #$0200
	STA $0007,x
	STZ $000D,x
	LDA #$0080
	STA $0010,x
	LDA #$A7DC
	STA $0012,x
	SEP #$20
	INC $0002,x
	RTS
animation01:
	LDX $0700
	LDA $0003,x
	DEC
	STA $0003,x
	CMP #$A0
	BNE +
	LDA #$01
	STA $0008,x
	BRA _CA3B
+
	CMP #$90
	BNE _CA3B
	LDY #$A7E2
	LDA #$02
	JSR _CB86
	LDA {gengo}
	CMP #02
	BEQ +
	REP #$20
	LDA #$0880
-
	STA $001E,x
	SEP #$20
_CA3B:
	RTS
	REP #$20
	LDA #$0500
	BRA -

animation02:
	LDX $0700
	REP #$20
	DEC $001E,x
	SEP #$20
	BNE +
	LDY #$A7DC
	LDA #$02
	JSR _CB86
	LDA #$20
	STA $001E,x
+
	RTS
	
animation03:
	LDX $0700
	DEC $001E,x
	BNE +
	LDY #$A7E8
	LDA #$02
	JSR _CB86
	LDA #$20
	STA $001E,x
+
	RTS

animation04:
	LDX $0700
	DEC $001E,x
	BNE +
	LDY #$A7EE
	LDA #$02
	JSR _CB86
	LDA #$20
	STA $001E,x
+
	RTS

animation05:
	LDX $0700
	DEC $001E,x
	BNE +
	LDY #$A7F4
	LDA #$02
	JSR _CB86
	LDA #$20
	STA $001E,x
+
	RTS

animation06:
	LDX $0700
	DEC $001E,x
	BNE +
	LDY #$A7E2
	LDA #$02
	JSR _CB86
	LDA #$80
	STA $001E,x
+
	RTS

animation07:
	LDX $0700
	DEC $001E,x
	BNE +
	LDY #(dragon_animation)
	STY $0726
	STZ $0728
	INC $0002,x
+
	RTS

animation08:
	RTS

animation09:
	LDX $0700
	LDY #$A818
	LDA #$02
	JSR _CB86
	RTS

animation0A:
	LDX $0700
	REP #$20
	LDA #$0200
	STA $0009,x
	LDA #$2800
	STA $000B,x
	LDA #$AD31
	STA $0014,x
	SEP #$20
	INC $0002,x
	RTS

animation0B:
	JSR _8B53
	LDA $000B,x
	INC
	CMP $000C,x
	BNE +
	REP #$20
	LDA #$0000
	STA $0726
	LDA #$0080
	STA $0003,x
	LDA #$0100
	STA $0007,x
	LDA #$A81E
	STA $0012,x
	SEP #$20
	LDA #$00
	STA $001E,x
	STZ $0005,x
	INC $0002,x
+
	RTS
	
animation0C:
	LDX $0700
	DEC $001E,x
	BNE +
	LDA #$01
	STA $001E,x
	LDA $0004,x
	CLC
	ADC #$04
	STA $0004,x
	CMP #$68
	BNE +
	REP #$20
	LDA #$0100
	STA $0009,x
	LDA #$0800
	STA $000B,x
	LDA #$AD83
	STA $0014,x
	SEP #$20
	LDA #$06
	JSL $8283CB
	INC $0002,x
+
	RTS
	
animation0D:
	JSR _8B53
	LDA $000B,x
	INC
	CMP $000C,x
	BNE +
	INC $0002,x
+
	RTS

animation0E:
	RTS
	
	
_CB86:
	LDX $0700
	STA $0008,x
	LDA #$FF
	STA $0007,x
	REP #$20
	TYA
	STA $0012,x
	SEP #$20
	STZ $0005,x
	INC $0002,x
	RTS
	
_8B53:
	LDX $0700
	DEC $0009,x
	BPL +
	LDA $000A,x
	STA $0009,x
	REP #$20
	LDA $000B,x
	AND #$00FF
	ASL
	CLC
	ADC $0014,x
	TAY
	SEP #$20
	LDA $000E,x
	BNE _8B82
	LDA $0003,x
	CLC
	ADC $0000,y
	STA $0003,x
	BRA _8B8C
_8B82:
	LDA $0003,x
	SEC
	SBC $0000,y
	STA $0003,x
_8B8C:
	LDA $0004,x
	CLC
	ADC $0001,y
	STA $0004,x
	LDA $000B,x
	INC
	CMP $000C,x
	BCC _8BA1
	LDA #$00
_8BA1:
	STA $000B,x
+
	RTS
	
dragon_animation:
	LDX $0700
	LDA #$00
	XBA
	LDA $0002,x
	ASL
	TAX
	JMP (dragon,x)
dragon:
	dw dragon00
	dw dragon01
	dw dragon02
	dw dragon03
	dw dragon04
	dw dragon05
	dw dragon06
	dw dragon07
	dw dragon08
dragon00:
	LDX $0700
	STZ $0005,x
	REP #$20
	LDA #$27A0
	STA $0003,x
	LDA #$0100
	STA $0007,x
	STZ $000D,x
	LDA #$0000
	STA $0010,x
	LDA #$A7FA
	STA $0012,x
	SEP #$20
	INC $0002,x
	RTS
dragon01:
	LDX $0700
	LDA $0004,x
	CLC
	ADC #$04
	STA $0004,x
	CMP #$87
	BNE +
	LDA #$06
	JSL $8283CB
	LDA #$01
	STA $001E,x
	LDA #$14
	STA $001F,x
	INC $0002,x
	RTS
dragon02:
	LDX $0700
	DEC $001E,x
	BPL +
	LDA #$01
	STA $001E,x
	LDA $0003,x
	BEQ _CC27
	LDA #$00
	BRA _CC29
_CC27:
	LDA #$A0
_CC29:
	STA $0003,x
	DEC $001F,x
	BNE +
	LDY #$A7FD
	LDA #$05
	JSR _CB86
+
	RTS
	
dragon03:
	LDX $0700
	LDA $0007,x
	INC
	CMP $0008,x
	BNE +
	LDA #$97
	STA $0004,x
	REP #$20
	LDA #$0200
	STA $0007,x
	STZ $000D,x
	LDA #$A812
	STA $0012,x
	LDA #$0200
	STA $0009,x
	LDA #$4800
	STA $000B,x
	LDA #$AC9F
	STA $0014,x
	SEP #$20
	STZ $0005,x
	INC $0002,x
+
	RTS
dragon04:
	JSR _8B53
	LDA $000B,x
	INC
	CMP $000C,x
	BNE +
	LDA #$20
	STA $001E,x
	INC $0002,x
+
	RTS
dragon05:
	LDX $0700
	DEC $001E,x
	BNE +
	LDY #$A812
	LDA #$02
	JSR _CB86
	LDA #$09
	STA $0708
+
	RTS
dragon06:
	LDX $0700
	REP #$20
	LDA #$0200
	STA $0009,x
	LDA #$2800
	STA $000B,x
	LDA #$AD31
	STA $0014,x
	SEP #$20
	INC $0002,x
	RTS
dragon07:	
	JSR _8B53
	LDA $000B,x
	INC
	CMP $000C,x
	BNE +
	INC $0002,x
+
dragon08:
	RTS

rewrite_himitsu:
	LDA #$00
	STA $2100
	STZ $0FF0
	STZ $0FF1
	STZ $0820
	LDA {gengo}
	BNE +
	JML $81DDA6
+
	LDA #$01
	STA $004D
	STZ $06DC
	LDA #$06
	STA $212C
	LDA #$02
	STA $210C
	LDA #$18
	STA $2109
	JSR write_font_ptr
	JSR write_cutscene_hdmatbl
	JSR init_ending_bg3map
	LDX #$0000
	STX {shift}
	STX {map_counter}
	STX {map_pos}
	STX {line}
	STX {line_kage}
	STX {tile_jun}
	LDX #$2000
	STX {starting_vram}
	JSR init_himitsu_bg3map
	JSR clear_himitsu_set
loop_himitsu:
	STZ $0041
-
	LDA $0041
	BEQ -
	JSR dma_himitsu_bg2map
	JSR dma_himitsu_tilemap
	JSR dma_text_tileset
	JSR himitsu_kuchipaku
	LDA #$00
	XBA
	LDA $06DC
	ASL
	TAX
	JMP (branch_himitsu,x)

branch_himitsu:
	dw himitsu0
	dw himitsu1
	dw himitsu2
	dw himitsu3
	dw himitsu4

dma_himitsu_bg2map:
	PHB
	PEA $0000
	PLB #2
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$1000
	LDA #$00
	STX $72
	STA $74
	LDX #$3400
	STX $2116
	LDX #$0420
	STX $75
	LDA #$80
	STA $420B
	PLB
	RTS

himitsu_kuchipaku:
	PHB
	PEA $0000
	PLB #2
	REP #$20
	LDX #$0798
	LDA #$0004
	STA $0000
-
	LDA $0000,x
	BEQ +
	DEC $0002,x
	BPL _E18C
_E179:
	LDA $0004,x
	AND #$00FF
	ASL #3
	CLC
	ADC $0000,x
	TAY
	JSR _E19A
	BCS _E179
_E18C:
	INX #5
	DEC $0000
	BNE -
+
	SEP #$20
	PLB
	RTS
	
_E19A:
	LDA $0000,y
	CMP #$FB00
	BCC _E1F8
	CMP #$FC00
	BCS _E1B1
	JSR _E20A
	SEP #$20
	INC $0004,x
	BRA _E1F4
_E1B1:
	CMP #$FD00
	BCS _E1BF
	JSL $828309
	AND #$01FF
	BRA _E1CB
_E1BF:
	CMP #$FE00
	BCS _E1DA
	JSL $828309
	AND #$00FF
_E1CB:
	STA $0002
	LDA $0000,y
	AND #$00FF
	CLC
	ADC $0002
	BRA _E1FB
_E1DA:
	CMP #$FF00
	SEP #$20
	BCS _E1EE
	JSL $828309
	AND #$01
	BNE _E1EE
	INC $0004,x
	BRA _E1F4
_E1EE:
	LDA $0000,y
	STA $0004,x
_E1F4:
	REP #$20
	SEC
	RTS
_E1F8:
	LDA $0000,y
_E1FB:
	STA $0002,x
	JSR _E20A
	SEP #$20
	INC $0004,x
	REP #$20
	CLC
	RTS
	
_E20A:
	PHX
	LDX $0004,y
	LDA $0002,y
	STA $0002
	LDA $0007,y
	AND #$00FF
	STA $0004
	LDA $0006,y
	AND #$00FF
	STA $0006
	PHB
	PEA $7E7E
	PLB #2
-
	PHX
	LDA $0006
	STA $0008
	LDA $0002
	STA $000A
_E239:
	LDA $1000,x
	AND #$FC00
	ORA $000A
	STA $1000,x
	INX #2
	INC $000A
	DEC $0008
	BNE _E239
	PLX
	TXA
	CLC
	ADC #$0040
	TAX
	LDA $0002
	CLC
	ADC #$0010
	STA $0002
	DEC $0004
	BNE -
	PLB
	PLX
	RTS
	
himitsu0:
	DEC $0FF0
	BPL +
	LDA #$03
	STA $0FF0
	LDA $0FF1
	INC
	CMP #$10
	BEQ _DDEC
	STA $0FF1
	STA $002100
	BRA +
_DDEC:
	JSR write_himitsu_textptr
	INC $06DC
+
	JMP loop_himitsu
	
himitsu1:
	PHD
	PEA $0000
	PLD
	JSR text_shori
	PLD
	BCC +
	STZ $0022
	STZ $0023
	INC $06DC
+
	JMP loop_himitsu
	
himitsu2:
	JSL $82849D
	LDA $0022
	AND #$80
	STA $0000
	LDA $0023
	AND #$10
	ORA $0000
	BEQ +
	STZ $0FF0
	LDA #$0F
	STA $0FF1
	LDA #$F5
	JSL $8283B8
	INC $06DC
+
	JMP loop_himitsu
	
himitsu3:
	DEC $0FF0
	BPL +
	LDA #$02
	STA $0FF0
	LDA $0FF1
	DEC
	BMI _DE49
	STA $0FF1
	STA $002100
	BRA +
_DE49:
	LDA #$F6
	JSL $8283B8
	LDA #$80
	STA $002100
	STZ $004D
	INC $06DC
+
	JMP loop_himitsu
	
himitsu4:
	STZ $0041
	STZ $0022
	STZ $0023
	PLB
	RTL

write_himitsu_textptr:
	PHD
	PEA $0000
	PLD
	JSR write_font_ptr
	PLD
	LDA #$00
	XBA
	LDA $078A
	AND #$03
	ASL
	TAY
	PHB
	PHK
	PLB
	LDA {gengo}
	DEC
	ASL
	TAX
	JMP (write_himitsu_txtpos,x)
	
write_himitsu_txtpos:
	dw himitsu_en
	dw himitsu_vn
	
himitsu_en:
	LDX himitsu_ptr_en,y
	PLB
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$1000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808
	RTS	

himitsu_vn:
	LDX himitsu_ptr_vn,y
	PLB
	STX {text_pos}
	LDX #$0000
	STX {map_pos}
	LDX #$1000
	STX $0800
	LDA #$03
	STA $0806
	STZ $0808	
	RTS
	
himitsu_ptr_en:
	dw himitsu_easy_en
	dw himitsu_normal_en
	dw himitsu_hard_en
	dw himitsu_master_en
himitsu_ptr_vn:
	dw himitsu_easy_vn
	dw himitsu_normal_vn
	dw himitsu_hard_vn
	dw himitsu_master_vn
	
init_himitsu_bg3map:
	PHB
	LDA #$7F
	PHA
	PLB
	LDX #$0000
	LDA #$FF
-
	STA $8000,x
	INX
	CPX #$0800
	BNE -
	LDA #$00
	PHA
	PLB
	LDX #$1801
	STX $4370
	LDX #$8000
	STX $4372
	LDX #$0800
	STX $4375
	LDA #$7F
	STA $4374
	LDX #$1800
	STX $2116
	LDA #$80
	STA $2115
	STA $2100
	STA $420B
	PLB
	RTS
	
rewrite_taisen:
	LDA $06D9
	CMP #$02
	BCC +
	RTL
+
	LDA {gengo}
	BNE +
	JML $819151
+
	PHB
	LDA #$80
	STA $2100
	LDX #$936A
	JSL $008231	//write PPU
	JSR write_font_ptr
	LDA #$17
	STA $212C
	LDA #$02
	STA $210C
	REP #$20
	LDA #$0000
	STA {tile_jun}
	STA {shift}
	STA {map_counter}
	STA {map_pos}
	STA {left_byte}
	STA {right_byte}
	STA {starting_vram}
	STA {line}
	STA {line_kage}
	STA {save_a}
	STA {save_x}
	SEP #$20
	JSL $00826A	//init oam
	JSR taisen_dma_bg12set
	JSR clear_taisen_bg3
	JSR taisen_dma_obj
	JSR taisen_write_bg1map
	JSR taisen_94B2
	JSR taisen_dma_bg2map
	LDX #$9446
	JSL $008292	//write color
	JSR taisen_init_ram
	JSR taisen_dma_bg1map
	JSR _95CE
	LDA #$0A
	JSR _9D68
	LDA #$0A
	JSR _9DF7
	JSL $00813D
	JSR _A09D
	LDA #$F6
	JSL $8283B8
	LDA #$4C
	JSL $82837B
	LDA #$03
	JSL $828364
	LDA #$00
	STA $2100
	STZ $0FF0
	STZ $0FF1
	STZ $07B9
	STZ $0041
-
	JSL $828309
	LDA $0041
	BEQ -
	JSR taisen_dma_bg1map
	JSR _A101
	JSR _88E8
	DEC $0FF0
	BPL +
	LDA #$01
	STA $0FF0
	LDA $0FF1
	INC
	CMP #$10
	BEQ _91E5
	STA $0FF1
	STA $002100
+
	STZ $0041
	BRA -
_91E5:
	LDX #(_9A99)
	STX $1080
	STZ $1082
	LDA $06D9
	BEQ +
	LDX #(_9C0B)
	STX $10A0
	STZ $10A2
+
	STZ $0041
-
	JSL $828309
	LDA $0041
	BEQ -
	JSR taisen_dma_bg1map
	JSR _A101
	JSR _88E8
	JSL $82849D
	JSR _A14D
	LDA $07B9
	BNE _9246
	LDA $1042
	CMP #$05
	BNE _922B
	LDA $1062
	CMP #$05
	BEQ +
_922B:
	STZ $0041
	BRA -
+
	LDA #$F6
	JSL $8283B8
	LDA #$02
	JSL $8283B8
	LDA #$01
	STA $0FF0
	STZ $0041
	BRA +
_9246:
	LDA #$01
	STA $0FF0
	LDA #$0F
	STA $0FF1
	STA $2100
	STZ $0041
	BRA _9283
+
-
	LDA $0041
	BEQ -
	JSR taisen_dma_bg1map
	JSR _A101
	JSR _88E8
	DEC $0FF0
	BMI +
	STZ $0041
	BRA -
+
	JSR _9E9C
	LDA #$A0
	STA $0FF0
	LDA #$0F
	STA $0FF1
	STA $2100
	STZ $0041
_9283:
	LDA $0041
	BEQ _9283
	JSR taisen_dma_bg1map
	JSR _A101
	JSR _88E8
	DEC $0FF0
	BNE _92AF
	LDA $07B9
	BNE +
	LDA #$02
	BRA _92A1
+
	LDA #$01
_92A1:
	STA $0FF0
	DEC $0FF1
	BMI +
	LDA $0FF1
	STA $2100
_92AF:
	STZ $0041
	BRA _9283
+
	LDA #$F6
	JSL $8283B8
	STZ $004D
	STZ $0041
loop_taisen:
	LDA $0041
	BEQ loop_taisen
	LDA #$80
	STA $2100
	STZ $0041
	PLB
	LDA $07B9
	LSR
	RTL
	
	
taisen_dma_bg12set:
	LDX #$D859
	LDY #$8000
	STX $06DD
	STY $06E0
	LDA #$06
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	LDX #$89A9
	LDY #$C000
	STX $06DD
	STY $06E0
	LDA #$05
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$0000
	STX $2116
	LDX #$6000
	STX $75
	LDA #$80
	STA $420B
	LDX #$EF28
	LDY #$8000
	LDA #$05
	STX $06DD
	STY $06E0
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD 
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$4000
	STX $2116
	LDX #$0800
	STX $75
	LDA #$80
	STA $420B
	RTS

taisen_dma_obj:
	LDX #$EB8A
	LDY #$8000
	LDA #$05
	JSR _9399
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$6000
	STX $2116
	LDX #$0800
	STX $75
	LDA #$80
	STA $420B
	RTS

_9399:
	STX $06DD
	STY $06E0
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	RTS
	
taisen_write_bg1map:
	PHB 
	PEA $7E7E
	PLB 
	PLB 
	LDX #$0000
	REP #$20
	LDA #$0020
-
	STA $2010,x
	INX 
	INX 
	CPX #$0800
	BCC -
	SEP #$20
	JSR _93CB
	PLB 
	RTS

_93CB:
	LDX #$9468
	LDA $06D9
	BEQ +
	LDX #$9488
+
	STX $0000
	LDY #$0040
	REP #$20
	STZ $0002
	LDA #$0003
	STA $0004
_93E7:
	LDX $0000
	LDA #$0020
	STA $0006
-
	LDA #$8181
	PHA
	PLB #2
	LDA $0000,x
	AND #$00FF
	INX 
	CLC 
	ADC $0002
	PEA $7E7E
	PLB #2
	STA $2010,y
	INY #2
	DEC $0006
	BNE -
	LDA $0002
	CLC 
	ADC #$0010
	STA $0002
	DEC $0004
	BNE _93E7
	SEP #$20
	LDA $06D9
	BNE +
	REP #$20
	LDA $06DA
	AND #$00FF
	INC
	TAX 
	LDA #$8181
	PHA
	PLB #2
	LDA $94A8,x
	AND #$00FF
	PEA $7E7E
	LDX #$207C
	PLB #2
	STA $0000,x
	INC
	STA $0002,x
	INC
	STA $0004,x
	CLC 
	ADC #$0010
	STA $0044,x
	DEC
	STA $0042,x
	DEC
	STA $0040,x
	CLC 
	ADC #$0010
	STA $0080,x
	INC
	STA $0082,x
	INC
	STA $0084,x
	SEP #$20
+
	RTS

taisen_dma_bg2map:
	PHB 
	LDA #$81
	PHA
	PLB
	REP #$20
	LDX #$0000
	LDY #$0000
	LDA #$0008
	STA $0000
_961C:
	LDA #$0004
	STA $0002
_9622:
	LDA #$0008
	STA $0004
	LDA $967C,x
	AND #$00FF
	ORA #$1000
-
	STA $0800,y
	INY #2
	INC
	DEC $0004
	BNE -
	DEC $0002
	BNE _9622
	INX 
	DEC $0000
	BNE _961C
	LDX #$0800
	LDY #$0A00
	LDA #$05FF
	MVN $00,$00
	SEP #$20
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$3800
	STX $2116
	LDX #$0800
	STX $72
	STZ $74
	LDX #$0800
	STX $75
	LDA #$80
	STA $420B
	PLB 
	RTS
	
taisen_init_ram:
	PHB 
	PEA $7E7E
	PLB #2
	LDX #$0007
-
	STZ $34DF,x
	STZ $3BB6,x
	DEX 
	BPL -
	STZ $0024
	STZ $0025
	STZ $0030
	STZ $0031
	PLB 
	RTS
	
taisen_dma_bg1map:
	PEA $4300
	PLD
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$3400
	STX $2116
	LDX #$2010
	LDA #$7E
	STX $72
	STA $74
	LDX #$0740
	STX $75
	LDA #$80
	STA $420B
	RTS
	
_95CE:
	REP #$20
	LDX #$1000
	LDY #$1001
	STZ $1000
	LDA #$07FE
	MVN $00,$00
	SEP #$20
	LDX #(_96B9)
	STX $1000
	STZ $1002
	LDX #(_97E2)
	STX $1040
	STZ $1042
	LDA $06D9
	BEQ +
	LDX #(_9756)
	STX $1020
	STZ $1022
	LDX #(_99DB)
	STX $1060
	STZ $1062
+
	RTS

_9D68:
	PHB 
	PHX 
	PHA 
	REP #$20
	AND #$00FF
	STA $0000
	ASL
	CLC 
	ADC $0000
	TAX 
	LDA #$8181
	PHA
	PLB #2
	LDA $9DD6,x
	STA $06DD
	SEP #$20
	LDA $9DD8,x
	STA $06DF
	LDX #$8000
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$0700
	STX $004E
	LDX #$6400
	LDY #$8000
	LDA #$7E
	STX $0050
	STY $0052
	STA $0054
	LDA #$01
	STA $0042
	PLA 
	STA {taisen_aite}
	REP #$20
	AND #$00FF
	ASL #5
	CLC 
	ADC #$9588
	TAX 
	LDY #$018E
	LDA #$001F
	MVN $00,$00
	SEP #$20
	PLX 
	PLB 
	RTS

_9DF7:
	PHB 
	PHX 
	CMP #$FF
	BNE _9E24
	LDA $06DA
	CMP #$02
	BCS _9E23
	REP #$20
	LDA {taisen_aite}
	AND #$00FF
	ASL
	TAX 
	LDA #$8181
	PHA
	PLB #2
	LDA $06DA
	AND #$00FF
	CLC 
	ADC $9E90,x
	TAX 
	SEP #$20
	LDA $0000,x
	BRA _9E24
_9E23:
	INC
_9E24:
	PHA 
	REP #$20
	AND #$00FF
	STA $0000
	ASL
	CLC 
	ADC $0000
	TAX 
	LDA #$8181
	PHA
	PLB #2
	LDA $9DD6,x
	STA $06DD
	SEP #$20
	LDA $9DD8,x
	STA $06DF
	LDX #$8800
	LDA #$7E
	STX $06E0
	STA $06E2
	JSL $8281F6
	LDX #$0700
	STX $0056
	LDX #$6800
	LDY #$8800
	LDA #$7E
	STX $0058
	STY $005A
	STA $005C
	LDA #$01
	STA $0042
	PLA 
	STA {teki}
	REP #$20
	AND #$00FF
	ASL #5
	CLC 
	ADC #$9588
	TAX 
	LDY #$01AE
	LDA #$001F
	MVN $00,$00
	SEP #$20
	PLX 
	PLB 
	RTS

_A09D:
	PHB 
	PEA $0000
	PLB 
	PLB 
	LDX #$0000
	LDY #$0000
-
	LDA #$01
	STA $0800,y
	LDA $93EA,x
	REP #$20
	AND #$00FF
	STA $0801,y
	SEP #$20
	INX 
	INY 
	INY 
	INY 
	CPX #$005C
	BCC -
	REP #$20
	LDX #$0800
	LDY #$0914
	LDA #$018B
	MVN $00,$00
	SEP #$20
	STZ $0AA0
	PEA $4300
	PLD 
	STZ $420C
	LDX #$1002
	STX $00
	LDX #$0800
	STX $02
	STZ $04
	STZ $07
	LDX #$3200
	STX $10
	LDX #$93A9
	STX $12
	STZ $14
	STZ $17
	LDA #$03
	STA $004D
	PLB 
	RTS

_A101:
	PHB
	PEA $0000
	PLB #2
	LDX #$0000
-
	LDA $0801,x
	INC
	AND #$3F
	STA $0801,x
	INX #3
	CPX #$0114
	BCC -
	REP #$20
	LDX #$0800
	LDY #$0914
	LDA #$018B
	MVN $00,$00
	SEP #$20
	PLB
	RTS
	
_88E8:
	LDX #$1000
-
	STX $0700
	LDY $0000,x
	BEQ _8912
	JSR ($0000,x)
	LDX $0700
	DEC $0005,x
	BPL +
	LDA $0007,x
	INC
	CMP $0008,x
	BCC _8909
	LDA #$00
_8909:
	STA $0007,x
	JSR _8924
+
	JSR _8984
_8912:
	REP #$20
	LDA $0700
	CLC 
	ADC #$0020
	TAX 
	SEP #$20
	CPX #$10C0
	BCC -
	RTS

_8924:
	PHB 
	PEA $0000
	PLB #2
	LDA $0007,x
	REP #$20
	AND #$00FF
	STA $0000
	ASL
	CLC 
	ADC $0000
	CLC 
	ADC $0012,x
	TAY 
	SEP #$20
	LDA $0000,y
	STA $0005,x
	REP #$20
	LDA $0001,y
	TAY 
	LDA $000D,x
	AND #$00FF
	STA $0000
	LDA $0010,x
	TAX
-
	LDA $0002,y
	STA $0290,x
	LDA $0004,y
	AND #$0001
	BNE +
	JSL $82A971
	BRA _8972
+
	JSL $82A93D
_8972:
	INX #4
	INY #5
	DEC $0000
	BNE -
	SEP #$20
	PLB 
	RTS

_8984:
	PHB 
	PEA $0000
	PLB #2
	LDX $0700
	LDA $0007,x
	REP #$20
	AND #$00FF
	STA $0000
	ASL
	CLC 
	ADC $0000
	CLC 
	ADC $0012,x
	TAY 
	LDA $0001,y
	TAY 
	LDA $0003,x
	STA $0002
	LDA $000D,x
	AND #$00FF
	STA $0000
	LDA $0010,x
	TAX 
	SEP #$20
-
	LDA $0000,y
	BMI +
	CLC 
	ADC $0002
	STA $028E,x
	BCC _89CF
	JSL $82A999
	BRA _89E8
_89CF:
	JSL $82A9CD
	BRA _89E8
+
	CLC 
	ADC $0002
	STA $028E,x
	BCC _89E4
	JSL $82A9CD
	BRA _89E8
_89E4:
	JSL $82A999
_89E8:
	LDA $0003
	CLC 
	ADC $0001,y
	STA $028F,x
	INX #4
	INY #5
	DEC $0000
	BNE -
	PLB 
	RTS

_A14D:
	PHB
	PEA $7E7E
	PLB #2
	LDX #$0020
	LDY #$34DF
	JSR _A167
	LDX #$002C
	LDY #$3BB6
	JSR _A167
	PLB 
	RTS

_A167:
	LDA $0005,x
	AND #$0F
	BEQ +
	STA $0000
	LDA $0005,x
	AND #$F0
	STA $0005,x
	LDA $0000,x
	AND #$30
	CMP #$30
	BNE +
	JSR _A18C
	LDA $0000
	STA $0007,y
+
	RTS

_A18C:
	PHY
	LDA #$07
	STA $0001
-
	LDA $0001,y
	STA $0000,y
	INY
	DEC $0001
	BNE -
	PLY
	RTS
	
_9E9C:
	PHB 
	PHX 
	PEA $7E7E
	PLB 
	PLB 
	LDX #$00F0
	LDY #$0198
	REP #$20
	LDA #$0008
	STA $0000
-
	TXA 
	STA $2010,y
	CLC 
	ADC #$0008
	STA $20D0,y
	CLC 
	ADC #$0008
	STA $2050,y
	CLC 
	ADC #$0008
	STA $2110,y
	CLC 
	ADC #$0008
	STA $2090,y
	CLC 
	ADC #$0008
	STA $2150,y
	INX 
	INY #2
	DEC $0000
	BNE -
	SEP #$20
	PLX 
	PLB 
	RTS

taisen_94B2:
	PHB 
	PEA $7E7E
	PLB #2
	LDY #$0020
	LDA $06D9
	BNE _94DB
	LDX #$0492
	LDA #$05
	JSR _94EE
	LDY #$00F0
	LDA #$01
	JSR _94EE
	LDX #$956E
	LDY #$0492
	JSR _9514
	BRA +
_94DB:
	LDX #$0392
	LDA #$0E
	JSR _94EE
	LDX #$957F
	LDY #$0392
	JSR _9514
+
	PLB
	RTS
	
_94EE:
	STA $0000
_94F1:
	LDA #$0E
	STA $0001
-
	TYA 
	STA $2010,x
	INX #2
	INY
	DEC $0001
	BNE -
	REP #$20
	TXA
	CLC
	ADC #$0024
	TAX
	SEP #$20
	INY #2
	DEC $0000
	BNE _94F1
	RTS
	
_9514:
	LDA #$81
	PHA
	PLB
-
	LDA $0000,x
	INX
	CMP #$FF
	BEQ _956D
	CMP #$FE
	BNE _9538
	LDA $0000,x
	INX
	REP #$20
	AND #$00FF
	STA $0002
	TYA
	CLC
	ADC $0002
	TAY
	SEP #$20
	BRA -
_9538:
	XBA
	LDA $0000,x
	INX
	STA $0002
	PEA $7E7E
	PLB #2
	XBA
	CMP #$00
	BMI _955F
-
	STA $2011,y
	STA $2051,y
	STA $2091,y
	STA $20D1,y
	INY #2
	DEC $0002
	BNE -
	BRA _9514
_955F:
	AND #$7F
-
	STA $2011,y
	INY #2
	DEC $0002
	BNE -
+	
	BRA _9514
_956D:
	RTS
	
_96B9:
	LDA #$00
	XBA
	LDA $0002,x
	ASL
	TAX
	JMP (_96C4,x)
	
_96C4:
	dw _96C4_0
	dw _96C4_1
	dw _96C4_2
	dw _96C4_3
	
_96C4_0:
	LDX $0700
	STZ $0005,x
	REP #$20
	LDA #$1800
	STA $0003,x
	LDA #$0100
	STA $0007,x	
	LDA #$0400
	STA $0009,x
	LDA #$0500
	STA $000B,x
	LDA #$0006
	STA $000D,x
	LDA #$0000
	STA $0010,x
	LDA #$96E8
	STA $0012,x
	LDA #$99F4
	STA $0014,x
	SEP #$20
	LDA #$01
	STA $0002,x
_96C4_1:
	LDX $0700
	LDA $06D9
	BNE _9722
	LDA $0003,x
	CLC
	ADC #$08
	CMP #$AC
	BCS _9731
	STA $0003,x
	BRA _9736
_9722:
	LDA $0003,x
	CLC
	ADC #$04
	CMP #$6C
	BCS _9731
	STA $0003,x
	BRA _9736
_9731:
	LDA #$02
	STA $0002,x
_9736:
	JSR _8B53
	RTS
	
_96C4_2:
	JSR _8B53
	RTS
	
_96C4_3:
	JSR _8B53
	LDA $0003,x
	SEC
	SBC #$04
	CMP #$68
	BCC _9750
	STA $0003,x
	BRA _9755
_9750:
	LDA #$02
	STA $0002,x
_9755:
	RTS

_97E2:
	LDA #$00
	XBA
	LDA $0002,x
	ASL
	TAX
	JMP (_97ED,x)
	
_97ED:
	dw _97ED_0, _97ED_1, _97ED_2, _97ED_3, _97ED_4
	dw _97ED_5, _97ED_6, _97ED_7, _97ED_8
	
_97ED_0:
	LDX $0700	
	STZ $0005,x	
	REP #$20	
	LDA #$1700	
	STA $0003,x	
	LDA #$0100	
	STA $0007,x
	LDA #$001E	
	STA $000D,x	
	LDA #$002C	
	STA $0010,x	
	LDA #$9741	
	STA $0012,x	
	SEP #$20	
	LDA #$01	
	STA $0002,x	
_97ED_1:		
	LDX $0700	
	LDA $06D9	
	BNE _9843	
	LDA $0003,x	
	CLC 	
	ADC #$08	
	CMP #$AC	
	BCS _9852	
	STA $0003,x	
	BRA _9857
_9843:
	LDA $0003,x	
	CLC 	
	ADC #$04	
	CMP #$6C	
	BCS _9852	
	STA $0003,x	
	BRA _9857
_9852:
	LDA #$02	
	STA $0002,x
_9857:
	RTS	
	
_97ED_2:
	RTS
	
_97ED_3:
	LDX $0700
	LDY $0056
	CPY #$0700
	BEQ +
	REP #$20
	LDA #$0200
	STA $0009,x
	LDA #$0900
	STA $000B,x
	LDA #$99FE
	STA $0014,x
	SEP #$20
	STZ $0005,x
	LDA {taisen_aite}
	JSR _9D68
	LDA #$04
	STA $0002,x
+
	RTS

_97ED_4:
	LDX $0700
	JSR _8B53
	LDA $000B,x
	CMP #$08
	BCC +
	LDA $06D9
	BNE _98D9
	LDA #$03
	STA $1002
	LDY #(_9756)
	STY $1020
	STZ $1022
	LDY #$0000
	STY $1080
	REP #$20
	LDY #$011C
	LDA #$F000
-
	STA $028E,y
	INY #4
	CPY #$0174
	BCC -
	SEP #$20
	JSR _994B
	LDY #(_99DB)
	STY $1060
	STZ $1062
	LDA #$06
	STA $0002,x
	BRA +
_98D9:
	LDA #$05
	STA $0002,x
+
	RTS

_97ED_5:
	RTS

_97ED_6:
	LDX $0700
	JSR _997B
	LDA $0003,x
	SEC
	SBC #$04
	CMP #$68
	BCC _98F5
	STA $0003,x
	BRA +
_98F5:
	JSR _9996
	LDA #$07
	STA $0002,x
+
	RTS

_97ED_7:
	LDX $0700
	LDA $1062
	CMP #$02
	BNE +
	LDA #$10
	STA $0FF0
	LDA #$08
	STA $0002,x
+
	RTS

_97ED_8:
	LDX $0700
	LDA $0FF0
	BMI _992B
	DEC
	STA $0FF0
	BPL +
	LDA #$01
	STA $0FF1
	JSR taisen_bg3_setmap
	BRA +
_992B:
	LDA $0022
	AND #$80
	STA $0000
	LDA $0023
	AND #$10
	ORA $0000
	BNE _9942
	DEC $0FF1
	BNE +
_9942:
	LDA #$05
	STA $1062
	STA $0002,x
+
	RTS
	
_994B:
	PHB
	LDA #$81
	PHA
	PLB
	REP #$20
	LDY #$0000
-
	LDA $99CE,y
	STA $0FE0,y
	INY #2
	CPY #$000D
	BCC -
	LDA #$4300
	TCD
	SEP #$20
	LDY #$0E02
	STY $20
	LDY #$0FE0
	STY $22
	STZ $24
	STZ $27
	LDA #$07
	STA $004D
	PLB
	RTS
	
_997B:
	REP #$20
	LDA $0FE4
	CMP #$3FF0
	BEQ +
	DEC
	AND #$3FFF
	STA $0FE4
	LDA $0FE7
	INC
	STA $0FE7
+
	SEP #$20
	RTS
	
_9996:
	PHB
	PEA $7E7E
	PLB #2
	REP #$20
	LDY #$0492
	LDA #$0006
	STA $0000
_99A7:
	LDA #$000E
	STA $0002
	LDA #$0020
-
	STA $2010,y
	INY #2
	DEC $0002
	BNE -
	TYA
	CLC
	ADC #$0024
	TAY
	DEC $0000
	BNE _99A7
	SEP #$20
	LDA #$03
	STA $004D
	PLB
	RTS
	
_9EE5:
	PHB
	LDA #$81
	PHA
	PLB
	REP #$20
	LDA {teki}
	AND #$00FF
	ASL
	TAX
	LDA $9F03,x
	TAX
	SEP #$20
	LDY #$2434
	JSR _A039
	PLX
	PLB
	RTS
	
_A039:
	PHB
	STY $0000
-
	SEP #$20
	LDA #$81
	PHA
	PLB
	REP #$20	
	LDA $0000,x
	INX 
	AND #$00FF
	CMP #$00FF
	BNE +
	JMP _A099
+
	CMP #$00FE
	BNE +
	LDA $0000
	CLC
	ADC #$0080
	STA $0000
	TAY
	BRA -
+
	ORA #$0200
	PEA $7E7E
	PLB #2
	STA $0040,y
	SEP #$20
	LDA #$81
	PHA
	PLB
	REP #$20
	LDA $0000,x
	AND #$00FF
	CMP #$0087
	BEQ +
	CMP #$0088
	BEQ +
	CMP #$00C7
	BEQ +
	CMP #$00C8
	BNE _A095
+
	ORA #$0200
	PEA $7E7E
	PLB #2
	STA $0000,y
	INX
_A095:
	INY #2
	BRA -
_A099:
	SEP #$20
	PLB
	RTS
	
_9A99:
	LDA #$00
	XBA
	LDA $0002,x
	ASL
	TAX
	JMP (_9AA4,x)
_9AA4:
	dw _9AAA, _9AF0, _9C0A
_9AAA:
	LDX $0700
	STZ $0005,x
	LDA #$50
	STA $0003,x
	LDA $06D9
	BNE _9ABE
	LDA #$97
	BRA _9AC0
_9ABE:
	LDA #$77
_9AC0:
	STA $0004,x
	REP #$20
	LDA #$0100
	STA $0007,x
	LDA #$0016
	STA $000D,x
	LDA #$011C
	STA $0010,x
	LDA #$990C
	STA $0012,x
	SEP #$20
	LDA #$00
	STA {taisen_aite}
	STZ $0024
	STZ $0025
	LDA #$01
	STA $0002,x
_9AF0:
	LDX $0700
	LDA $0025
	AND #$80
	BEQ _9B22
	STZ $0025
	LDA $06D9
	BNE _9B09
	LDA {stage}
	BNE _9B22
	BRA _9B15
_9B09:
	LDA $10A2
	CMP #$02
	BCS _9B22
	LDA #$02
	STA $10A2
_9B15:
	LDA #$02
	STA $0002,x
	LDA #$01
	STA $07B9
	RTS
	
_9B22:
	LDA $07B9
	BEQ _9B2A
	RTS
_9B2A:
	LDA $0024
	AND #$80
	STA $0000
	LDA $0025
	AND #$10
	ORA $0000
	BEQ _9B63
	LDA $06D9
	CMP #$01
	BNE _9B51
	LDY #$34DF
	JSR _A1A0
	BCS _9B51
	LDA #$09
	STA {taisen_aite}
_9B51:
	LDA #$03
	STA $1042
	LDA #$02
	STA $0002,x
	LDA #$00
	JSR _9684
	RTS
	
_9B63:
	LDA $0023
	AND #$0F
	BNE _9B6D
	RTS
	
_9B6D:
	STA $0000
	LDA $06D9
	BEQ _9BC1
	LDA $0000
	AND #$08
	BEQ _9B9C
	LDA $0004,x
	SEC
	SBC #$20
	CMP #$77
	BCC _9BC1
	STA $0004,x
	LDA {taisen_aite}
	SEC
	SBC #$03
	STA {taisen_aite}
	LDA #$04
	JSL $8283CB
	BRA _9BC1
_9B9C:
	LDA $0000
	AND #$04
	BEQ _9BC1
	LDA $0004,x
	CLC
	ADC #$20
	CMP #$B8
	BCS _9BC1
	STA $0004,x
	LDA {taisen_aite}
	CLC
	ADC #$03
	STA {taisen_aite}
	LDA #$04
	JSL $8283CB
_9BC1:
	LDA $0000
	AND #$02
	BEQ _9BE6
	LDA $0003,x
	SEC
	SBC #$20
	CMP #$50
	BCC _9C09
	STA $0003,x
	LDA {taisen_aite}
	DEC
	STA {taisen_aite}
	LDA #$04
	JSL $8283CB
	BRA _9C09
_9BE6:
	LDA $0000
	AND #$01
	BEQ _9C09
	LDA $0003,x
	CLC
	ADC #$20
	CMP #$91
	BCS _9C09
	STA $0003,x
	LDA {taisen_aite}
	INC
	STA {taisen_aite}
	LDA #$04
	JSL $8283CB
_9C09:
	RTS

_9C0A:
	RTS
	
_9684:
	STA $0000
	PHX
	CMP #$00
	BNE _9692
	LDA {taisen_aite}
	BRA _9696
_9692:
	LDA {teki}
_9696:
	REP #$20
	AND #$00FF
	TAX
	SEP #$20
	PHB
	LDA #$81
	PHA
	PLB
	LDA $96AF,x
	PLB
	PLX
	CLC
	ADC $0000
	JSL $8283CB
	RTS
	
_A1A0:
	PHB
	PHX
	PEA $7E7E
	PLB #2
	LDX #$9A10
	LDA #$08
	STA $0000
_A1AF:
	LDA $0000,y
	STA $0001
	PHB
	PEA $0000
	PLB #2
	LDA $0000,x
	PLB
	CMP $0001
	BNE _A1CE
	INX
	INY
	DEC $0000
	BNE _A1AF
	CLC
	BRA _A1CF
_A1CE:
	SEC
_A1CF:
	PLX
	PLB
	RTS
	
_99DB:
	LDA #$00
	XBA 
	LDA $0002,x
	ASL
	TAX
	JMP (_99E6,x)
_99E6:
	dw _99F2, _9A35, _9A4D
	dw _9A4E, _9A85, _9A98
	
_99F2:
	LDX $0700
	STZ $0005,x
	REP #$20
	LDA #$17FF
	STA $0003,x
	LDA #$0100
	STA $0007,x
	LDA #$011E
	STA $000D,x
	LDA #$00A4
	STA $0010,x
	LDY #$9744
	LDA $06D9
	AND #$00FF
	BEQ _9A20
	LDY #$9747
_9A20:
	TYA
	STA $0012,x
	SEP #$20
	LDA #$01
	STA $0002,x
	LDA $06D9
	BNE _9A35
	LDA #$FF
	JSR _9DF7
_9A35:
	LDX $0700
	LDA $0003,x
	SEC
	SBC #$04
	CMP #$97
	BCC _9A47
	STA $0003,x
	BRA _9A4C
_9A47:
	LDA #$02
	STA $0002,x
_9A4C:
	RTS
_9A4D:
	RTS
	
_9A4E:
	LDX $0700
	LDY $004E
	CPY #$0700
	BEQ +
	REP #$20
	LDA #$9744
	STA $0012,x
	LDA #$0200
	STA $0009,x
	LDA #$0900
	STA $000B,x
	LDA #$99FE
	STA $0014,x
	SEP #$20
	STZ $0005,x
	LDA {teki}
	JSR _9DF7
	LDA #$04
	STA $0002,x
+
	RTS
	
_9A85:
	LDX $0700
	JSR _8B53
	LDA $000B,x
	CMP #$08
	BCC +
	LDA #$05
	STA $0002,x
+
	RTS
_9A98:
	RTS
	
_9756:
	LDA #$00
	XBA 
	LDA $0002,x
	ASL
	TAX
	JMP (_9761,x)
_9761:
	dw _9767, _97C3, _97DE
_9767:
	LDX $0700
	STZ $0005,x
	REP #$20
	LDA #$18FF
	STA $0003,x
	LDA #$0100
	STA $0007,x
	LDA #$0400
	STA $0009,x
	LDA #$0500
	STA $000B,x
	LDA #$0105
	STA $000D,x
	LDA #$0018
	STA $0010,x
	LDA $06D9
	AND #$00FF
	BNE _97B0
	SEP #$20
	LDA $1009
	STA $0009,x
	LDA $100B
	STA $000B,x
	REP #$20
	LDA #$96EE
	BRA _97B3
_97B0:
	LDA #$96EB
_97B3:
	STA $0012,x
	LDA #$99F4
	STA $0014,x
	SEP #$20
	LDA #$01
	STA $0002,x
_97C3:
	LDX $0700
	LDA $0003,x
	SEC 
	SBC #$04
	CMP #$97
	BCC _97D5
	STA $0003,x
	BRA _97DA
_97D5:
	LDA #$02
	STA $0002,x
_97DA:
	JSR _8B53
	RTS
	
_97DE:
	JSR _8B53
	RTS
	
_9C0B:
	LDA #$00
	XBA
	LDA $0002,x
	ASL
	TAX
	JMP (_9C16,x)
_9C16:
	dw _9C1C, _9C62, _9D67
_9C1C:
	LDX $0700
	STZ $0005,x
	LDA #$90
	STA $0003,x
	LDA $06D9
	BNE _9C30
	LDA #$97
	BRA _9C32
_9C30:
	LDA #$77
_9C32:
	STA $0004,x
	REP #$20
	LDA #$0100
	STA $0007,x
	LDA #$010B
	STA $000D,x
	LDA #$0130
	STA $0010,x
	LDA #$9912
	STA $0012,x
	SEP #$20
	LDA #$02
	STA {teki}
	STZ $0030
	STZ $0031
	LDA #$01
	STA $0002,x
_9C62:
	LDX $0700
	LDA $0031
	AND #$80
	BEQ _9C86
	STZ $0031
	LDA $1082
	CMP #$02
	BCS _9C86
	LDA #$02
	STA $1082
	STA $0002,x
	LDA #$01
	STA $07B9
	RTS
_9C86:
	LDA $07B9
	BEQ +
	RTS
+
	LDA $0030
	AND #$80
	STA $0000
	LDA $0031
	AND #$10
	ORA $0000
	BEQ +
	LDY #$3BB6
	JSR _A1A0
	BCS _9CAE
	LDA #$09
	STA {teki}
_9CAE:
	LDA #$03
	STA $1062
	LDA #$02
	STA $0002,x
	LDA #$01
	JSR _9684
	RTS
+
	LDA $002F
	AND #$0F
	BNE +
	RTS
+
	STA $0000
	LDA $06D9
	BEQ _9D1E
	LDA $0000
	AND #$08
	BEQ _9CF9
	LDA $0004,x
	SEC
	SBC #$20
	CMP #$77
	BCC _9D1E
	STA $0004,x
	LDA {teki}
	SEC
	SBC #$03
	STA {teki}
	LDA #$04
	JSL $8283CB
	BRA _9D1E
_9CF9:
	LDA $0000
	AND #$04
	BEQ _9D1E
	LDA $0004,x
	CLC
	ADC #$20
	CMP #$B8
	BCS _9D1E
	STA $0004,x
	LDA {teki}
	CLC
	ADC #$03
	STA {teki}
	LDA #$04
	JSL $8283CB
_9D1E:
	LDA $0000
	AND #$02
	BEQ _9D43
	LDA $0003,x
	SEC
	SBC #$20
	CMP #$50
	BCC +
	STA $0003,x
	LDA {teki}
	DEC
	STA {teki}
	LDA #$04
	JSL $8283CB
	BRA +
_9D43:
	LDA $0000
	AND #$01
	BEQ +
	LDA $0003,x
	CLC
	ADC #$20
	CMP #$91
	BCS +
	STA $0003,x
	LDA {teki}
	INC
	STA {teki}
	LDA #$04
	JSL $8283CB
+
	RTS
_9D67:
	RTS
	
clear_taisen_bg3:
	LDX #$1801
	STX $4370
	LDA.b #(blank>>16)
	STA $4374
	LDX #(blank)
	STX $4372
	LDX #$2000
	STX $4375
	LDX #$2000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	
	REP #$20
	LDA #$00FF
	LDX #$0000
-
	STA $7F8000,x
	INX #2
	CPX #$0800
	BNE -
	SEP #$20
	LDX #$3C00
	STX $2116
	LDX #$8000
	STX $4372
	LDX #$0800
	STX $4375
	LDA #$7F
	STA $4374
	LDA #$80
	STA $420B
	RTS
	
new_nmi:
	INC $0038
	REP #$20
	JSR nmi_dma
	PLY
	PLX
	PLA
	PLD
	PLB
	SEP #$20
	RTI
	
nmi_dma:
	LDA {nmi_dma_jun}
	AND #$00FF
	BEQ +
	ASL #3
	TAY
	LDA #$1801
	STA $4370
	LDA {nmi_dma_vram},y
	STA $2116
	LDA {nmi_dma_size},y
	STA $4375
	LDA {nmi_dma_adr},y
	STA $4372
	SEP #$20
	LDA {nmi_dma_bank},y
	STA $4374
	LDA {nmi_dma_dir},y
	STA $2115
	LDA #$80
	STA $420B
	REP #$20
	DEC {nmi_dma_jun}
	BRA nmi_dma
+
	RTS
	
taisen_bg3_setmap:
	PHB
	REP #$20
	LDA $00
	PHA
	LDA $02
	PHA
	LDA #$0004
	STA $02
	LDY #$0000
	LDA {teki}
	AND #$00FF
	ASL
	TAX
	STA {save_x}
	LDA {gengo}
	AND #$00FF
	STA {save_a}
	CMP #$0002
	BEQ +
	LDA taisen_serifu1_ptr_en,x
	STA $00
	LDA #$0013
	STA $7E00B0
	LDA #$037F
	STA $7E00B2		//color	
	BRA _1
+
	LDA taisen_serifu1_ptr_vn,x
	STA $00
	LDA #$50E5
	STA $7E00B0
	LDA #$7FB7
	STA $7E00B2		//color
_1:
	PHK
	PLB
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
-
	LDA ($00),y
	STA {nmi_dma_vram},x
	INX #2
	INY #2
	DEC $02
	BNE -
	LDA #$0004
	STA $02
	LDA {save_a}
	LDX {save_x}
	CMP #$0002
	BEQ +
	LDA taisen_serifu1_map_en,x
	BRA _2
+
	LDA taisen_serifu1_map_vn,x
_2:
	STA $00
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
	LDY #$0000
-
	LDA ($00),y
	STA {nmi_dma_vram},x
	INX #2
	INY #2
	DEC $02
	BNE -
	PLA
	STA $02
	PLA
	STA $00
	PLB
	RTS
	
taisen_serifu1_ptr_vn:
	dw ptr_00_vn, ptr_01_vn, ptr_02_vn, ptr_03_vn, ptr_04_vn
	dw ptr_05_vn, ptr_06_vn, ptr_07_vn, ptr_08_vn, ptr_09_vn
ptr_00_vn:
	dw $2000, $0600
	dl (serifu1_00_vn)
	db $80
ptr_01_vn:
	dw $2000, $0600
	dl (serifu1_01_vn)
	db $80
ptr_02_vn:
	dw $2000, $0600
	dl (serifu1_02_vn)
	db $80
ptr_03_vn:
	dw $2000, $0600
	dl (serifu1_03_vn)
	db $80
ptr_04_vn:
	dw $2000, $0400
	dl (serifu1_04_vn)
	db $80
ptr_05_vn:
	dw $2000, $0200
	dl (serifu1_05_vn)
	db $80
ptr_06_vn:
	dw $2000, $0400
	dl (serifu1_06_vn)
	db $80
ptr_07_vn:
	dw $2000, $0600
	dl (serifu1_07_vn)
	db $80
ptr_08_vn:
	dw $2000, $0600
	dl (serifu1_08_vn)
	db $80
ptr_09_vn:
	dw $2000, $0400
	dl (serifu1_09_vn)
	db $80
	
taisen_serifu1_ptr_en:
	dw ptr_00_en, ptr_01_en, ptr_02_en, ptr_03_en, ptr_04_en
	dw ptr_05_en, ptr_06_en, ptr_07_en, ptr_08_en, ptr_09_en
ptr_00_en:	
	dw $2000, $0600
	dl (serifu1_00_en)
	db $80
ptr_01_en:	
	dw $2000, $0600
	dl (serifu1_01_en)
	db $80
ptr_02_en:	
	dw $2000, $0600
	dl (serifu1_02_en)
	db $80
ptr_03_en:	
	dw $2000, $0800
	dl (serifu1_03_en)
	db $80
ptr_04_en:
	dw $2000, $0400
	dl (serifu1_04_en)
	db $80
ptr_05_en:
	dw $2000, $0200
	dl (serifu1_05_en)
	db $80
ptr_06_en:
	dw $2000, $0200
	dl (serifu1_06_en)
	db $80
ptr_07_en:
	dw $2000, $0800
	dl (serifu1_07_en)
	db $80
ptr_08_en:
	dw $2000, $0400
	dl (serifu1_08_en)
	db $80
ptr_09_en:
	dw $2000, $0400
	dl (serifu1_09_en)
	db $80
	
taisen_serifu1_map_vn:
	dw map_00_vn, map_01_vn, map_02_vn, map_03_vn, map_04_vn
	dw map_05_vn, map_06_vn, map_07_vn, map_08_vn, map_09_vn
	
map_00_vn:
	dw $3E00, $0180
	dl (serifu1_map_00_vn)
	db $80
map_01_vn:
	dw $3E00, $0180
	dl (serifu1_map_01_vn)
	db $80
map_02_vn:
	dw $3E00, $0180
	dl (serifu1_map_02_vn)
	db $80
map_03_vn:
	dw $3E00, $0180
	dl (serifu1_map_03_vn)
	db $80
map_04_vn:
	dw $3E00, $0180
	dl (serifu1_map_04_vn)
	db $80
map_05_vn:
	dw $3E00, $0080
	dl (serifu1_map_05_vn)
	db $80
map_06_vn:
	dw $3E00, $00F0
	dl (serifu1_map_06_vn)
	db $80
map_07_vn:
	dw $3E00, $0180
	dl (serifu1_map_07_vn)
	db $80
map_08_vn:
	dw $3E00, $0180
	dl (serifu1_map_08_vn)
	db $80
map_09_vn:
	dw $3E00, $0180
	dl (serifu1_map_09_vn)
	db $80
	
taisen_serifu1_map_en:
	dw map_00_en, map_01_en, map_02_en, map_03_en, map_04_en
	dw map_05_en, map_06_en, map_07_en, map_08_en, map_09_en
	
map_00_en:
	dw $3E00, $0180
	dl (serifu1_map_00_en)
	db $80
map_01_en:
	dw $3E00, $0180
	dl (serifu1_map_01_en)
	db $80
map_02_en:
	dw $3E00, $0180
	dl (serifu1_map_02_en)
	db $80
map_03_en:
	dw $3E00, $0210
	dl (serifu1_map_03_en)
	db $80
map_04_en:
	dw $3E00, $0100
	dl (serifu1_map_04_en)
	db $80
map_05_en:
	dw $3E00, $0080
	dl (serifu1_map_05_en)
	db $80
map_06_en:
	dw $3E00, $0080
	dl (serifu1_map_06_en)
	db $80
map_07_en:
	dw $3E00, $0200
	dl (serifu1_map_07_en)
	db $80
map_08_en:
	dw $3E00, $0100
	dl (serifu1_map_08_en)
	db $80
map_09_en:
	dw $3E00, $0110
	dl (serifu1_map_09_en)
	db $80
	
rewrite_taisen_make:
	PHB
	LDA #$80
	STA $2100
	LDA {gengo}
	BNE +
	JML $81ACC5
+
	LDX #$936A
	JSL $008231	//write PPU
	JSL $00826A	//init OAM
	LDA #$17
	STA $212C
	LDA #$02
	STA $210C
	JSR taisen_dma_bg12set
	JSR dma_make_suuji
	JSR taisen_dma_obj
	JSR taisen_write_bg1map
	JSR clear_taisen_bg3
	JSR display_make_text	
	JSR taisen_dma_bg2map
	LDX #$9446
	JSL $008292
	LDA {gengo}
	CMP #$02
	BEQ +
	REP #$20
	LDA #$0013
	STA $7E00B0
	LDA #$037F
	STA $7E00B2		//color
	SEP #$20
	JML $81ACE9
+
	REP #$20
	LDA #$50E5
	STA $7E00B0
	LDA #$7FB7
	STA $7E00B2		//color
	SEP #$20
	JML $81ACE9
	
dma_make_suuji:
	LDX #$F388
	LDY #$8000
	STX $06DD
	STY $06E0
	LDA #$05
	STA $06DF
	LDA #$7E
	STA $06E2
	JSL $8281F6
	PEA $4300
	PLD 
	LDA #$80
	STA $2115
	LDX #$1801
	STX $70
	LDX #$8000
	LDA #$7E
	STX $72
	STA $74
	LDX #$1000
	STX $2116
	LDX #$0C00
	STX $75
	LDA #$80
	STA $420B
	LDA {gengo}
	BEQ +
	LDX #$14A0
	STX $2116
	LDX #(blank)
	STX $72
	LDX #$0040
	STX $75
	LDA.b #(blank>>16)
	STA $74
	LDA #$80
	STA $420B
	LDX #$15A0
	STX $2116
	LDX #(blank)
	STX $72
	LDX #$0040
	STX $75
	LDA.b #(blank>>16)
	STA $74
	LDA #$80
	STA $420B
+
	RTS

display_make_text:
	PHB 
	PEA $7E7E
	PLB #2
	LDA {playermode}
	BEQ _AE79
	LDY #$021A
	LDA $3455	//score
	JSR write_make_suuji_map
	LDY #$0222
	LDA $3B2C
	JSR write_make_suuji_map
	LDX #$154A
	STX $222E
	INX 
	STX $2230
	LDX #$155A
	STX $226E
	INX 
	STX $2270
_AE79:
	LDX #$1524
	LDY #$04C2
	LDA {shouhaihantei}
	BEQ _AE87
	LDY #$04E6	//continue pos
_AE87:
	REP #$20
	LDA #$0002
	STA $0000
_AE8F:
	LDA #$000C
	STA $0002
	TXA 
_AE96:
	STA $2010,y
	INY #2
	INC
	DEC $0002
	BNE _AE96
	TXA 
	CLC 
	ADC #$0010
	TAX 
	TYA 
	CLC 
	ADC #$0028
	TAY 
	DEC $0000
	BNE _AE8F
	SEP #$20
	LDA {playermode}
	BNE _AECD
	LDA {gengo}
	CMP #$02
	BEQ +
	JSR dma_zanki_en
	BRA _AECD
+
	JSR dma_zanki_vn
_AECD:
	JSR taisen_serifu2
	PLB 
	RTS

write_make_suuji_map:
	STZ $0000
_AED5:
	SEC 
	SBC #$0A
	BCC _AEDF
	INC $0000
	BRA _AED5
_AEDF:
	CLC 
	ADC #$0A
	REP #$20
	AND #$00FF
	ORA #$1540
	STA $2012,y
	CLC 
	ADC #$0010
	STA $2052,y
	LDA $0000
	AND #$00FF
	ORA #$1540
	STA $2010,y
	CLC 
	ADC #$0010
	STA $2050,y
	SEP #$20
	RTS

taisen_serifu2:
	PHB
	PHD
	PHK
	PLB
	REP #$20
	LDA #$0000
	PHA
	PLD
	LDA $00
	PHA
	LDA $02
	PHA
	LDA #$0004
	STA $02
	LDA $04
	PHA
	LDA {shouhaihantei}
	AND #$00FF
	BNE +
	LDA {teki}
	AND #$00FF
	ASL
	TAX
	STA {save_x}
	LDA #$3E4E
	STA $04
	LDA {teki}
	BRA _4
+
	LDA #$3E40
	STA $04
	LDA {taisen_aite}
_4:
	AND #$00FF
	ASL
	TAX
	STA {save_x}
	LDA {gengo}
	AND #$00FF
	STA {save_a}
	CMP #$0002
	BEQ +
	LDA make_ptr_en,x
	BRA _3
+	
	LDA make_ptr_vn,x
_3:
	STA $00
	LDY #$0000
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
-
	LDA ($00),y
	STA {nmi_dma_vram},x
	INX #2
	INY #2
	DEC $02
	BNE -
	
	LDA #$003
	STA $02
	LDX {save_x}
	LDA {save_a}
	CMP #$0002
	BEQ +
	LDA taisen_serifu2_map_en,x
	BRA _5
+
	LDA taisen_serifu2_map_vn,x
_5:
	STA $00
	LDY #$0000
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
	LDA $04
	STA {nmi_dma_vram},x
	INX #2
-
	LDA ($00),y
	STA {nmi_dma_vram},x
	INY #2
	INX #2
	DEC $02
	BNE -
	
	PLA
	STA $04
	PLA
	STA $02
	PLA
	STA $00
	PLD
	SEP #$20
	PLB
	RTS
	
make_ptr_vn:
	dw ptr2_00_vn, ptr2_01_vn, ptr2_02_vn, ptr2_03_vn, ptr2_04_vn
	dw ptr2_05_vn, ptr2_06_vn, ptr2_07_vn, ptr2_08_vn, ptr2_09_vn

ptr2_00_vn:
	dw $2000, $0600
	dl (serifu2_00_vn)
	db $80
ptr2_01_vn:
	dw $2000, $0600
	dl (serifu2_01_vn)
	db $80
ptr2_02_vn:
	dw $2000, $0400
	dl (serifu2_02_vn)
	db $80
ptr2_03_vn:
	dw $2000, $0800
	dl (serifu2_03_vn)
	db $80
ptr2_04_vn:
	dw $2000, $0600
	dl (serifu2_04_vn)
	db $80
ptr2_05_vn:
	dw $2000, $0400
	dl (serifu2_05_vn)
	db $80
ptr2_06_vn:
	dw $2000, $0200
	dl (serifu2_06_vn)
	db $80
ptr2_07_vn:
	dw $2000, $0800
	dl (serifu2_07_vn)
	db $80
ptr2_08_vn:
	dw $2000, $0600
	dl (serifu2_08_vn)
	db $80
ptr2_09_vn:
	dw $2000, $0600
	dl (serifu2_09_vn)
	db $80
	
make_ptr_en:
	dw ptr2_00_en, ptr2_01_en, ptr2_02_en, ptr2_03_en, ptr2_04_en
	dw ptr2_05_en, ptr2_06_en, ptr2_07_en, ptr2_08_en, ptr2_09_en

ptr2_00_en:
	dw $2000, $0600
	dl (serifu2_00_en)
	db $80
ptr2_01_en:
	dw $2000, $0600
	dl (serifu2_01_en)
	db $80
ptr2_02_en:
	dw $2000, $0600
	dl (serifu2_02_en)
	db $80
ptr2_03_en:
	dw $2000, $0800
	dl (serifu2_03_en)
	db $80
ptr2_04_en:
	dw $2000, $0600
	dl (serifu2_04_en)
	db $80
ptr2_05_en:
	dw $2000, $0400
	dl (serifu2_05_en)
	db $80
ptr2_06_en:
	dw $2000, $0300
	dl (serifu2_06_en)
	db $80
ptr2_07_en:
	dw $2000, $0800
	dl (serifu2_07_en)
	db $80
ptr2_08_en:
	dw $2000, $0500
	dl (serifu2_08_en)
	db $80
ptr2_09_en:
	dw $2000, $0500
	dl (serifu2_09_en)
	db $80
	
taisen_serifu2_map_vn:
	dw map2_00_vn, map2_01_vn, map2_02_vn, map2_03_vn, map2_04_vn
	dw map2_05_vn, map2_06_vn, map2_07_vn, map2_08_vn, map2_09_vn
map2_00_vn:
	dw $0160
	dl (serifu2_map_00_vn)
	db $80
map2_01_vn:
	dw $0160
	dl (serifu2_map_01_vn)
	db $80
map2_02_vn:
	dw $0160
	dl (serifu2_map_02_vn)
	db $80
map2_03_vn:
	dw $01E0
	dl (serifu2_map_03_vn)
	db $80
map2_04_vn:
	dw $0160
	dl (serifu2_map_04_vn)
	db $80
map2_05_vn:
	dw $00E0
	dl (serifu2_map_05_vn)
	db $80
map2_06_vn:
	dw $00E0
	dl (serifu2_map_06_vn)
	db $80
map2_07_vn:
	dw $01E0
	dl (serifu2_map_07_vn)
	db $80
map2_08_vn:
	dw $0160
	dl (serifu2_map_08_vn)
	db $80
map2_09_vn:
	dw $0160
	dl (serifu2_map_09_vn)
	db $80
	
taisen_serifu2_map_en:
	dw map2_00_en, map2_01_en, map2_02_en, map2_03_en, map2_04_en
	dw map2_05_en, map2_06_en, map2_07_en, map2_08_en, map2_09_en
map2_00_en:
	dw $0160
	dl (serifu2_map_00_en)
	db $80
map2_01_en:
	dw $0160
	dl (serifu2_map_01_en)
	db $80
map2_02_en:
	dw $0160
	dl (serifu2_map_02_en)
	db $80
map2_03_en:
	dw $01F0
	dl (serifu2_map_03_en)
	db $80
map2_04_en:
	dw $0160
	dl (serifu2_map_04_en)
	db $80
map2_05_en:
	dw $00F0
	dl (serifu2_map_05_en)
	db $80
map2_06_en:
	dw $00E0
	dl (serifu2_map_06_en)
	db $80
map2_07_en:
	dw $01E0
	dl (serifu2_map_07_en)
	db $80
map2_08_en:
	dw $0160
	dl (serifu2_map_08_en)
	db $80
map2_09_en:
	dw $0160
	dl (serifu2_map_09_en)
	db $80
	
dma_zanki_vn:
	REP #$20
	LDA #$1801
	STA $004370
	LDA #(zanki_vn)
	STA $004372
	LDA #$0200
	STA $004375
	LDA #$2500
	STA $002116
	SEP #$20
	LDA.b #(zanki_vn>>16)
	STA $004374
	LDA #$80
	STA $002115
	STA $00420B
	REP #$20
	LDX #$0000
-
	LDA zanki_map_vn,x
	STA $7F8000,x
	INX #2
	CPX #$0080
	BNE -
	SEP #$20
	LDA #$00
	XBA
	LDA {zanki}
	CMP #$0A
	BCC +
	SEC
	SBC #$0A
	STA {zanki}
+
	REP #$20
	ASL
	TAX
	LDA write_zanki,x
	STA $7F800A
	INC
	STA $7F804A	
	
	LDA #$3E00
	STA $002116
	LDA #$8000
	STA $004372
	LDA #$0080
	STA $004375
	SEP #$20
	LDA #$7F
	STA $004374
	LDA #$80
	STA $002115
	STA $00420B	
	RTS
	
dma_zanki_en:
	REP #$20
	LDA #$1801
	STA $004370
	LDA #(zanki_en)
	STA $004372
	LDA #$0200
	STA $004375
	LDA #$2500
	STA $002116
	SEP #$20
	LDA.b #(zanki_en>>16)
	STA $004374
	LDA #$80
	STA $002115
	STA $00420B
	REP #$20
	LDX #$0000
-
	LDA zanki_map_en,x
	STA $7F8000,x
	INX #2
	CPX #$0080
	BNE -
	
	SEP #$20
	LDA #$00
	XBA
	LDA {zanki}
	CMP #$06
	BCC +
	SEC
	SBC #$06
	STA {zanki}
+
	REP #$20
	ASL
	TAX
	LDA write_zanki,x
	STA $7F8018
	INC
	STA $7F8058	
	
	LDA #$3E00
	STA $002116
	LDA #$8000
	STA $004372
	LDA #$0080
	STA $004375
	SEP #$20
	LDA #$7F
	STA $004374
	LDA #$80
	STA $002115
	STA $00420B
	RTS
	
write_zanki:
	dw $30A0, $30A0, $30A2, $30A4, $30A6
	dw $30A8, $30AA, $30AC, $30AE, $30AE
	
clear_himitsu_set:
	PHD
	PHP
	REP #$30
	LDA #$4300
	PHA
	PLD
	LDA #(blank)
	STA $72
	LDA #$2000
	STA $75
	LDA #$2000
	STA $2116
	LDA #$1801
	STA $70
	SEP #$20
	LDA.b #(blank>>16)
	STA $74
	LDA #$80
	STA $2115
	STA $420B	
	PLP
	PLD
	RTS
	
power:
	JSR tama_age
	JSR katagae
	JSL $828B93
	JML $828036
	
tama_age:
	LDA $7E0023
	CMP #$60
	BNE +
	LDA $7E3449
	CMP #$03
	BCS +
	INC
	STA $7E3449
	JSL $82AC73
+
	RTS
	
katagae:
	PHP
	REP #$20
	LDA $7E0020
	CMP #$2040 //sel,x
	BNE +
	SEP #$20
	LDA #$01
	STA $7E2F9B
	BRA end_katakae
+
	SEP #$20
	LDA $7E0021
	CMP #$A0	//sel,b
	BNE +
	LDA #$05
	STA $7E2F9B
	BRA end_katakae
+
	LDA $7E0020
	CMP #$40
	BNE +
	LDA #$02
	STA $7E2F9B
	BRA end_katakae
+
	LDA $7E0021
	CMP #$40
	BNE +
	LDA #$03
	STA $7E2F9B
	BRA end_katakae
+
	CMP #$80
	BNE +
	LDA #$04
	STA $7E2F9B	
	BRA end_katakae
end_katakae:
	PLP
	RTS
+
	LDA $7E0021
	CMP #$08 //ue
	BNE +
	LDA #$06
	STA $7E2F9B
	BRA end_katakae
+
	CMP #$24
	BNE +
	LDX #$0000
	REP #$20
-
	LDA hissatsu,x
	STA $7E2E40,x
	INX #2
	CPX #$0048
	BNE -
	SEP #$20
	JMP end_katakae
+
	CMP #$22
	BNE +
	LDX #$0000
	REP #$20
-
	LDA mahouken,x
	STA $7E2E30,x
	INX #2
	CPX #$0058
	BNE -	
	SEP #$20
	JMP end_katakae
+
	CMP #$21
	BNE +
	LDX #$0000
	REP #$20
-
	LDA kemono,x
	STA $7E2E30,x
	INX #2
	CPX #$0058
	BNE -	
	SEP #$20
	JMP end_katakae	
+
	CMP #$28
	BNE +
	REP #$20
	LDX #$0000
-
	LDA mahoujin,x
	STA $7E2E30,x
	INX #2
	CPX #$0058
	BNE -	
	SEP #$20
+
	JMP end_katakae		
	

define oam_table			$1000
define cursor_xpos		$10
define cursor_ypos		$14
define current_input	 $30
define previous_input 	$32
define togire_input 		$34
define press_time			$36
define press_time_default1	$38
define press_time_default2	$3A
define current_ypos		$45
define default_ypos		$46
define buffer1					$60
define  maxline				$62
	
display_near:
	PHB
	PHP
	PHD
	SEP #$20
	REP #$10
	LDA #$00
	PHA
	PLB
	STZ $2121
-
	LDA blank,x
	STA $2122
	INX
	CPX #$0040
	BNE -	
	REP #$20
	LDA #$0000
	TAX
-
	STA $7E0200,x
	INX #2
	CPX #$8000
	BNE -
	SEP #$20
	LDA #$01
	STA $420D
	LDA #$80
	STA $2100
	LDA #$09
	STA $2105
	STZ $210C
	LDA #$10
	STA $2109
	LDA #$60
	STA $2107
	STA $2108
	LDA #$66
	STA $210B
	LDA #$04
	STA $212C
	
	LDX #$1801
	STX $4370
	LDX #(blank)
	STX $4372
	LDX #$FFFE
	STX $4375
	LDX #$0000
	STX $2116
	LDA.b #(blank>>16)
	STA $4374
	LDA #$80
	STA $2115
	STA $420B
	
	LDX #$1000
	STX $2116
	LDA #$80
	STA $420B
	
	LDA.b #(near_set>>16)
	STA $4374
	LDX #(near_set)
	STX $4372
	LDX #$0000
	STX $2116
	LDX #$0C00
	STX $4375
	LDA #$80
	STA $420B
	
	LDA.b #(near_map>>16)
	STA $4374
	LDX #(near_map)
	STX $4372
	LDX #$1000
	STX $2116
	LDX #$0800
	STX $4375
	LDA #$80
	STA $420B	
	
	LDX #$0000
	STZ $2121
-
	LDA near_pal,x
	STA $2122
	INX
	CPX #$0004
	BNE -	
	
	STZ $00
	STZ $01
	LDA #$05
	STA $02
	STA $03
in_near:
	JSR fadein
	CMP #$0F
	BCC in_near	
keep_near:
	JSR quit_vblank
	JSR wait_vblank
	INC $01
	LDA $01
	CMP #$80
	BNE keep_near
	LDA $03
	STA $02
quit_near:
	JSR fadeout
	CMP #$00
	BNE quit_near
	LDA #$80
	STA $2100
	
	LDX #$1801
	STX $4370
	LDX #$0400
	STX $4375
	LDA.b #(gengo_set)
	STA $4372
	LDX #$0000
	STX $2116
	LDX #(gengo_set)
	STX $4372
	LDA #$80
	STA $420B
	JSR init_nearmap
	LDA.b #(gengo_map>>16)
	STA $4374
	LDX #(gengo_map)
	STX $4372
	LDX #$1128
	STX $2116
	LDX #$0150
	STX $4375
	LDA #$80
	STA $420B
	
	STZ $2121
	LDX #$0000
-
	LDA gengo_pal,x
	STA $2122
	INX
	CPX #$0018
	BNE -
	
	LDA #$80
	STA $2121
	LDX #$0000
-
	LDA cursor_pal,x
	STA $2122
	INX
	CPX #$000A
	BNE -
	STZ $2102
	STZ $2103
	LDA #$02
	STA $2101
	
	LDX #$4000
	STX $2116
	LDX #(cursor)
	STX $4372
	LDX #$0100
	STX $4375
	LDA.b #(cursor>>16)
	STA $4374
	LDA #$80
	STA $420B
	STZ {current_ypos}
	LDA #$14
	STA $212C	
	JSR init_oam_table
	JSR dma_oam_table
	LDA #$28
	STA {cursor_xpos}
	STA {cursor_xpos}+1
	LDA {cursor_xpos}
	SEC
	SBC #$02
	STA {cursor_xpos}+2
	LDA {cursor_xpos}
	CLC
	ADC #$02
	STA {cursor_xpos}+3
	LDA #$4A
	STA {cursor_ypos}
	STA {default_ypos}
	STA {cursor_ypos}+1
	CLC
	ADC #$10
	STA {cursor_ypos}+2
	CLC
	ADC #$10
	STA {cursor_ypos}+3
	JSR init_oam_table
	JSR update_cursor_pos
	JSR dma_oam_table
	STZ $20
	STZ $21
	STZ $00
	LDA #$08
	STA $02
	STA $03
	LDX #$0008
	STX {press_time_default1}
	LDX #$0004
	STX {press_time_default2}
	LDA #$01
	STA $4200
	LDA #$02
	STA {maxline}
-
	JSR fadein
	CMP #$0F
	BNE -
	STZ $40
gengo_sentaku:
	JSR quit_vblank
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR check_cursor_ypos
	JSR update_cursor_pos
	JSR wait_vblank
	JSR dma_oam_table
	JSR check_pad
	JSR check_press
	LDA $40
	CMP #$FF
	BNE gengo_sentaku
haji_umu:
	STZ $40
	LDA #$02
	STA $02
	STA $03
-
	JSR fadeout
	BNE -
	LDA #$80
	STA $2100
	JSR init_nearmap
	REP #$20
	LDA #$0000
	STA $2116
	LDA #$10A0
	STA {buffer1}
	LDA #$1801
	STA $4370
	LDA {gengo}
	ASL
	TAX
	JSR (write_haji,x)
	SEP #$20
	LDA {cursor_xpos}+1
	STA {cursor_xpos}
	LDA {cursor_ypos}+1
	STA {cursor_ypos}
	LDA #$03
	STA $02
	STA $03
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR update_cursor_pos
	JSR dma_oam_table
-
	JSR fadein
	CMP #$0F
	BNE -
	LDA #$08
	STA $02
	STA $03	
	LDA #$0F
	STA $2100
	LDA #$01
	STA {maxline}
haji_sentaku:
	JSR quit_vblank
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR check_cursor_ypos
	JSR update_cursor_pos
	JSR wait_vblank
	JSR dma_oam_table
	JSR check_pad
	JSR check_press_haji
	LDA $40
	CMP #$FF
	BNE haji_sentaku
	LDA #$80
	STA $2100
	REP #$20
	LDA {gengo}
	AND #$00FF
	ASL
	TAX
	JMP (gengo_bunki,x)
gengo_bunki:
	dw bunki_jp
	dw bunki_en
	dw bunki_vn
	
bunki_jp:
	PLD
	PLP
	PLB
	RTL
bunki_en:
	SEP #$20
	LDA #$80
	STA $2100
	STZ $40
	LDA {cursor_ypos}+1
	STA {cursor_ypos}
	LDA.b #(artist_set_en>>16)
	STA $4374
	LDX #$1801
	STX $4370
	LDX #(artist_set_en)
	STX $4372
	LDX #$0800
	STX $4375
	LDX #$0000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	
	LDA.b #(artist_map_en>>16)
	STA $4374
	LDX #$1801
	STX $4370
	LDX #(artist_map_en)
	STX $4372
	LDX #$01E0
	STX $4375
	LDX #$10A0
	STX $2116
	LDA #$80
	STA $420B
	LDA #$0F
	STA $2100
-
	JSR quit_vblank
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR check_cursor_ypos
	JSR update_cursor_pos
	JSR wait_vblank
	JSR dma_oam_table
	JSR check_pad	
	JSR check_title_en
	LDA $40
	CMP #$FF
	BNE -
	PLD
	PLP
	PLB
	RTL
	
bunki_vn:
	SEP #$20
	LDA #$80
	STA $2100
	STZ $40
	LDA {cursor_ypos}+1
	STA {cursor_ypos}
	LDA.b #(type_set_vn>>16)
	STA $4374
	LDX #$1801
	STX $4370
	LDX #(type_set_vn)
	STX $4372
	LDX #$0A00
	STX $4375
	LDX #$0000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	
	LDA.b #(type_map_vn>>16)
	STA $4374
	LDX #$1801
	STX $4370
	LDX #(type_map_vn)
	STX $4372
	LDX #$0260
	STX $4375
	LDX #$10A0
	STX $2116
	LDA #$80
	STA $2115
	STA $420B

	LDA #$02
	STA {maxline}
	LDA #$0F
	STA $2100
-
	JSR quit_vblank
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR check_cursor_ypos
	JSR update_cursor_pos
	JSR wait_vblank
	JSR dma_oam_table
	JSR check_pad	
	JSR check_press_vn
	LDA $40
	CMP #$FF
	BNE -
	LDA {cursor_ypos}+1
	STA {cursor_ypos}
	REP #$20
	LDA $41
	AND #$00FF
	ASL
	TAX
	SEP #$20
	JMP (run_type,x)
	
	PLD
	PLP
	PLB
	RTL

near_pal:
	dw $0000, $0F8C
gengo_pal:
	dw $0000, $50E5, $7FB7, $7FFF
	dw $0000, $0013, $037F, $7FFF
	dw $0000, $0600, $7FFF, $7FFF
cursor_pal:
	dw $0000, $1463, $239D, $22BC, $0931
	
run_type:
	dw type_retro
	dw type_true
	dw type_creative
	
type_retro:
	LDA #$80
	STA $2100
	STZ $40
	JSR init_nearmap
	LDX #$1801
	STX $4370
	LDA.b #(artist_set_vn>>16)
	STA $4374
	LDX #(artist_set_vn)
	STX $4372
	LDX #$0600
	STX $4375
	LDX #$0000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	LDX #$1801
	STX $4370	
	LDA.b #(artist_map1_vn>>16)
	STA $4374
	LDX #(artist_map1_vn)
	STX $4372
	LDX #$0260
	STX $4375
	LDX #$10A0
	STX $2116
	LDA #$80
	STA $2115
	STA $420B	
	LDA #$0F
	STA $2100
	LDA #$02
	STA {maxline}
	LDA #$08
	STA $02
	STA $03
-
	JSR quit_vblank
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR check_cursor_ypos
	JSR update_cursor_pos
	JSR wait_vblank
	JSR dma_oam_table
	JSR check_pad	
	JSR check_press_retro
	LDA $40
	CMP #$FF
	BNE -
-
	JSR fadeout
	BNE -
	LDA #$80
	STA $2110
	PLD
	PLP
	PLB
	RTL	
	

type_true:
	LDA #$03
	STA {title}
	STA $03
	STA $02
-
	JSR fadeout
	BNE -
	LDA #$80
	STA $2100
	PLD
	PLP
	PLB
	RTL

type_creative:
	LDA #$80
	STA $2100
	STZ $40
	JSR init_nearmap
	LDX #$1801
	STX $4370
	LDA.b #(artist_set_vn>>16)
	STA $4374
	LDX #(artist_set_vn)
	STX $4372
	LDX #$0600
	STX $4375
	LDX #$0000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	LDX #$1801
	STX $4370	
	LDA.b #(artist_map2_vn>>16)
	STA $4374
	LDX #(artist_map2_vn)
	STX $4372
	LDX #$01E0
	STX $4375
	LDX #$10A0
	STX $2116
	LDA #$80
	STA $2115
	STA $420B	
	LDA #$0F
	STA $2100
	LDA #$01
	STA {maxline}
	LDA #$08
	STA $02
	STA $03
-
	JSR quit_vblank
	JSR init_oam_table
	JSR check_cursor_xpos
	JSR check_cursor_ypos
	JSR update_cursor_pos
	JSR wait_vblank
	JSR dma_oam_table
	JSR check_pad	
	JSR check_press_creative
	LDA $40
	CMP #$FF
	BNE -
	LDA #$03
	STA $02
	STA $03
-
	JSR fadeout
	BNE -
	LDA #$80
	STA $2110
	PLD
	PLP
	PLB
	RTL
	
quit_vblank:
	LDA $4212
	BIT #$80
	BNE quit_vblank
	RTS
wait_vblank:
	LDA $4212
	BIT #$80
	BEQ wait_vblank
	RTS
	
fadein:
	JSR quit_vblank
	JSR wait_vblank
	DEC $02
	BNE fadein
	LDA $03
	STA $02
	LDA $00
	STA $2100
	INC
	STA $00
	RTS
	
fadeout:
	JSR quit_vblank
	JSR wait_vblank
	DEC $02
	BNE fadeout
	LDA $03
	STA $02
	LDA $00
	STA $2100
	DEC
	STA $00
	RTS
	
cursor_pos:
	dw $0000, $2000
	dw $0800, $2001
	dw $0008, $2002
	dw $0808, $2003
	
init_oam_table:
	REP #$20
	LDX #$0000
	LDA #$F000
-
	STA {oam_table},x
	INX #2
	CPX #$0200
	BNE -	
	SEP #$20
	LDA #$55
-
	STA {oam_table},x
	INX
	CPX #$0220
	BNE -
	LDA #$00
	STA {oam_table}+0x200
	
	RTS
	
dma_oam_table:
	JSR wait_vblank
	STZ $2102
	STZ $2103
	LDX #$0400
	STX $4370
	LDX #({oam_table})
	STX $4372
	LDA #$7E
	STA $7374
	LDX #$0220
	STX $4375
	LDA #$80
	STA $420B
	RTS
	
update_cursor_pos:
	LDX #$0000
-
	LDA cursor_pos,x
	CLC
	ADC {cursor_xpos}
	STA {oam_table},x
	LDA cursor_pos+1,x
	CLC
	ADC {cursor_ypos}
	STA {oam_table}+1,x
	LDA cursor_pos+2,x
	STA {oam_table}+2,x
	LDA cursor_pos+3,x
	STA {oam_table}+3,x
	INX #4
	CPX #$0010
	BNE -
	RTS
	
check_cursor_xpos:
	PHP
	LDX $20
	LDA $02
	DEC
	STA $02
	BNE end_check
	LDA $03
	STA $02
	SEP #$10	
	CPX #$04
	BCC +
	LDX #$00
+
	PHX
	LDA cursor_xmove,x
	TAX
	LDA {cursor_xpos},x
	STA {cursor_xpos}	
	PLX
	INX
	STX $20
end_check:
	PLP
	RTS
	
cursor_xmove:
	db $01, $02, $01, $03
cursor_ymove:
	db $01, $02, $03
	
check_pad:
	PHP
-
	LDA $4212
	AND #$01
	BNE -
	REP #$20
	LDA $4218
	STA {current_input}
	AND #$000F
	BEQ +
	LDA {previous_input}
	STA {current_input}
+
	LDA {current_input}
	EOR {previous_input}
	AND {current_input}
	STA {togire_input}
	LDA {current_input}
	BEQ +
	CMP {previous_input}
	BNE +
	DEC {press_time}
	BNE end_pad
	LDA {press_time_default2}
	STA {press_time}
	BRA end_pad
+
	LDA {press_time_default1}
	STA {press_time}
end_pad:
	LDA {current_input}	
	STA {previous_input}
	PLP
	RTS
	
check_cursor_ypos:
	PHP
	REP #$20
	SEP #$10
	LDA {togire_input}
	CMP #$0400
	BNE +
	JSR write_cursor_down
	BRA end_cursor_ypos
+	
	CMP #$0800
	BNE +
	JSR write_cursor_up
+
end_cursor_ypos:
	PLP
	RTS
	

write_cursor_down:
	PHP
	SEP #$20
	LDA {current_ypos}
	CMP {maxline}
	BCS +
	INC
	STA {current_ypos}
	ASL #4
	PHA
	LDA {default_ypos}
	CLC
	ADC $01,s
	STA {cursor_ypos}
	PLA	
	PLP
	RTS
+
	LDA {default_ypos}
	STA {cursor_ypos}
	STZ {current_ypos}
	PLP
	RTS
	
write_cursor_up:
	PHP
	SEP #$20
	LDA {current_ypos}
	BEQ +
	DEC
	STA {current_ypos}
	ASL #4
	PHA
	LDA {default_ypos}
	CLC
	ADC $01,s
	STA {cursor_ypos}
	PLA	
	PLP
	RTS
+
	LDA {maxline}
	STA {current_ypos}
	ASL #4
	PHA
	LDA {default_ypos}
	CLC
	ADC $01,s
	STA {cursor_ypos}
	PLA
	PLP
	RTS

check_press:
	PHP
	REP #$20
	LDA {togire_input}
	CMP #$0080
	BNE +
	JSR write_gengo
	BRA end_press
+
	CMP #$1000
	BNE end_press
	JSR write_gengo
end_press:
	PLP
	RTS
	
write_gengo:
	PHP
	SEP #$20
	LDA {cursor_ypos}
	CMP {cursor_ypos}+1
	BNE +
	LDA #$02
	STA {gengo}
	LDA #$FF
	STA $40
	BRA end_gengo
+
	CMP {cursor_ypos}+2
	BNE +
	LDA #$00
	STA {gengo}
	LDA #$FF
	STA $40
	BRA end_gengo
+
	LDA #$01
	STA {gengo}
	LDA #$FF
	STA $40
end_gengo:
	PLP
	RTS
	
write_haji:
	dw haji_jp
	dw haji_en
	dw haji_vn
	
haji_jp:
	SEP #$20
	LDA.b #(haji_set_jp>>16)
	STA $4374
	LDX #(haji_set_jp)
	STX $4372
	LDX #$0600
	STX $4375
	LDA #$80
	STA $2115
	STA $420B
	
	LDX {buffer1}
	STX $2116
	LDX #$01E0
	STX $4375
	LDX #(haji_map_jp)
	STX $4372
	LDA.b #(haji_map_jp>>16)
	STA $4374
	LDA #$80
	STA $420B
	RTS
	
haji_vn:
	SEP #$20
	LDA.b #(haji_set_vn>>16)
	STA $4374
	LDX #(haji_set_vn)
	STX $4372
	LDX #$0600
	STX $4375
	LDA #$80
	STA $2115
	STA $420B
	
	LDX {buffer1}
	STX $2116
	LDX #$01E0
	STX $4375
	LDX #(haji_map_vn)
	STX $4372
	LDA.b #(haji_map_vn>>16)
	STA $4374
	LDA #$80
	STA $420B
	RTS
haji_en:
	SEP #$20
	LDA.b #(haji_set_en>>16)
	STA $4374
	LDX #(haji_set_en)
	STX $4372
	LDX #$0600
	STX $4375
	LDA #$80
	STA $2115
	STA $420B
	
	LDX {buffer1}
	STX $2116
	LDX #$01E0
	STX $4375
	LDX #(haji_map_en)
	STX $4372
	LDA.b #(haji_map_en>>16)
	STA $4374
	LDA #$80
	STA $420B
	RTS
	
init_nearmap:
	REP #$20
	LDA #$00FF
	LDX #$07FE
-
	STA $7E2000,x
	DEX #2
	BPL -
	SEP #$20
	LDX #$1801
	STX $4370
	LDX #$2000
	STX $4372
	LDX #$0800
	STX $4375
	LDA #$7E
	STA $4374
	LDX #$1000
	STX $2116
	LDA #$80
	STA $2115
	STA $420B
	RTS
	
check_press_haji:
	PHP
	REP #$20
	LDA {togire_input}
	CMP #$0080
	BNE +
	JSR write_haji_press
	BRA end_press_haji
+
	CMP #$1000
	BNE end_press_haji
	JSR write_haji_press
end_press_haji:
	PLP
	RTS
	
check_press_vn:
	PHP
	REP #$20
	LDA {togire_input}
	CMP #$0080
	BNE +
	JSR write_title_vn
	BRA end_press_haji
+
	CMP #$1000
	BNE end_press_vn
	JSR write_title_vn
end_press_vn:
	PLP
	RTS
	
check_press_retro:
	PHP
	REP #$20
	LDA {togire_input}
	CMP #$0080
	BNE +
	JSR write_title_retro
	BRA end_press_retro
+
	CMP #$1000
	BNE end_press_vn
	JSR write_title_retro
end_press_retro:
	PLP
	RTS
	
check_press_creative:
	PHP
	REP #$20
	LDA {togire_input}
	CMP #$0080
	BNE +
	JSR write_title_creative
	BRA end_press_creative
+
	CMP #$1000
	BNE end_press_vn
	JSR write_title_creative
end_press_creative:
	PLP
	RTS
	
check_title_en:
	PHP
	REP #$20
	LDA {togire_input}
	CMP #$0080
	BNE +
	JSR write_title_en
	BRA end_press_haji
+
	CMP #$1000
	BNE end_press_haji
	JSR write_title_en
end_press_haji:
	PLP
	RTS
	
write_haji_press:
	SEP #$20
	LDA {cursor_ypos}
	CMP {cursor_ypos}+1
	BNE +
	LDA #$00
	STA {haji}
	BRA end_haji
+
	LDA #$01
	STA {haji}
end_haji:
	LDA #$FF
	STA $40
	RTS
	
write_title_en:
	SEP #$20
	LDA {cursor_ypos}
	CMP {cursor_ypos}+1
	BNE +
	LDA #$01
	STA {title}
	BRA end_title_en
+
	LDA #$02
	STA {title}
end_title_en:
	LDA #$FF
	STA $40
	RTS
	
write_title_vn:
	SEP #$20
	LDA {cursor_ypos}
	CMP {cursor_ypos}+1
	BNE +
	LDA #$00
	STA $41
	BRA end_title_vn
+
	CMP {cursor_ypos}+2
	BNE +
	LDA #$01
	STA $41
	BRA end_title_vn
+
	LDA #$02
	STA $41
end_title_vn:
	LDA #$FF
	STA $40
	RTS
	
write_title_retro:
	SEP #$20
	LDA {cursor_ypos}
	CMP {cursor_ypos}+1
	BNE +
	LDA #$04
	STA {title}
	BRA end_title_retro
+
	CMP {cursor_ypos}+2
	BNE +
	LDA #$05
	STA {title}
	BRA end_title_retro
+
	LDA #$06
	STA {title}
end_title_retro:
	LDA #$FF
	STA $40
	RTS
	
write_title_creative:
	SEP #$20
	LDA {cursor_ypos}
	CMP {cursor_ypos}+1
	BNE +
	LDA #$07
	STA {title}
	BRA end_title_creative
+
	LDA #$08
	STA {title}
end_title_creative:
	LDA #$FF
	STA $40
	RTS
	
rewrite_haji:
	JSL $82B3D7
	LDA {haji}
	BNE +
	JSR write_pause
	JML $81D64A
+
	JSR write_pause
	REP #$20
	LDA {gengo}
	AND #$00FF
	ASL
	TAX
	JSR (run_bujoku,x)
	SEP #$20
	JSR enable_block
	JML $81D654
	
run_bujoku:
	dw bujoku_jp
	dw bujoku_en
	dw bujoku_vn
	
bujoku_jp:
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
	LDA #$3010
	STA {nmi_dma_vram},x
	LDA #(bujoku_set_jp)
	STA {nmi_dma_adr},x
	LDA #$0200
	STA {nmi_dma_size},x
	SEP #$20
	LDA.b #(bujoku_set_jp>>16)
	STA {nmi_dma_bank},x
	LDA #$80
	STA {nmi_dma_dir},x
	REP #$20
	LDX #$0000
-
	LDA bujoku_map_jp,x
	STA $7F4492,x
	INX #2
	CPX #$0060
	BNE -	
	RTS
	
bujoku_en:
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
	LDA #$3010
	STA {nmi_dma_vram},x
	LDA #(bujoku_set_en)
	STA {nmi_dma_adr},x
	LDA #$0200
	STA {nmi_dma_size},x
	SEP #$20
	LDA.b #(bujoku_set_en>>16)
	STA {nmi_dma_bank},x
	LDA #$80
	STA {nmi_dma_dir},x
	REP #$20
	LDX #$0000
-
	LDA bujoku_map_en,x
	STA $7F4492,x
	INX #2
	CPX #$0060
	BNE -	
	RTS

bujoku_vn:
	LDA {nmi_dma_jun}
	INC
	STA {nmi_dma_jun}
	ASL #3
	TAX
	LDA #$3010
	STA {nmi_dma_vram},x
	LDA #(bujoku_set_vn)
	STA {nmi_dma_adr},x
	LDA #$0200
	STA {nmi_dma_size},x
	SEP #$20
	LDA.b #(bujoku_set_vn>>16)
	STA {nmi_dma_bank},x
	LDA #$80
	STA {nmi_dma_dir},x
	REP #$20
	LDX #$0000
-
	LDA bujoku_map_vn,x
	STA $7F4552,x
	INX #2
	CPX #$0060
	BNE -	
	RTS

write_pause:
	PHB
	PEA $7F7F
	PLB #2
	REP #$20
	LDX #$4100
	LDY #$4101
	STZ $4100
	LDA #$07FE
	MVN $7F,$7F
	LDX #$02D8
	LDA #$2422
	LDY #$0008
-
	STA $4100,x
	CLC
	ADC #$0010
	STA $4140,x
	SEC
	SBC #$000F
	INX #2
	DEY
	BNE -
	PEA $0000
	PLB #2
	LDA #$0800
	LDX #$3C00
	LDY #$4100
	STA $0066
	STX $0068
	STY $006A
	LDA #$007F
	STA $006C
	SEP #$20
	LDA #$01
	STA $0042
	PLB
	RTS
	
enable_block:
	PHB
	REP #$20
	LDX #$2E10
	LDY #$4000
	LDA #$007F
	MVN $7E, $7F
	
	LDX #$34E7
	LDY #$4080
	LDA #$007F
	MVN $7E, $7F
	SEP #$20
	PLB
	RTS
	
hissatsu:
	dw $0202, $0202, $0202, $FFFF
	dw $0404, $0404, $0404, $FFFF
	dw $0303, $0303, $0303, $FFFF
	dw $0303, $0303, $0303, $FFFF
	dw $0404, $0404, $0404, $FFFF
	dw $0404, $0404, $0404, $FFFF
	dw $0202, $0202, $0202, $FFFF
	dw $0202, $0202, $0202, $FFFF
	dw $0303, $0303, $0303, $FFFF
	dw $0202, $0202, $0202, $FFFF
	dw $0202, $0202, $0202, $FFFF
	
mahouken:
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0003, $0104, $0005, $FFFF
	dw $0003, $0403, $0301, $FFFF
	dw $0402, $0504, $0303, $FFFF
	dw $0304, $0105, $0204, $FFFF
	dw $0303, $0302, $0401, $FFFF
	dw $0202, $0203, $0302, $FFFF
	
kemono:
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0003, $0102, $0005, $FFFF
	dw $0003, $0203, $0301, $FFFF
	dw $0204, $0502, $0303, $FFFF
	dw $0302, $0105, $0402, $FFFF
	dw $0303, $0304, $0201, $FFFF
	dw $0404, $0403, $0304, $FFFF
	
mahoujin:
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0000, $0000, $0000, $FFFF
	dw $0002, $0104, $0005, $FFFF
	dw $0002, $0402, $0201, $FFFF
	dw $0403, $0504, $0202, $FFFF
	dw $0204, $0105, $0304, $FFFF
	dw $0202, $0203, $0401, $FFFF
	dw $0303, $0302, $0203, $FFFF