arch snes.cpu
lorom

org $FFD7
	db $0B
	
org $208000
	fill $100000

define	col_ptr	$70
define font_ptr	$80
define width_ptr	$83
define gengo		$7FFF00
define style			$7FFF01
define artist			$7FFF02
define title			$7FFF03
define haji			$7FFF04

define score			$3455
define	tama		$3449

define shift				$04B0
define right_byte	$04B2
define left_byte		$04B4
define save_a			$04B6
define save_x			$04B8
define tile_jun			$04BA
define buffer1			$04BC
define buffer2			$04BE
define dma_vram	$04C0
define dma_size		$04C2
define dma_adr		$04C4
define dma_bank	$04C6
define dma_trigger $04C8
define cutscene_trigger $04C9
define starting_vram $04CA
define map_counter $04CC
define line					$04CE
define line_kage			$04D0
define 24ptr1				$05F0
define 24ptr2				$05F3
define width				$05F6

define text_pos		$0802
define map_pos		$0804

define set_buffer $0500
define	playermode	$06D9
define	stage		$06DA
define shouhaihantei	$0788
define level			$078A
define 1pspecial		$078B
define 2pspecial		$078C
define 1phandicap	$078D
define 2phandicap	$078E
define biganime		$078F
define smallanime		$0790
define	bgm		$0791
define	sfx			$0792
define	zanki		$07B7
define	teki			$7E3B29
define	taisen_aite	$7E3452

define	nmi_dma_jun		$07C0
define	nmi_dma_vram	$07C2
define	nmi_dma_size		$07C4
define	nmi_dma_adr		$07C6
define	nmi_dma_bank	$07C8
define	nmi_dma_dir		$07C9

	incsrc "ganseki_opening.asm"
	incsrc "ganseki_incbin.asm"
	incsrc "ganseki_code.asm"
	incsrc "ganseki_vector.asm"
	incsrc "ganseki_muteki.asm"
	
