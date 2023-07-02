NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
CAJA        equ      03
OBJETIVO    equ      04
SUELO       equ      05
SOBREPUESTO equ      06
.MODEL SMALL
.RADIX 16
.STACK
.DATA
dim_sprite_jug      db   08, 08
data_sprite_jug     db   48, 48, 00, 00, 00, 00, 2d, 2d
                    db   48, 00, 0f, 28, 28, 0f, 00, 2d
                    db   00, 28, 0f, 0f, 0f, 0f, 28, 00
                    db   00, 28, 0f, 28, 28, 0f, 28, 00
                    db   00, 0f, 00, 00, 00, 00, 0f, 00
                    db   48, 00, 41, 41, 41, 41, 00, 2d
                    db   2d, 00, 41, 41, 41, 41, 00, 48
                    db   2d, 2d, 00, 00, 00, 00, 48, 48
dim_sprite_flcha    db   08, 08
data_sprite_flcha   db   00, 00, 00, 00, 32, 00, 00, 00
                    db   00, 00, 00, 00, 02, 32, 00, 00
                    db   32, 32, 32, 32, 02, 02, 32, 00
                    db   02, 02, 02, 02, 02, 02, 02, 32
                    db   02, 02, 02, 02, 02, 02, 02, 78
                    db   78, 78, 78, 78, 02, 02, 78, 00
                    db   00, 00, 00, 00, 02, 78, 00, 00
                    db   00, 00, 00, 00, 78, 00, 00, 00
dim_sprite_vacio    db   08, 08
data_sprite_vacio   db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
                    db   00, 00, 00, 00, 00, 00, 00, 00
dim_sprite_suelo    db   08, 08
data_sprite_suelo   db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
                    db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
dim_sprite_pared    db   08, 08
data_sprite_pared   db   29, 29, 2a, 2a, 2a, 2a, 29, 29
                    db   29, 2a, 2a, 2b, 2b, 2a, 2a, 29
                    db   2a, 2a, 2b, 2b, 2b, 2b, 2a, 2a
                    db   2a, 2b, 2b, 2c, 2c, 2b, 2b, 2a
                    db   2a, 2b, 2b, 2c, 2c, 2b, 2b, 2a
                    db   2a, 2a, 2b, 2b, 2b, 2b, 2a, 2a
                    db   29, 2a, 2a, 2b, 2b, 2a, 2a, 29
                    db   29, 29, 2a, 2a, 2a, 2a, 29, 29
dim_sprite_caja     db   08, 08
data_sprite_caja    db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   48, 48, 6a, 6a, 6a, 6a, 2d, 2d
                    db   2d, 6a, 22, 22, 22, 22, 6a, 48
                    db   2d, 6a, 22, 23, 23, 22, 6a, 48
                    db   48, 6a, 22, 23, 23, 22, 6a, 2d
                    db   48, 6a, 22, 22, 22, 22, 6a, 2d
                    db   2d, 2d, 6a, 6a, 6a, 6a, 48, 48
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
dim_sprite_sobre    db   08, 08
data_sprite_sobre   db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   48, 48, 37, 37, 37, 37, 2d, 2d
                    db   2d, 37, 36, 36, 36, 36, 37, 48
                    db   2d, 37, 36, 35, 35, 36, 37, 48
                    db   48, 37, 36, 35, 35, 36, 37, 2d
                    db   48, 37, 36, 36, 36, 36, 37, 2d
                    db   2d, 2d, 37, 37, 37, 37, 48, 48
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
dim_sprite_obj      db   08, 08
data_sprite_obj     db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   48, 48, 2d, 2d, 48, 48, 2d, 2d
                    db   2d, 2d, 48, 27, 27, 2d, 48, 48
                    db   2d, 2d, 27, 27, 27, 27, 48, 48
                    db   48, 48, 27, 27, 27, 27, 2d, 2d
                    db   48, 48, 2d, 27, 27, 48, 2d, 2d
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
                    db   2d, 2d, 48, 48, 2d, 2d, 48, 48
mapa                db   398 dup (0)
iniciar_juego       db   "INICIAR JUEGO$"
cargar_nivel        db   "CARGAR NIVEL$"
configuracion       db   "CONFIGURACION$"
puntajes            db   "PUNTAJES ALTOS$"
salir               db   "SALIR$"
iniciales           db   "DHBTP - 201908355$"
continuar_partida   db   "CONTINUAR PARTIDA$"
controles_actuales  db   "CONTROLES$"
ctrl_arriba         db   "ARRIBA:    $"
ctrl_abajo          db   "ABAJO:     $"
ctrl_izq            db   "IZQUIERDA: $"
ctrl_der            db   "DERECHA:   $"
cambiar_controles   db   "CAMBIAR CONTROLES$"
salir_al_menu       db   "SALIR AL MENU$"
char_arriba         db   "FLECHA ABAJO      ", "$"
char_abajo          db   "FLECHA ARRIBA     ", "$"
char_izq            db   "FLECHA IZQUIERDA  ", "$"
char_der            db   "FLECHA DERECHA    ", "$"
;; JUEGO
xJugador            db   0
yJugador            db   0
puntos              dw   0
;; MENÚS
opcion              db   0
maximo              db   0
xFlecha             dw   0
yFlecha             dw   0
;; CONTROLES
control_arriba      db   48
control_abajo       db   50
control_izquierda   db   4b
control_derecha     db   4d
;; NIVELES
nivel_x             db   20 dup (0), 00
nivel1              db   "NIV.00", 00
nivel2              db   "NIV.01", 00
nivel3              db   "NIV.10", 00
handle_nivel        dw   0000
linea               db   100 dup (0)
elemento_actual     db   0
xElemento           db   0
yElemento           db   0
numeroNivel         db   01
cant_objetivos      db   00
cant_sobrepuestos   db   00
cant_sobre_aux      db   00
;; TOKENS
TK_pared            db   05,"pared"
TK_suelo            db   05,"suelo"
TK_jugador          db   07,"jugador"
TK_caja             db   04,"caja"
TK_objetivo         db   08,"objetivo"
TK_coma             db   01,","
;;
numero              db   5 dup (30)
;; LOCALIZADORES
hay_objetivo_sig    db   00
hay_objetivo_act    db   00
hay_caja            db   00
;; BUFFER
buffer_entrada      db   21, 00
                    db   21 dup (0)
;; CARGA DE NIVEL
nombre_archivo_nvl  db   "NOMBRE DEL ARCHIVO$"
de_nivel            db   " DE NIVEL: $"
;; PANTALLA INICIAL
movimientosM        db   01 dup (30), "$"
movimientosC        db   01 dup (30), "$"
movimientosD        db   01 dup (30), "$"
movimientosU        db   01 dup (30), "$"
sokoban             db   "SOKOBAN$"
tiempoUS            db   01 dup(30), "$"
tiempoDS            db   01 dup(30), "$"
dospuntos           db   ":$"
tiempoUM            db   01 dup(30), "$"
tiempoDM            db   01 dup(30), "$"
retardoTiempo       dw   00
errorAbrirArchivo   db   "Error Al Abrir El Archivo$"
aux_char            db   00
.CODE
.STARTUP
inicio:
		;; MODO VIDEO ;;
		mov AH, 00
		mov AL, 13
		int 10
		;;;;;;;;;;;;;;;;

pantalla_inicial:
		;;;;;;;;;;;IMPRESIÓN MOVIMIENTOS;;;;;;;
		call imprimirMovimientos
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 10        ; COLUMNA
		mov DH, 0b        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset sokoban
		mov AH, 09
		int 21
		pop DX
		;;;;;;;;;;;IMPRESIÓN INICIALES;;;;;;;;;;
		call imprimirIniciales
		;;;;;;;;;;;IMPRESIÓN TIEMPO;;;;;;;;;;;;;
		call imprimirTiempo
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay

menu:
		mov [numeroNivel], 01
		call menu_principal
		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je modo_juego
		;; > CARGAR NIVEL
		cmp AL, 1
		je modo_cargar_nivel
		;; > PUNTAJES ALTOS
		;; > CONFIGURACION
		cmp AL, 3
		je configuracion_controles
		;; > SALIR
		cmp AL, 4
		je fin
		jmp menu
		;;;;;;;;;;;;;;;;

modo_juego:
		call limpiarTiempo
		call limpiarMovs
		cmp [numeroNivel], 01
		je cargar_nivel1
		cmp [numeroNivel], 02
		je cargar_nivel2
		cmp [numeroNivel], 03
		je cargar_nivel3
		jmp menu

cargar_nivel1:
		mov DX, offset nivel1
		jmp cargar_un_nivel
cargar_nivel2:
		mov DX, offset nivel2
		jmp cargar_un_nivel
cargar_nivel3:
		mov DX, offset nivel3
		jmp cargar_un_nivel

modo_cargar_nivel:
		call limpiarTiempo
		call limpiarMovs
		mov DI, offset nivel_x
		mov CX, 20
		mov AL, 00
		call memset
		;;
		call clear_pantalla
		;; ENTRADA
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 0a        ; COLUMNA
		mov DH, 07        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset nombre_archivo_nvl
		mov AH, 09
		int 21
		pop DX
leer_entrada_buffer:
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 0a        ; COLUMNA
		mov DH, 09        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset de_nivel
		mov AH, 09
		int 21
		pop DX
		;; LEER ENTRADA
		mov DX, offset buffer_entrada
		mov AH, 0a
		int 21
		mov DI, offset buffer_entrada
		call lengthBuffer
		cmp AL, 00
		je leer_entrada_buffer
		;; COPIAR BUFFER A NIVEL_X
		mov SI, offset nivel_x
		mov DI, offset buffer_entrada
		call memcpy
		mov [numeroNivel], 00
		mov DX, offset nivel_x
		jmp cargar_un_nivel

ciclo_juego:
		call pintar_mapa
		call imprimirIniciales
		call imprimirMovimientos
ciclo_juego1:
		mov AL, [cant_sobrepuestos]
		cmp [cant_objetivos], AL
		je avanzar_nivel
		call imprimirTiempo
		call incrementarTiempo
		call entrada_juego
		inc retardoTiempo
		jmp ciclo_juego1

avanzar_nivel:
		mov [cant_sobrepuestos], 00
		mov [cant_sobre_aux], 00
		mov [cant_objetivos], 00
		cmp [numeroNivel], 00
		je menu
		inc [numeroNivel]
		jmp modo_juego
		;;;;;;;;;;;;;;;;

cargar_un_nivel:
		mov AL, 00
		mov AH, 3d
		int 21
		jnc continuar_carga_nivel
		call clear_pantalla
		call errorArchivo
		call delay
		call delay
		call delay
		call delay
		call delay
		jmp menu
continuar_carga_nivel:
		mov [handle_nivel], AX
		mov DI, offset mapa
		mov CX, 398
		mov AL, 00
		call memset
		;;
ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff      ;; fin-del-archivo?
		je fin_parseo
		cmp DH, 00      ;; línea-con-algo?
		je ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
		;; lógica del parseo ;;
		;;;;;;;;;;;;;;;;;;;;;;;
		;; al principio del buffer de la línea está: pared, caja, jugador, suelo, objetivo
		mov DI, offset linea
		push DI
		mov SI, offset TK_pared
		call strcmp
		cmp DL, 0ff               ;; cadenas iguales
		je es_pared
		pop DI
		push DI
		mov SI, offset TK_caja
		call strcmp
		cmp DL, 0ff               ;; cadenas iguales
		je es_caja
		pop DI
		push DI
		mov SI, offset TK_suelo
		call strcmp
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI
		mov SI, offset TK_objetivo
		call strcmp
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset TK_jugador
		call strcmp
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		pop DI
		jmp ciclo_lineas
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		inc [cant_objetivos]
		jmp continuar_parseo0
es_jugador:
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call toString
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset TK_coma
		call strcmp
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call toString
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		;; EVALUAR SOBREPUESTO
		cmp DL, CAJA
		je evaluarC
		cmp DL, OBJETIVO
		je evaluarO
		jmp continuar
evaluarC:
		push AX
		call obtener_de_mapa
		pop AX
		cmp DL, OBJETIVO
		je sobreponerN
		mov DL, [elemento_actual]
		jmp continuar
evaluarO:
		push AX
		call obtener_de_mapa
		pop AX
		cmp DL, CAJA
		je sobreponerN
		mov DL, [elemento_actual]
		jmp continuar
sobreponerN:
		mov DL, SOBREPUESTO
		inc [cant_sobrepuestos]
		inc [cant_sobre_aux]
continuar:
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3e
		mov BX, [handle_nivel]
		int 21
		;;
		int 03
		jmp ciclo_juego
		jmp fin

;; pintar_pixel - pintar un pixel
;; ENTRADA:
;;     AX --> x pixel
;;     BX --> y pixel
;;     CL --> color
;; SALIDA: pintar pixel
;;     AX + 320*BX
pintar_pixel:
		push AX
		push BX
		push CX
		push DX
		push DI
		push SI
		push DS
		mov DX, 0a000
		mov DS, DX
		;; (
		;; 	posicionarse en X
		mov SI, AX
		mov AX, 140
		mul BX
		add AX, SI
		mov DI, AX
		;;
		mov [DI], CL  ;; pintar
		;; )
		pop DS
		pop SI
		pop DI
		pop DX
		pop CX
		pop BX
		pop AX
		ret

;; pintar_sprite - pinta un sprite
;; Entrada:
;;    - DI: offset del sprite
;;    - SI: offset de las dimensiones
;;    - AX: x sprite 320x200
;;    - BX: y sprite 320x200
pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret

;; delay - subrutina de retardo
delay:
		push SI
		push DI
		mov SI, 0200
cicloA:
		mov DI, 0130
		dec SI
		cmp SI, 0000
		je fin_delay
cicloB:
		dec DI
		cmp DI, 0000
		je cicloA
		jmp cicloB
fin_delay:
		pop DI
		pop SI
		ret
		

;; clear_pantalla - limpia la pantalla
;; ..
;; ..
clear_pantalla:
		mov CX, 19  ;; 25
		mov BX, 00
clear_v:
		push CX
		mov CX, 28  ;; 40
		mov AX, 00
clear_h:
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		add AX, 08
		loop clear_h
		add BX, 08
		pop CX
		loop clear_v
		ret


;; menu_principal - menu principal
;; ..
;; SALIDA
;;    - [opcion] -> código numérico de la opción elegida
menu_principal:
		call clear_pantalla
		;; IMPRIMIR OPCIONES ;;
		;;;; SOKOBAN
		mov DL, 10
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset sokoban
		mov AH, 09
		int 21
		pop DX
		;;
		mov AL, 00
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 05
		mov [maximo], AL
		mov AX, 5a
		mov BX, 48
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0d
		mov DH, 09
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_principal:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_principal
		cmp AH, 50
		je sumar_opcion_menu_principal
		cmp AH, 3b  ;; le doy F1
		je fin_menu_principal
		jmp entrada_menu_principal
restar_opcion_menu_principal:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero
		mov [opcion], AL
		jmp mover_flecha_menu_principal
sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 5a
		mov BX, 48
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;
fin_menu_principal:
		ret

;; pintar_flecha - pinta una flecha
pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret

;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
		
;; colocar_en_mapa - coloca un elemento en el mapa
;; ENTRADA:
;;    - DL -> código numérico del elemento
;;    - AH -> x
;;    - AL -> y
;; ...
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret


;; obtener_de_mapa - obtiene un elemento en el mapa
;; ENTRADA:
;;    - AH -> x
;;    - AL -> y
;; SALIDA:
;;    - DL -> código numérico del elemento
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret


;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 00   ;; fila
		;;
ciclo_v:
		cmp AL, 19
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
		cmp DL, NADA
		je pintar_vacio_mapa
		;;
		cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
		cmp DL, PARED
		je pintar_pared_mapa
		;;
		cmp DL, CAJA
		je pintar_caja_mapa
		;;
		cmp DL, OBJETIVO
		je pintar_objetivo_mapa
		;;
		cmp DL, SOBREPUESTO
		je pintar_sobrepuesto_mapa
		;;
		cmp DL, SUELO
		je pintar_suelo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_sobrepuesto_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_sobre
		mov DI, offset data_sprite_sobre
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		ret

;; pintar_jugador_horizontal - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_jugador_perimetro_x:
		mov AL, [yJugador]   ;; fila
		mov AH, [xJugador]   ;; columna
		;; PINTAR JUGADOR
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		;; PINTAR PERÍMETRO JUGADOR
		;; IZQUIERDA
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		call pintar_perimetro
		;; PINTAR PERÍMETRO JUGADOR
		;; DERECHA
		inc AH
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		call pintar_perimetro
		ret
pintar_jugador_perimetro_y:
		mov AL, [yJugador]   ;; fila
		mov AH, [xJugador]   ;; columna
		;; PINTAR JUGADOR
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		;; PINTAR PERÍMETRO JUGADOR
		;; ARRIBA
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		call pintar_perimetro
		;; PINTAR PERÍMETRO JUGADOR
		;; ABAJO
		inc AL
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		call pintar_perimetro
		ret
pintar_perimetro:
		cmp DL, PARED
		je pintar_pared_mapa_p
		cmp DL, CAJA
		je pintar_caja_mapa_p
		cmp DL, OBJETIVO
		je pintar_objetivo_mapa_p
		cmp DL, SOBREPUESTO
		je pintar_sobrepuesto_mapa_p
		cmp DL, SUELO
		je pintar_suelo_mapa_p
pintar_suelo_mapa_p:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp terminar_perimetro
pintar_pared_mapa_p:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp terminar_perimetro
pintar_caja_mapa_p:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp terminar_perimetro
pintar_objetivo_mapa_p:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp terminar_perimetro
pintar_sobrepuesto_mapa_p:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_sobre
		mov DI, offset data_sprite_sobre
		call pintar_sprite
		pop AX
		jmp terminar_perimetro
terminar_perimetro:
		ret

ciclo_pausa:
		call menu_pausa
		cmp [opcion], 0
		je ciclo_juego
		jmp menu

menu_pausa:
		call clear_pantalla
		;; IMPRIMIR OPCIONES ;;
		;;;; SOKOBAN
		mov DL, 10
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset sokoban
		mov AH, 09
		int 21
		pop DX
		;;
		mov AL, 00
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AX, 52
		mov BX, 48
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 09
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset continuar_partida
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir_al_menu
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_pausa:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_pausa
		cmp AH, 50
		je sumar_opcion_menu_pausa
		cmp AH, 3b  ;; le doy F1
		je fin_menu_pausa
		jmp entrada_menu_pausa
restar_opcion_menu_pausa:
		mov AL, 00
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
sumar_opcion_menu_pausa:
		mov AL, 01
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
mover_flecha_menu_pausa:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 52
		mov BX, 48
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_pausa:
		cmp CL, 0
		je pintar_flecha_menu_pausa
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_pausa
pintar_flecha_menu_pausa:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_pausa
		;;
fin_menu_pausa:
		ret

configuracion_controles:
		call menu_config
		mov AL, [opcion]
		cmp AL, 00
		je configurar_nuevos
		cmp AL, 01
		je menu
		jmp configuracion_controles

configurar_nuevos:
		call clear_pantalla
		mov DL, 07
		mov DH, 07
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_abajo
		mov AH, 09
		int 21
		pop DX
abajo_nuevo:
		mov AH, 00
		int 16
		cmp AH, 00
		je abajo_nuevo
		;mov [aux_char], AL
		mov [control_abajo], AH
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		call clear_pantalla
		mov DL, 07
		mov DH, 07
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_arriba
		mov AH, 09
		int 21
		pop DX
arriba_nuevo:
		mov AH, 00
		int 16
		cmp AH, 00
		je arriba_nuevo
		;mov [aux_char], AL
		mov [control_arriba], AH
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		call clear_pantalla
		mov DL, 07
		mov DH, 07
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_der
		mov AH, 09
		int 21
		pop DX
der_nuevo:
		mov AH, 00
		int 16
		cmp AH, 00
		je der_nuevo
		;mov [aux_char], AL
		mov [control_derecha], AH
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		call clear_pantalla
		mov DL, 07
		mov DH, 07
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_izq
		mov AH, 09
		int 21
		pop DX
izq_nuevo:
		mov AH, 00
		int 16
		cmp AH, 00
		je izq_nuevo
		;mov [aux_char], AL
		mov [control_izquierda], AH
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;
		jmp configuracion_controles

;; menu_principal - menu principal
;; ..
;; SALIDA
;;    - [opcion] -> código numérico de la opción elegida
menu_config:
		call clear_pantalla
		;; IMPRIMIR OPCIONES ;;
		;;;; SOKOBAN
		mov DL, 10
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset controles_actuales
		mov AH, 09
		int 21
		pop DX
		;;
		mov AL, 00
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 02
		mov [maximo], AL
		mov AX, 5a
		mov BX, 88
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 07
		mov DH, 07
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset ctrl_arriba
		mov AH, 09
		int 21
		mov DX, offset char_arriba
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_abajo
		mov AH, 09
		int 21
		mov DX, offset char_abajo
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_izq
		mov AH, 09
		int 21
		mov DX, offset char_izq
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset ctrl_der
		mov AH, 09
		int 21
		mov DX, offset char_der
		mov AH, 09
		int 21
		pop DX
		;;
		add DH, 02
		mov DL, 0d
		;;;; CAMBIAR CONTROLES
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cambiar_controles
		mov AH, 09
		int 21
		pop DX
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_config:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_config
		cmp AH, 50
		je sumar_opcion_menu_config
		cmp AH, 3b  ;; le doy F1
		je fin_menu_config
		jmp entrada_menu_config
restar_opcion_menu_config:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero_config
		mov [opcion], AL
		jmp mover_flecha_menu_config
sumar_opcion_menu_config:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo_config
		mov [opcion], AL
		jmp mover_flecha_menu_config
volver_a_cero_config:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_config
volver_a_maximo_config:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_config
mover_flecha_menu_config:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 5a
		mov BX, 88
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_config:
		cmp CL, 0
		je pintar_flecha_menu_config
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_config
pintar_flecha_menu_config:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_config
		;;
fin_menu_config:
		ret

;; entrada_juego - manejo de las entradas del juego
entrada_juego:
		mov AH, 01
		int 16
		jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, 3c
		je ciclo_pausa
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH, 3c
		ret
mover_jugador_arr:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI EL DESTINO ES UNA PARED
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, PARED
		je hay_pared_arriba
		mov [yJugador], AL
		;; VALIDAR SI EL DESTINO ES UN OBJETIVO
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, OBJETIVO
		je encuentra_objetivo1
		;; VALIDAR SI EL DESTINO ES UN SOBREPUESTO
		cmp DL, SOBREPUESTO
		je mueve_sobrepuesto1
		;; VALIDAR SI SE ENCUENTRA UNA CAJA EN LA SIGUIENTE CASILLA
		cmp DL, CAJA
		je encuentra_caja1
		jmp continuar1
encuentra_objetivo1:
		mov [hay_objetivo_sig], 01
		jmp continuar1
encuentra_caja1:
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI HAY PARED DESPUÉS DE LA CAJA
		cmp DL, PARED
		je no_pasa_arriba
		;; VALIDAR SI HAY UN SOBREPUESTO DESPUÉS DE LA CAJA
		cmp DL, SOBREPUESTO
		je no_pasa_arriba
		;; VALIDAR SI HAY OTRA CAJA DESPUÉS DE LA CAJA
		cmp DL, CAJA
		je no_pasa_arriba
		;; VALIDAR SI HAY UN OBJETIVO DESPUÉS DE LA CAJA
		cmp DL, OBJETIVO
		je sobreponer1
		jmp mover_caja1
sobreponer1:
		inc [cant_sobrepuestos]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov DL, SOBREPUESTO
		dec AL
		push AX
		call colocar_en_mapa
		pop AX
		inc AL
		jmp continuar1
mueve_sobrepuesto1:
		dec [cant_sobrepuestos]
		mov [hay_objetivo_sig], 01
		jmp encuentra_caja1
mover_caja1:
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
seguir_moviendo_caja1:
		mov DL, CAJA
		dec AL
		push AX
		call colocar_en_mapa
		pop AX
		inc AL
continuar1:
		;; POSICIONAR AL JUGADOR EN EL MAPA
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;; VALIDAR SI EL JUGADOR ESTÁ SOBRE UN OBJETIVO
		cmp [hay_objetivo_act], 01
		je devolver_objetivo1
		;;
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		;;
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_y
		ret
devolver_objetivo1:
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		mov DL, OBJETIVO
		inc AL
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_y
		ret
hay_pared_arriba:
		mov [hay_objetivo_sig], 00
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
no_pasa_arriba:
		mov [hay_objetivo_sig], 00
		inc AL
		inc AL
		mov [yJugador], AL
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
mover_jugador_aba:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI EL DESTINO ES UNA PARED
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, PARED
		je hay_pared_abajo
		mov [yJugador], AL
		;; VALIDAR SI EL DESTINO ES UN OBJETIVO
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, OBJETIVO
		je encuentra_objetivo2
		;; VALIDAR SI EL DESTINO ES UN SOBREPUESTO
		cmp DL, SOBREPUESTO
		je mueve_sobrepuesto2
		;; VALIDAR SI SE ENCUENTRA UNA CAJA EN LA SIGUIENTE CASILLA
		cmp DL, CAJA
		je encuentra_caja2
		jmp continuar2
encuentra_objetivo2:
		mov[hay_objetivo_sig], 01
		jmp continuar2
encuentra_caja2:
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI HAY PARED DESPUÉS DE LA CAJA
		cmp DL, PARED
		je no_pasa_abajo
		;; VALIDAR SI HAY UN SOBREPUESTO DESPUÉS DE LA CAJA
		cmp DL, SOBREPUESTO
		je no_pasa_abajo
		;; VALIDAR SI HAY OTRA CAJA DESPUÉS DE LA CAJA
		cmp DL, CAJA
		je no_pasa_abajo
		;; VALIDAR SI HAY UN OBJETIVO DESPUÉS DE LA CAJA
		cmp DL, OBJETIVO
		je sobreponer2
		jmp mover_caja2
sobreponer2:
		inc [cant_sobrepuestos]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov DL, SOBREPUESTO
		inc AL
		push AX
		call colocar_en_mapa
		pop AX
		dec AL
		jmp continuar2
mueve_sobrepuesto2:
		dec [cant_sobrepuestos]
		mov [hay_objetivo_sig], 01
		jmp encuentra_caja2
mover_caja2:
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
seguir_moviendo_caja2:
		mov DL, CAJA
		inc AL
		push AX
		call colocar_en_mapa
		pop AX
		dec AL
continuar2:
		;; POSICIONAR AL JUGADOR EN EL MAPA
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;; VALIDAR SI EL JUGADOR ESTÁ SOBRE UN OBJETIVO
		cmp [hay_objetivo_act], 01
		je devolver_objetivo2
		;;
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_y
		ret
devolver_objetivo2:
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		mov DL, OBJETIVO
		dec AL
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_y
		ret
hay_pared_abajo:
		mov [hay_objetivo_sig], 00
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
no_pasa_abajo:
		mov [hay_objetivo_sig], 00
		dec AL
		dec AL
		mov [yJugador], AL
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
mover_jugador_izq:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI EL DESTINO ES UNA PARED
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, PARED
		je hay_pared_izquierda
		mov [xJugador], AH
		;; VALIDAR SI EL DESTINO ES UN OBJETIVO
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, OBJETIVO
		je encuentra_objetivo3
		;; VALIDAR SI EL DESTINO ES UN SOBREPUESTO
		cmp DL, SOBREPUESTO
		je mueve_sobrepuesto3
		;; VALIDAR SI SE ENCUENTRA UNA CAJA EN LA SIGUIENTE CASILLA
		cmp DL, CAJA
		je encuentra_caja3
		jmp continuar3
encuentra_objetivo3:
		mov[hay_objetivo_sig], 01
		jmp continuar3
encuentra_caja3:
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI HAY PARED DESPUÉS DE LA CAJA
		cmp DL, PARED
		je no_pasa_izquierda
		;; VALIDAR SI HAY UN SOBREPUESTO DESPUÉS DE LA CAJA
		cmp DL, SOBREPUESTO
		je no_pasa_izquierda
		;; VALIDAR SI HAY OTRA CAJA DESPUÉS DE LA CAJA
		cmp DL, CAJA
		je no_pasa_izquierda
		;; VALIDAR SI HAY OBJETIVO DESPUÉS DE LA CAJA
		cmp DL, OBJETIVO
		je sobreponer3
		jmp mover_caja3
sobreponer3:
		inc [cant_sobrepuestos]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov DL, SOBREPUESTO
		dec AH
		push AX
		call colocar_en_mapa
		pop AX
		inc AH
		jmp continuar3
mueve_sobrepuesto3:
		dec [cant_sobrepuestos]
		mov [hay_objetivo_sig], 01
		jmp encuentra_caja3
mover_caja3:
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
seguir_moviendo_caja3:
		mov DL, CAJA
		dec AH
		push AX
		call colocar_en_mapa
		pop AX
		inc AH
continuar3:
		;; POSICIONAR AL JUGADOR EN EL MAPA
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;; VALIDAR SI EL JUGADOR ESTÁ SOBRE UN OBJETIVO
		cmp [hay_objetivo_act], 01
		je devolver_objetivo3
		;;
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_x
		ret
devolver_objetivo3:
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		mov DL, OBJETIVO
		inc AH
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_x
		ret
hay_pared_izquierda:
		mov [hay_objetivo_sig], 00
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
no_pasa_izquierda:
		mov [hay_objetivo_sig], 00
		inc AH
		inc AH
		mov [xJugador], AH
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
mover_jugador_der:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI EL DESTINO ES UNA PARED
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, PARED
		je hay_pared_derecha
		mov [xJugador], AH
		;; VALIDAR SI EL DESTINO ES UN OBJETIVO
		;; DL <- ELEMENTO EN EL MAPA
		cmp DL, OBJETIVO
		je encuentra_objetivo4
		;; VALIDAR SI EL DESTINO ES UN SOBREPUESTO
		cmp DL, SOBREPUESTO
		je mueve_sobrepuesto4
		;; VALIDAR SI SE ENCUENTRA UNA CAJA EN LA SIGUIENTE CASILLA
		cmp DL, CAJA
		je encuentra_caja4
		jmp continuar4
encuentra_objetivo4:
		mov [hay_objetivo_sig], 01
		jmp continuar4
encuentra_caja4:
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; VALIDAR SI HAY PARED DESPUÉS DE LA CAJA
		cmp DL, PARED
		je no_pasa_derecha
		;; VALIDAR SI HAY UN SOBREPUESTO DESPUÉS DE LA CAJA
		cmp DL, SOBREPUESTO
		je no_pasa_derecha
		;; VALIDAR SI HAY OTRA CAJA DESPUÉS DE LA CAJA
		cmp DL, CAJA
		je no_pasa_derecha
		;; VALIDAR SI HAY OBJETIVO DESPUÉS DE LA CAJA
		cmp DL, OBJETIVO
		je sobreponer4
		jmp mover_caja4
sobreponer4:
		inc [cant_sobrepuestos]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov DL, SOBREPUESTO
		inc AH
		push AX
		call colocar_en_mapa
		pop AX
		dec AH
		jmp continuar4
mueve_sobrepuesto4:
		dec [cant_sobrepuestos]
		mov [hay_objetivo_sig], 01
		jmp encuentra_caja4
mover_caja4:
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
seguir_moviendo_caja4:
		mov DL, CAJA
		inc AH
		push AX
		call colocar_en_mapa
		pop AX
		dec AH
continuar4:
		;; POSICIONAR AL JUGADOR EN EL MAPA
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;; VALIDAR SI EL JUGADOR ESTÁ SOBRE UN OBJETIVO
		cmp [hay_objetivo_act], 01
		je devolver_objetivo4
		;;
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_x
		ret
devolver_objetivo4:
		mov BL, [hay_objetivo_sig]
		mov [hay_objetivo_act], BL
		mov [hay_objetivo_sig], 00
		mov DL, OBJETIVO
		dec AH
		call colocar_en_mapa
		mov AL, [cant_sobrepuestos]
		mov [cant_sobre_aux], AL
		call incrementarMovs
		call imprimirMovimientos
		call pintar_jugador_perimetro_x
		ret
hay_pared_derecha:
		mov [hay_objetivo_sig], 00
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
no_pasa_derecha:
		mov [hay_objetivo_sig], 00
		dec AH
		dec AH
		mov [xJugador], AH
		mov AL, [cant_sobre_aux]
		mov [cant_sobrepuestos], AL
		ret
fin_entrada_juego:
		ret


;; siguiente_linea - extrae la siguiente línea del archivo referenciado por el handle en BX
;; ENTRADA:
;;    - BX: handle
;; SALIDA:
;;    - [linea]: contenido de la línea que se extrajo, finalizada en 00 (nul0)
;;    - DL: si el archivo llegó a su fin
;;    - DH: la cantidad de caracteres en la línea
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3f
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret


;; strcmp - verifica que dos cadenas sean iguales
;; ENTRADA:
;;    - SI: cadena 1, con su tamaño en el primer byte
;;    - DI: cadena 2
;; SALIDA:
;;    - DL: 0ff si son iguales, 00 si no lo son
strcmp:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_strcmp:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_strcmp
		inc SI
		inc DI
		loop ciclo_strcmp
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_strcmp:
		mov DL, 00
		ret


;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
;;    - DI: offset de una cadena cuyo primer byte se supone es un espacio
;; ...
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret


;; memset - memset
;; ENTRADA:
;;    - DI: offset del inicio de la cadena de bytes
;;    - CX: cantidad de bytes
;;    - AL: valor que se pondrá en cada byte
memset:
		push DI
ciclo_memset:
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret


;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
;;    - DI: offset del inicio de la cadena numérica
;; SALIDA:
;;    - [numero]: el contenido de la cadena numérica
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret

;; toString
;; ENTRADA:
;;    DI -> dirección a una cadena numérica
;; SALIDA:
;;    AX -> número convertido
;;;;
toString:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_toString
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_toString:
		ret

;; memcpy
;; ENTRADAS:
;;    SI -> dirección de a dónde se va a copiar
;;    DI -> dirección de lo que se va a copiar
;;;;
memcpy:
		inc DI
		mov CH, 00
		mov CL, [DI]
		inc DI                   ; CONTENIDO EN EL BUFFER
copiarCampoAEstructura:
		mov AL, [DI]
		mov [SI], AL
		inc SI
		inc DI
		loop copiarCampoAEstructura
		ret

;; lengthBuffer
;; ENTRADAS
;;    DI -> dirección del buffer
;;;;
lengthBuffer:
		inc DI
		mov AL, [DI]
		ret

imprimirMovimientos:
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 20        ; COLUMNA
		mov DH, 00        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset movimientosM
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 21        ; COLUMNA
		mov DH, 00        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset movimientosC
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 22        ; COLUMNA
		mov DH, 00        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset movimientosD
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 23        ; COLUMNA
		mov DH, 00        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset movimientosU
		mov AH, 09
		int 21
		pop DX
		ret

limpiarMovs:
		mov [movimientosM], 30
		mov [movimientosC], 30
		mov [movimientosD], 30
		mov [movimientosU], 30
		ret

incrementarMovs:
		cmp [movimientosU], 39
		je incrementarDecenasUnits
		inc movimientosU
		ret
incrementarDecenasUnits:
		mov [movimientosU], 30
		cmp [movimientosD], 39
		je incrementarCentenasUnits
		inc movimientosD
		ret
incrementarCentenasUnits:
		mov [movimientosD], 30
		cmp [movimientosC], 39
		je incrementarMilesUnits
		inc movimientosC
		ret
incrementarMilesUnits:
		inc movimientosM
		ret

imprimirIniciales:
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 01        ; COLUMNA
		mov DH, 18        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset iniciales
		mov AH, 09
		int 21
		pop DX
		ret

imprimirTiempo:
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 20        ; COLUMNA
		mov DH, 18        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset tiempoDM
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 21        ; COLUMNA
		mov DH, 18        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset tiempoUM
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 22        ; COLUMNA
		mov DH, 18        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset dospuntos
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 23        ; COLUMNA
		mov DH, 18        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset tiempoDS
		mov AH, 09
		int 21
		pop DX
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 24        ; COLUMNA
		mov DH, 18        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset tiempoUS
		mov AH, 09
		int 21
		pop DX
		ret

limpiarTiempo:
		mov [tiempoUS], 30
		mov [tiempoDS], 30
		mov [tiempoUM], 30
		mov [tiempoDM], 30
		ret

incrementarTiempo:
		cmp [retardoTiempo], 4000
		je incrementarTiempo1
		ret
incrementarTiempo1:
		mov [retardoTiempo], 00
		cmp [tiempoUS], 39
		je incrementarDecenasSegundos
		inc tiempoUS
		ret
incrementarDecenasSegundos:
		mov [tiempoUS], 30
		cmp [tiempoDS], 35
		je incrementarUnidadesMinutos
		inc tiempoDS
		ret
incrementarUnidadesMinutos:
		mov [tiempoDS], 30
		cmp [tiempoUM], 39
		je incrementarDecenasMinutos
		inc tiempoUM
		ret
incrementarDecenasMinutos:
		inc tiempoDM
		ret

errorArchivo:
		;; <<-- POSICIONAR EL CURSOR
		mov DL, 08        ; COLUMNA
		mov DH, 0b        ; FILA
		mov BH, 00        ; NÚMERO DE PÁGINA
		mov AH, 02
		int 10
		;; IMPRESIÓN DEL MENSAJE
		push DX
		mov DX, offset errorAbrirArchivo
		mov AH, 09
		int 21
		pop DX
		ret

fin:
.EXIT
END