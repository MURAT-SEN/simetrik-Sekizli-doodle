
_main:

;yenikodkendimin.c,411 :: 		void main ()
;yenikodkendimin.c,412 :: 		{  TRISC=1;
	MOVLW      1
	MOVWF      TRISC+0
;yenikodkendimin.c,413 :: 		TRISB=0;     //B portu cýkýs olarak ayarlandý.
	CLRF       TRISB+0
;yenikodkendimin.c,414 :: 		TRISD=0;     //D portu cýkýs olarak ayarlandý.
	CLRF       TRISD+0
;yenikodkendimin.c,415 :: 		i=0;        //i degeri 0'a esitlendi.
	CLRF       _i+0
	CLRF       _i+1
;yenikodkendimin.c,416 :: 		deger=0;
	CLRF       _deger+0
	CLRF       _deger+1
;yenikodkendimin.c,417 :: 		for(sayac=0; sayac<88; sayac++)              // 10 karekterden olusan isim icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main0:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main187
	MOVLW      88
	SUBWF      _sayac+0, 0
L__main187:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;yenikodkendimin.c,419 :: 		i=sayac;                                   //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,420 :: 		tekrar_2();                               //tekrar_2 fonksiyonu calýstýrma
	CALL       _tekrar_2+0
;yenikodkendimin.c,417 :: 		for(sayac=0; sayac<88; sayac++)              // 10 karekterden olusan isim icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,421 :: 		}
	GOTO       L_main0
L_main1:
;yenikodkendimin.c,423 :: 		while(1)
L_main3:
;yenikodkendimin.c,428 :: 		if (Button(&PORTC, 0, 1, 1)) {
	MOVLW      PORTC+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;yenikodkendimin.c,429 :: 		deger = deger+1;
	INCF       _deger+0, 1
	BTFSC      STATUS+0, 2
	INCF       _deger+1, 1
;yenikodkendimin.c,430 :: 		}
L_main5:
;yenikodkendimin.c,431 :: 		if (deger && Button(&PORTC, 0, 1, 0)) {
	MOVF       _deger+0, 0
	IORWF      _deger+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVLW      PORTC+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main8
L__main185:
;yenikodkendimin.c,433 :: 		deger = deger;
;yenikodkendimin.c,434 :: 		}
L_main8:
;yenikodkendimin.c,435 :: 		delay_ms(20);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;yenikodkendimin.c,437 :: 		switch(deger)
	GOTO       L_main10
;yenikodkendimin.c,439 :: 		case 0: PORTD=0;
L_main12:
	CLRF       PORTD+0
;yenikodkendimin.c,440 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,442 :: 		case 1:
L_main13:
;yenikodkendimin.c,445 :: 		for(sayac=0; sayac<7; sayac++)          // 7 karekterden olusan kare tablosu icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main14:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main188
	MOVLW      7
	SUBWF      _sayac+0, 0
L__main188:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;yenikodkendimin.c,447 :: 		i=sayac;                              //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,448 :: 		tekrar ();                            //tekrar fonksiyonu calýstýrma
	CALL       _tekrar+0
;yenikodkendimin.c,445 :: 		for(sayac=0; sayac<7; sayac++)          // 7 karekterden olusan kare tablosu icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,449 :: 		}
	GOTO       L_main14
L_main15:
;yenikodkendimin.c,451 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,453 :: 		case 2:
L_main17:
;yenikodkendimin.c,455 :: 		for(sayac=0; sayac<6; sayac++)             // 6 karekterden olusan kare_2 tablosu icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main18:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main189
	MOVLW      6
	SUBWF      _sayac+0, 0
L__main189:
	BTFSC      STATUS+0, 0
	GOTO       L_main19
;yenikodkendimin.c,457 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,458 :: 		tekrar_3 ();                             //tekrar_3 fonksiyonu calýstýrma
	CALL       _tekrar_3+0
;yenikodkendimin.c,455 :: 		for(sayac=0; sayac<6; sayac++)             // 6 karekterden olusan kare_2 tablosu icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,459 :: 		}
	GOTO       L_main18
L_main19:
;yenikodkendimin.c,460 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,463 :: 		case 3:
L_main21:
;yenikodkendimin.c,465 :: 		for(sayac=0; sayac<9; sayac++)             // 9 karekterden olusan kare_2 tablosu icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main22:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main190
	MOVLW      9
	SUBWF      _sayac+0, 0
L__main190:
	BTFSC      STATUS+0, 0
	GOTO       L_main23
;yenikodkendimin.c,467 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,468 :: 		tekrar_4 ();                             //tekrar_4 fonksiyonu calýstýrma
	CALL       _tekrar_4+0
;yenikodkendimin.c,465 :: 		for(sayac=0; sayac<9; sayac++)             // 9 karekterden olusan kare_2 tablosu icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,469 :: 		}
	GOTO       L_main22
L_main23:
;yenikodkendimin.c,470 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,472 :: 		case 4:
L_main25:
;yenikodkendimin.c,474 :: 		for(sayac=0; sayac<21; sayac++)             // 21 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main26:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main191
	MOVLW      21
	SUBWF      _sayac+0, 0
L__main191:
	BTFSC      STATUS+0, 0
	GOTO       L_main27
;yenikodkendimin.c,476 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,477 :: 		tekrar_5 ();                             //tekrar_5 fonksiyonu calýstýrma
	CALL       _tekrar_5+0
;yenikodkendimin.c,474 :: 		for(sayac=0; sayac<21; sayac++)             // 21 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,478 :: 		}
	GOTO       L_main26
L_main27:
;yenikodkendimin.c,479 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,483 :: 		case 5:
L_main29:
;yenikodkendimin.c,485 :: 		for(sayac=0; sayac<5; sayac++)             //  karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main30:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main192
	MOVLW      5
	SUBWF      _sayac+0, 0
L__main192:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
;yenikodkendimin.c,487 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,488 :: 		tekrar_6 ();                             //tekrar_6 fonksiyonu calýstýrma
	CALL       _tekrar_6+0
;yenikodkendimin.c,485 :: 		for(sayac=0; sayac<5; sayac++)             //  karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,489 :: 		}
	GOTO       L_main30
L_main31:
;yenikodkendimin.c,490 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,492 :: 		case 6:
L_main33:
;yenikodkendimin.c,495 :: 		for(sayac=0; sayac<30; sayac++)             //  karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main34:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main193
	MOVLW      30
	SUBWF      _sayac+0, 0
L__main193:
	BTFSC      STATUS+0, 0
	GOTO       L_main35
;yenikodkendimin.c,497 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,498 :: 		tekrar_7 ();                             //tekrar_7 fonksiyonu calýstýrma
	CALL       _tekrar_7+0
;yenikodkendimin.c,495 :: 		for(sayac=0; sayac<30; sayac++)             //  karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,499 :: 		}
	GOTO       L_main34
L_main35:
;yenikodkendimin.c,500 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,503 :: 		case 7:
L_main37:
;yenikodkendimin.c,506 :: 		for(sayac=0; sayac<23; sayac++)             //  23 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main38:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main194
	MOVLW      23
	SUBWF      _sayac+0, 0
L__main194:
	BTFSC      STATUS+0, 0
	GOTO       L_main39
;yenikodkendimin.c,508 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,509 :: 		tekrar_8 ();                             //tekrar_8 fonksiyonu calýstýrma
	CALL       _tekrar_8+0
;yenikodkendimin.c,506 :: 		for(sayac=0; sayac<23; sayac++)             //  23 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,510 :: 		}
	GOTO       L_main38
L_main39:
;yenikodkendimin.c,511 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,516 :: 		case 8:
L_main41:
;yenikodkendimin.c,519 :: 		for(sayac=0; sayac<25; sayac++)             //  25 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main42:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main195
	MOVLW      25
	SUBWF      _sayac+0, 0
L__main195:
	BTFSC      STATUS+0, 0
	GOTO       L_main43
;yenikodkendimin.c,521 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,522 :: 		tekrar_9 ();                             //tekrar_9 fonksiyonu calýstýrma
	CALL       _tekrar_9+0
;yenikodkendimin.c,519 :: 		for(sayac=0; sayac<25; sayac++)             //  25 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,523 :: 		}
	GOTO       L_main42
L_main43:
;yenikodkendimin.c,524 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,529 :: 		case 9:
L_main45:
;yenikodkendimin.c,532 :: 		for(sayac=0; sayac<48; sayac++)             //   48 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main46:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main196
	MOVLW      48
	SUBWF      _sayac+0, 0
L__main196:
	BTFSC      STATUS+0, 0
	GOTO       L_main47
;yenikodkendimin.c,534 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,535 :: 		tekrar_10 ();                             //tekrar_10 fonksiyonu calýstýrma
	CALL       _tekrar_10+0
;yenikodkendimin.c,532 :: 		for(sayac=0; sayac<48; sayac++)             //   48 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,536 :: 		}
	GOTO       L_main46
L_main47:
;yenikodkendimin.c,537 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,539 :: 		case 10:
L_main49:
;yenikodkendimin.c,542 :: 		for(sayac=0; sayac<16; sayac++)             //   16 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main50:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main197
	MOVLW      16
	SUBWF      _sayac+0, 0
L__main197:
	BTFSC      STATUS+0, 0
	GOTO       L_main51
;yenikodkendimin.c,544 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,545 :: 		tekrar_11 ();                             //tekrar_11 fonksiyonu calýstýrma
	CALL       _tekrar_11+0
;yenikodkendimin.c,542 :: 		for(sayac=0; sayac<16; sayac++)             //   16 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,546 :: 		}
	GOTO       L_main50
L_main51:
;yenikodkendimin.c,547 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,549 :: 		case 11:
L_main53:
;yenikodkendimin.c,552 :: 		for(sayac=0; sayac<16; sayac++)             //   16 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main54:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main198
	MOVLW      16
	SUBWF      _sayac+0, 0
L__main198:
	BTFSC      STATUS+0, 0
	GOTO       L_main55
;yenikodkendimin.c,554 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,555 :: 		tekrar_12 ();                             //tekrar_12 fonksiyonu calýstýrma
	CALL       _tekrar_12+0
;yenikodkendimin.c,552 :: 		for(sayac=0; sayac<16; sayac++)             //   16 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,556 :: 		}
	GOTO       L_main54
L_main55:
;yenikodkendimin.c,557 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,559 :: 		case 12:
L_main57:
;yenikodkendimin.c,562 :: 		for(sayac=0; sayac<30; sayac++)             //   30 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main58:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main199
	MOVLW      30
	SUBWF      _sayac+0, 0
L__main199:
	BTFSC      STATUS+0, 0
	GOTO       L_main59
;yenikodkendimin.c,564 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,565 :: 		tekrar_13 ();                             //tekrar_13 fonksiyonu calýstýrma
	CALL       _tekrar_13+0
;yenikodkendimin.c,562 :: 		for(sayac=0; sayac<30; sayac++)             //   30 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,566 :: 		}
	GOTO       L_main58
L_main59:
;yenikodkendimin.c,567 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,571 :: 		case 13:
L_main61:
;yenikodkendimin.c,574 :: 		for(sayac=0; sayac<8; sayac++)             //   8 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main62:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main200
	MOVLW      8
	SUBWF      _sayac+0, 0
L__main200:
	BTFSC      STATUS+0, 0
	GOTO       L_main63
;yenikodkendimin.c,576 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,577 :: 		tekrar_14 ();                             //tekrar_14 fonksiyonu calýstýrma
	CALL       _tekrar_14+0
;yenikodkendimin.c,574 :: 		for(sayac=0; sayac<8; sayac++)             //   8 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,578 :: 		}
	GOTO       L_main62
L_main63:
;yenikodkendimin.c,579 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,582 :: 		case 14:
L_main65:
;yenikodkendimin.c,585 :: 		for(sayac=0; sayac<4; sayac++)             //   4 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main66:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main201
	MOVLW      4
	SUBWF      _sayac+0, 0
L__main201:
	BTFSC      STATUS+0, 0
	GOTO       L_main67
;yenikodkendimin.c,587 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,588 :: 		tekrar_15 ();                             //tekrar_15 fonksiyonu calýstýrma
	CALL       _tekrar_15+0
;yenikodkendimin.c,585 :: 		for(sayac=0; sayac<4; sayac++)             //   4 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,589 :: 		}
	GOTO       L_main66
L_main67:
;yenikodkendimin.c,590 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,592 :: 		case 15:
L_main69:
;yenikodkendimin.c,595 :: 		for(sayac=0; sayac<12; sayac++)             //   12 karekterden olusan tablo icin döngü
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main70:
	MOVLW      0
	SUBWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main202
	MOVLW      12
	SUBWF      _sayac+0, 0
L__main202:
	BTFSC      STATUS+0, 0
	GOTO       L_main71
;yenikodkendimin.c,597 :: 		i=sayac;                                //sayac i degerine atandý
	MOVF       _sayac+0, 0
	MOVWF      _i+0
	MOVF       _sayac+1, 0
	MOVWF      _i+1
;yenikodkendimin.c,598 :: 		tekrar_16 ();                             //tekrar_16 fonksiyonu calýstýrma
	CALL       _tekrar_16+0
;yenikodkendimin.c,595 :: 		for(sayac=0; sayac<12; sayac++)             //   12 karekterden olusan tablo icin döngü
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;yenikodkendimin.c,599 :: 		}
	GOTO       L_main70
L_main71:
;yenikodkendimin.c,600 :: 		break;
	GOTO       L_main11
;yenikodkendimin.c,606 :: 		}
L_main10:
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main203
	MOVLW      0
	XORWF      _deger+0, 0
L__main203:
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main204
	MOVLW      1
	XORWF      _deger+0, 0
L__main204:
	BTFSC      STATUS+0, 2
	GOTO       L_main13
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main205
	MOVLW      2
	XORWF      _deger+0, 0
L__main205:
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main206
	MOVLW      3
	XORWF      _deger+0, 0
L__main206:
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main207
	MOVLW      4
	XORWF      _deger+0, 0
L__main207:
	BTFSC      STATUS+0, 2
	GOTO       L_main25
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main208
	MOVLW      5
	XORWF      _deger+0, 0
L__main208:
	BTFSC      STATUS+0, 2
	GOTO       L_main29
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main209
	MOVLW      6
	XORWF      _deger+0, 0
L__main209:
	BTFSC      STATUS+0, 2
	GOTO       L_main33
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main210
	MOVLW      7
	XORWF      _deger+0, 0
L__main210:
	BTFSC      STATUS+0, 2
	GOTO       L_main37
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main211
	MOVLW      8
	XORWF      _deger+0, 0
L__main211:
	BTFSC      STATUS+0, 2
	GOTO       L_main41
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main212
	MOVLW      9
	XORWF      _deger+0, 0
L__main212:
	BTFSC      STATUS+0, 2
	GOTO       L_main45
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main213
	MOVLW      10
	XORWF      _deger+0, 0
L__main213:
	BTFSC      STATUS+0, 2
	GOTO       L_main49
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main214
	MOVLW      11
	XORWF      _deger+0, 0
L__main214:
	BTFSC      STATUS+0, 2
	GOTO       L_main53
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main215
	MOVLW      12
	XORWF      _deger+0, 0
L__main215:
	BTFSC      STATUS+0, 2
	GOTO       L_main57
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main216
	MOVLW      13
	XORWF      _deger+0, 0
L__main216:
	BTFSC      STATUS+0, 2
	GOTO       L_main61
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main217
	MOVLW      14
	XORWF      _deger+0, 0
L__main217:
	BTFSC      STATUS+0, 2
	GOTO       L_main65
	MOVLW      0
	XORWF      _deger+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main218
	MOVLW      15
	XORWF      _deger+0, 0
L__main218:
	BTFSC      STATUS+0, 2
	GOTO       L_main69
L_main11:
;yenikodkendimin.c,607 :: 		}
	GOTO       L_main3
;yenikodkendimin.c,608 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_tekrar:

;yenikodkendimin.c,620 :: 		void tekrar (void)
;yenikodkendimin.c,623 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_tekrar_sayisi_L0+0
	CLRF       tekrar_tekrar_sayisi_L0+1
L_tekrar73:
	MOVLW      0
	SUBWF      tekrar_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar220
	MOVLW      20
	SUBWF      tekrar_tekrar_sayisi_L0+0, 0
L__tekrar220:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar74
;yenikodkendimin.c,624 :: 		matrix_yaz();
	CALL       _matrix_yaz+0
;yenikodkendimin.c,623 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,624 :: 		matrix_yaz();
	GOTO       L_tekrar73
L_tekrar74:
;yenikodkendimin.c,625 :: 		}
L_end_tekrar:
	RETURN
; end of _tekrar

_tekrar_2:

;yenikodkendimin.c,628 :: 		void tekrar_2 (void)
;yenikodkendimin.c,631 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_2_tekrar_sayisi_L0+0
	CLRF       tekrar_2_tekrar_sayisi_L0+1
L_tekrar_276:
	MOVLW      0
	SUBWF      tekrar_2_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_2222
	MOVLW      20
	SUBWF      tekrar_2_tekrar_sayisi_L0+0, 0
L__tekrar_2222:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_277
;yenikodkendimin.c,632 :: 		matrix_yaz2 ();
	CALL       _matrix_yaz2+0
;yenikodkendimin.c,631 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_2_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_2_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,632 :: 		matrix_yaz2 ();
	GOTO       L_tekrar_276
L_tekrar_277:
;yenikodkendimin.c,633 :: 		}
L_end_tekrar_2:
	RETURN
; end of _tekrar_2

_tekrar_3:

;yenikodkendimin.c,635 :: 		void tekrar_3 (void)
;yenikodkendimin.c,638 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_3_tekrar_sayisi_L0+0
	CLRF       tekrar_3_tekrar_sayisi_L0+1
L_tekrar_379:
	MOVLW      0
	SUBWF      tekrar_3_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_3224
	MOVLW      20
	SUBWF      tekrar_3_tekrar_sayisi_L0+0, 0
L__tekrar_3224:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_380
;yenikodkendimin.c,639 :: 		matrix_yaz3 ();
	CALL       _matrix_yaz3+0
;yenikodkendimin.c,638 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_3_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_3_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,639 :: 		matrix_yaz3 ();
	GOTO       L_tekrar_379
L_tekrar_380:
;yenikodkendimin.c,640 :: 		}
L_end_tekrar_3:
	RETURN
; end of _tekrar_3

_tekrar_4:

;yenikodkendimin.c,642 :: 		void tekrar_4 (void)
;yenikodkendimin.c,645 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_4_tekrar_sayisi_L0+0
	CLRF       tekrar_4_tekrar_sayisi_L0+1
L_tekrar_482:
	MOVLW      0
	SUBWF      tekrar_4_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_4226
	MOVLW      20
	SUBWF      tekrar_4_tekrar_sayisi_L0+0, 0
L__tekrar_4226:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_483
;yenikodkendimin.c,646 :: 		matrix_yaz4 ();
	CALL       _matrix_yaz4+0
;yenikodkendimin.c,645 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_4_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_4_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,646 :: 		matrix_yaz4 ();
	GOTO       L_tekrar_482
L_tekrar_483:
;yenikodkendimin.c,647 :: 		}
L_end_tekrar_4:
	RETURN
; end of _tekrar_4

_tekrar_5:

;yenikodkendimin.c,649 :: 		void tekrar_5 (void)
;yenikodkendimin.c,652 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_5_tekrar_sayisi_L0+0
	CLRF       tekrar_5_tekrar_sayisi_L0+1
L_tekrar_585:
	MOVLW      0
	SUBWF      tekrar_5_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_5228
	MOVLW      20
	SUBWF      tekrar_5_tekrar_sayisi_L0+0, 0
L__tekrar_5228:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_586
;yenikodkendimin.c,653 :: 		matrix_yaz5 ();
	CALL       _matrix_yaz5+0
;yenikodkendimin.c,652 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_5_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_5_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,653 :: 		matrix_yaz5 ();
	GOTO       L_tekrar_585
L_tekrar_586:
;yenikodkendimin.c,654 :: 		}
L_end_tekrar_5:
	RETURN
; end of _tekrar_5

_tekrar_6:

;yenikodkendimin.c,656 :: 		void tekrar_6 (void)
;yenikodkendimin.c,659 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_6_tekrar_sayisi_L0+0
	CLRF       tekrar_6_tekrar_sayisi_L0+1
L_tekrar_688:
	MOVLW      0
	SUBWF      tekrar_6_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_6230
	MOVLW      20
	SUBWF      tekrar_6_tekrar_sayisi_L0+0, 0
L__tekrar_6230:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_689
;yenikodkendimin.c,660 :: 		matrix_yaz6 ();
	CALL       _matrix_yaz6+0
;yenikodkendimin.c,659 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_6_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_6_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,660 :: 		matrix_yaz6 ();
	GOTO       L_tekrar_688
L_tekrar_689:
;yenikodkendimin.c,661 :: 		}
L_end_tekrar_6:
	RETURN
; end of _tekrar_6

_tekrar_7:

;yenikodkendimin.c,663 :: 		void tekrar_7 (void)
;yenikodkendimin.c,666 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	CLRF       tekrar_7_tekrar_sayisi_L0+0
	CLRF       tekrar_7_tekrar_sayisi_L0+1
L_tekrar_791:
	MOVLW      0
	SUBWF      tekrar_7_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_7232
	MOVLW      50
	SUBWF      tekrar_7_tekrar_sayisi_L0+0, 0
L__tekrar_7232:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_792
;yenikodkendimin.c,667 :: 		matrix_yaz7 ();
	CALL       _matrix_yaz7+0
;yenikodkendimin.c,666 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	INCF       tekrar_7_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_7_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,667 :: 		matrix_yaz7 ();
	GOTO       L_tekrar_791
L_tekrar_792:
;yenikodkendimin.c,668 :: 		}
L_end_tekrar_7:
	RETURN
; end of _tekrar_7

_tekrar_8:

;yenikodkendimin.c,670 :: 		void tekrar_8 (void)
;yenikodkendimin.c,673 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	CLRF       tekrar_8_tekrar_sayisi_L0+0
	CLRF       tekrar_8_tekrar_sayisi_L0+1
L_tekrar_894:
	MOVLW      0
	SUBWF      tekrar_8_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_8234
	MOVLW      50
	SUBWF      tekrar_8_tekrar_sayisi_L0+0, 0
L__tekrar_8234:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_895
;yenikodkendimin.c,674 :: 		matrix_yaz8 ();
	CALL       _matrix_yaz8+0
;yenikodkendimin.c,673 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	INCF       tekrar_8_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_8_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,674 :: 		matrix_yaz8 ();
	GOTO       L_tekrar_894
L_tekrar_895:
;yenikodkendimin.c,675 :: 		}
L_end_tekrar_8:
	RETURN
; end of _tekrar_8

_tekrar_9:

;yenikodkendimin.c,677 :: 		void tekrar_9 (void)
;yenikodkendimin.c,680 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	CLRF       tekrar_9_tekrar_sayisi_L0+0
	CLRF       tekrar_9_tekrar_sayisi_L0+1
L_tekrar_997:
	MOVLW      0
	SUBWF      tekrar_9_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_9236
	MOVLW      20
	SUBWF      tekrar_9_tekrar_sayisi_L0+0, 0
L__tekrar_9236:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_998
;yenikodkendimin.c,681 :: 		matrix_yaz9 ();
	CALL       _matrix_yaz9+0
;yenikodkendimin.c,680 :: 		for(tekrar_sayisi=0; tekrar_sayisi<20; tekrar_sayisi++)
	INCF       tekrar_9_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_9_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,681 :: 		matrix_yaz9 ();
	GOTO       L_tekrar_997
L_tekrar_998:
;yenikodkendimin.c,682 :: 		}
L_end_tekrar_9:
	RETURN
; end of _tekrar_9

_tekrar_10:

;yenikodkendimin.c,684 :: 		void tekrar_10 (void)
;yenikodkendimin.c,687 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	CLRF       tekrar_10_tekrar_sayisi_L0+0
	CLRF       tekrar_10_tekrar_sayisi_L0+1
L_tekrar_10100:
	MOVLW      0
	SUBWF      tekrar_10_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_10238
	MOVLW      40
	SUBWF      tekrar_10_tekrar_sayisi_L0+0, 0
L__tekrar_10238:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_10101
;yenikodkendimin.c,688 :: 		matrix_yaz10 ();
	CALL       _matrix_yaz10+0
;yenikodkendimin.c,687 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	INCF       tekrar_10_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_10_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,688 :: 		matrix_yaz10 ();
	GOTO       L_tekrar_10100
L_tekrar_10101:
;yenikodkendimin.c,689 :: 		}
L_end_tekrar_10:
	RETURN
; end of _tekrar_10

_tekrar_11:

;yenikodkendimin.c,691 :: 		void tekrar_11 (void)
;yenikodkendimin.c,694 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	CLRF       tekrar_11_tekrar_sayisi_L0+0
	CLRF       tekrar_11_tekrar_sayisi_L0+1
L_tekrar_11103:
	MOVLW      0
	SUBWF      tekrar_11_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_11240
	MOVLW      40
	SUBWF      tekrar_11_tekrar_sayisi_L0+0, 0
L__tekrar_11240:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_11104
;yenikodkendimin.c,695 :: 		matrix_yaz11 ();
	CALL       _matrix_yaz11+0
;yenikodkendimin.c,694 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	INCF       tekrar_11_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_11_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,695 :: 		matrix_yaz11 ();
	GOTO       L_tekrar_11103
L_tekrar_11104:
;yenikodkendimin.c,696 :: 		}
L_end_tekrar_11:
	RETURN
; end of _tekrar_11

_tekrar_12:

;yenikodkendimin.c,698 :: 		void tekrar_12 (void)
;yenikodkendimin.c,701 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	CLRF       tekrar_12_tekrar_sayisi_L0+0
	CLRF       tekrar_12_tekrar_sayisi_L0+1
L_tekrar_12106:
	MOVLW      0
	SUBWF      tekrar_12_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_12242
	MOVLW      40
	SUBWF      tekrar_12_tekrar_sayisi_L0+0, 0
L__tekrar_12242:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_12107
;yenikodkendimin.c,702 :: 		matrix_yaz12 ();
	CALL       _matrix_yaz12+0
;yenikodkendimin.c,701 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	INCF       tekrar_12_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_12_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,702 :: 		matrix_yaz12 ();
	GOTO       L_tekrar_12106
L_tekrar_12107:
;yenikodkendimin.c,703 :: 		}
L_end_tekrar_12:
	RETURN
; end of _tekrar_12

_tekrar_13:

;yenikodkendimin.c,705 :: 		void tekrar_13 (void)
;yenikodkendimin.c,708 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	CLRF       tekrar_13_tekrar_sayisi_L0+0
	CLRF       tekrar_13_tekrar_sayisi_L0+1
L_tekrar_13109:
	MOVLW      0
	SUBWF      tekrar_13_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_13244
	MOVLW      40
	SUBWF      tekrar_13_tekrar_sayisi_L0+0, 0
L__tekrar_13244:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_13110
;yenikodkendimin.c,709 :: 		matrix_yaz13 ();
	CALL       _matrix_yaz13+0
;yenikodkendimin.c,708 :: 		for(tekrar_sayisi=0; tekrar_sayisi<40; tekrar_sayisi++)
	INCF       tekrar_13_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_13_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,709 :: 		matrix_yaz13 ();
	GOTO       L_tekrar_13109
L_tekrar_13110:
;yenikodkendimin.c,710 :: 		}
L_end_tekrar_13:
	RETURN
; end of _tekrar_13

_tekrar_14:

;yenikodkendimin.c,712 :: 		void tekrar_14 (void)
;yenikodkendimin.c,715 :: 		for(tekrar_sayisi=0; tekrar_sayisi<30; tekrar_sayisi++)
	CLRF       tekrar_14_tekrar_sayisi_L0+0
	CLRF       tekrar_14_tekrar_sayisi_L0+1
L_tekrar_14112:
	MOVLW      0
	SUBWF      tekrar_14_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_14246
	MOVLW      30
	SUBWF      tekrar_14_tekrar_sayisi_L0+0, 0
L__tekrar_14246:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_14113
;yenikodkendimin.c,716 :: 		matrix_yaz14 ();
	CALL       _matrix_yaz14+0
;yenikodkendimin.c,715 :: 		for(tekrar_sayisi=0; tekrar_sayisi<30; tekrar_sayisi++)
	INCF       tekrar_14_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_14_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,716 :: 		matrix_yaz14 ();
	GOTO       L_tekrar_14112
L_tekrar_14113:
;yenikodkendimin.c,717 :: 		}
L_end_tekrar_14:
	RETURN
; end of _tekrar_14

_tekrar_15:

;yenikodkendimin.c,719 :: 		void tekrar_15 (void)
;yenikodkendimin.c,722 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	CLRF       tekrar_15_tekrar_sayisi_L0+0
	CLRF       tekrar_15_tekrar_sayisi_L0+1
L_tekrar_15115:
	MOVLW      0
	SUBWF      tekrar_15_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_15248
	MOVLW      50
	SUBWF      tekrar_15_tekrar_sayisi_L0+0, 0
L__tekrar_15248:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_15116
;yenikodkendimin.c,723 :: 		matrix_yaz15 ();
	CALL       _matrix_yaz15+0
;yenikodkendimin.c,722 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	INCF       tekrar_15_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_15_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,723 :: 		matrix_yaz15 ();
	GOTO       L_tekrar_15115
L_tekrar_15116:
;yenikodkendimin.c,724 :: 		}
L_end_tekrar_15:
	RETURN
; end of _tekrar_15

_tekrar_16:

;yenikodkendimin.c,726 :: 		void tekrar_16 (void)
;yenikodkendimin.c,729 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	CLRF       tekrar_16_tekrar_sayisi_L0+0
	CLRF       tekrar_16_tekrar_sayisi_L0+1
L_tekrar_16118:
	MOVLW      0
	SUBWF      tekrar_16_tekrar_sayisi_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tekrar_16250
	MOVLW      50
	SUBWF      tekrar_16_tekrar_sayisi_L0+0, 0
L__tekrar_16250:
	BTFSC      STATUS+0, 0
	GOTO       L_tekrar_16119
;yenikodkendimin.c,730 :: 		matrix_yaz16 ();
	CALL       _matrix_yaz16+0
;yenikodkendimin.c,729 :: 		for(tekrar_sayisi=0; tekrar_sayisi<50; tekrar_sayisi++)
	INCF       tekrar_16_tekrar_sayisi_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       tekrar_16_tekrar_sayisi_L0+1, 1
;yenikodkendimin.c,730 :: 		matrix_yaz16 ();
	GOTO       L_tekrar_16118
L_tekrar_16119:
;yenikodkendimin.c,731 :: 		}
L_end_tekrar_16:
	RETURN
; end of _tekrar_16

_matrix_yaz:

;yenikodkendimin.c,736 :: 		void matrix_yaz (void)
;yenikodkendimin.c,737 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz121:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz252
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz252:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz122
;yenikodkendimin.c,739 :: 		PORTB=animasyon[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	ADDLW      _animasyon+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;yenikodkendimin.c,740 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,741 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz124:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz124
	NOP
;yenikodkendimin.c,742 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,737 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,743 :: 		}
	GOTO       L_matrix_yaz121
L_matrix_yaz122:
;yenikodkendimin.c,744 :: 		}
L_end_matrix_yaz:
	RETURN
; end of _matrix_yaz

_matrix_yaz2:

;yenikodkendimin.c,746 :: 		void matrix_yaz2 (void)
;yenikodkendimin.c,747 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz2125:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz2254
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz2254:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz2126
;yenikodkendimin.c,749 :: 		PORTB= isim_soyisim[i+j];
	MOVF       _j+0, 0
	ADDWF      _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _j+1, 0
	MOVWF      R0+1
	MOVLW      _isim_soyisim+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_isim_soyisim+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,750 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,751 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz2128:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz2128
	NOP
;yenikodkendimin.c,752 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,747 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,754 :: 		}
	GOTO       L_matrix_yaz2125
L_matrix_yaz2126:
;yenikodkendimin.c,755 :: 		}
L_end_matrix_yaz2:
	RETURN
; end of _matrix_yaz2

_matrix_yaz3:

;yenikodkendimin.c,757 :: 		void matrix_yaz3 (void)
;yenikodkendimin.c,758 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz3129:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz3256
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz3256:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz3130
;yenikodkendimin.c,760 :: 		PORTB= animasyon_2[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_2+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_2+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,761 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,762 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz3132:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz3132
	NOP
;yenikodkendimin.c,763 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,758 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,764 :: 		}
	GOTO       L_matrix_yaz3129
L_matrix_yaz3130:
;yenikodkendimin.c,765 :: 		}
L_end_matrix_yaz3:
	RETURN
; end of _matrix_yaz3

_matrix_yaz4:

;yenikodkendimin.c,768 :: 		void matrix_yaz4 (void)
;yenikodkendimin.c,769 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz4133:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz4258
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz4258:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz4134
;yenikodkendimin.c,771 :: 		PORTB= animasyon_3[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_3+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_3+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,772 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,773 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz4136:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz4136
	NOP
;yenikodkendimin.c,774 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,769 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,775 :: 		}
	GOTO       L_matrix_yaz4133
L_matrix_yaz4134:
;yenikodkendimin.c,776 :: 		}
L_end_matrix_yaz4:
	RETURN
; end of _matrix_yaz4

_matrix_yaz5:

;yenikodkendimin.c,779 :: 		void matrix_yaz5 (void)
;yenikodkendimin.c,780 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz5137:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz5260
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz5260:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz5138
;yenikodkendimin.c,782 :: 		PORTB= animasyon_5[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_5+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_5+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,783 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,784 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz5140:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz5140
	NOP
;yenikodkendimin.c,785 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,780 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,786 :: 		}
	GOTO       L_matrix_yaz5137
L_matrix_yaz5138:
;yenikodkendimin.c,787 :: 		}
L_end_matrix_yaz5:
	RETURN
; end of _matrix_yaz5

_matrix_yaz6:

;yenikodkendimin.c,791 :: 		void matrix_yaz6 (void)
;yenikodkendimin.c,792 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz6141:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz6262
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz6262:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz6142
;yenikodkendimin.c,794 :: 		PORTB= animasyon_6[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_6+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_6+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,795 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,796 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz6144:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz6144
	NOP
;yenikodkendimin.c,797 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,792 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,798 :: 		}
	GOTO       L_matrix_yaz6141
L_matrix_yaz6142:
;yenikodkendimin.c,799 :: 		}
L_end_matrix_yaz6:
	RETURN
; end of _matrix_yaz6

_matrix_yaz7:

;yenikodkendimin.c,801 :: 		void matrix_yaz7 (void)
;yenikodkendimin.c,802 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz7145:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz7264
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz7264:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz7146
;yenikodkendimin.c,804 :: 		PORTB= animasyon_7[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_7+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_7+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,805 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,806 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz7148:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz7148
	NOP
;yenikodkendimin.c,807 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,802 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,808 :: 		}
	GOTO       L_matrix_yaz7145
L_matrix_yaz7146:
;yenikodkendimin.c,809 :: 		}
L_end_matrix_yaz7:
	RETURN
; end of _matrix_yaz7

_matrix_yaz8:

;yenikodkendimin.c,811 :: 		void matrix_yaz8 (void)
;yenikodkendimin.c,812 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz8149:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz8266
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz8266:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz8150
;yenikodkendimin.c,814 :: 		PORTB= animasyon_8[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_8+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_8+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,815 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,816 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz8152:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz8152
	NOP
;yenikodkendimin.c,817 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,812 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,818 :: 		}
	GOTO       L_matrix_yaz8149
L_matrix_yaz8150:
;yenikodkendimin.c,819 :: 		}
L_end_matrix_yaz8:
	RETURN
; end of _matrix_yaz8

_matrix_yaz9:

;yenikodkendimin.c,821 :: 		void matrix_yaz9 (void)
;yenikodkendimin.c,822 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz9153:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz9268
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz9268:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz9154
;yenikodkendimin.c,824 :: 		PORTB= animasyon_9[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_9+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_9+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,825 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,826 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz9156:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz9156
	NOP
;yenikodkendimin.c,827 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,822 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,828 :: 		}
	GOTO       L_matrix_yaz9153
L_matrix_yaz9154:
;yenikodkendimin.c,829 :: 		}
L_end_matrix_yaz9:
	RETURN
; end of _matrix_yaz9

_matrix_yaz10:

;yenikodkendimin.c,831 :: 		void matrix_yaz10 (void)
;yenikodkendimin.c,832 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz10157:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz10270
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz10270:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz10158
;yenikodkendimin.c,834 :: 		PORTB= animasyon_10[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 0
	MOVWF      R3+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _j+1, 0
	MOVWF      R3+1
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      _animasyon_10+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_10+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,835 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,836 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz10160:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz10160
	NOP
;yenikodkendimin.c,837 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,832 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,838 :: 		}
	GOTO       L_matrix_yaz10157
L_matrix_yaz10158:
;yenikodkendimin.c,839 :: 		}
L_end_matrix_yaz10:
	RETURN
; end of _matrix_yaz10

_matrix_yaz11:

;yenikodkendimin.c,842 :: 		void matrix_yaz11 (void)
;yenikodkendimin.c,843 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz11161:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz11272
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz11272:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz11162
;yenikodkendimin.c,845 :: 		PORTB= animasyon_11[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_11+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_11+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,846 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,847 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz11164:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz11164
	NOP
;yenikodkendimin.c,848 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,843 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,849 :: 		}
	GOTO       L_matrix_yaz11161
L_matrix_yaz11162:
;yenikodkendimin.c,850 :: 		}
L_end_matrix_yaz11:
	RETURN
; end of _matrix_yaz11

_matrix_yaz12:

;yenikodkendimin.c,852 :: 		void matrix_yaz12 (void)
;yenikodkendimin.c,853 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz12165:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz12274
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz12274:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz12166
;yenikodkendimin.c,855 :: 		PORTB= animasyon_12[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_12+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_12+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,856 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,857 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz12168:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz12168
	NOP
;yenikodkendimin.c,858 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,853 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,859 :: 		}
	GOTO       L_matrix_yaz12165
L_matrix_yaz12166:
;yenikodkendimin.c,860 :: 		}
L_end_matrix_yaz12:
	RETURN
; end of _matrix_yaz12

_matrix_yaz13:

;yenikodkendimin.c,862 :: 		void matrix_yaz13 (void)
;yenikodkendimin.c,863 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz13169:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz13276
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz13276:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz13170
;yenikodkendimin.c,865 :: 		PORTB= animasyon_13[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_13+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_13+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,866 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,867 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz13172:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz13172
	NOP
;yenikodkendimin.c,868 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,863 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,869 :: 		}
	GOTO       L_matrix_yaz13169
L_matrix_yaz13170:
;yenikodkendimin.c,870 :: 		}
L_end_matrix_yaz13:
	RETURN
; end of _matrix_yaz13

_matrix_yaz14:

;yenikodkendimin.c,872 :: 		void matrix_yaz14 (void)
;yenikodkendimin.c,873 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz14173:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz14278
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz14278:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz14174
;yenikodkendimin.c,875 :: 		PORTB= animasyon_14[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_14+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_14+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,876 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,877 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz14176:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz14176
	NOP
;yenikodkendimin.c,878 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,873 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,879 :: 		}
	GOTO       L_matrix_yaz14173
L_matrix_yaz14174:
;yenikodkendimin.c,880 :: 		}
L_end_matrix_yaz14:
	RETURN
; end of _matrix_yaz14

_matrix_yaz15:

;yenikodkendimin.c,882 :: 		void matrix_yaz15 (void)
;yenikodkendimin.c,883 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz15177:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz15280
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz15280:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz15178
;yenikodkendimin.c,885 :: 		PORTB= animasyon_15[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_15+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_15+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,886 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,887 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz15180:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz15180
	NOP
;yenikodkendimin.c,888 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,883 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,889 :: 		}
	GOTO       L_matrix_yaz15177
L_matrix_yaz15178:
;yenikodkendimin.c,890 :: 		}
L_end_matrix_yaz15:
	RETURN
; end of _matrix_yaz15

_matrix_yaz16:

;yenikodkendimin.c,893 :: 		void matrix_yaz16 (void)
;yenikodkendimin.c,894 :: 		{    for(j=0;j<8;j++ )
	CLRF       _j+0
	CLRF       _j+1
L_matrix_yaz16181:
	MOVLW      0
	SUBWF      _j+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__matrix_yaz16282
	MOVLW      8
	SUBWF      _j+0, 0
L__matrix_yaz16282:
	BTFSC      STATUS+0, 0
	GOTO       L_matrix_yaz16182
;yenikodkendimin.c,896 :: 		PORTB= animasyon_16[i*8+j];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       _j+0, 0
	ADDWF      R0+0, 1
	MOVF       _j+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVLW      _animasyon_16+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_animasyon_16+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTB+0
;yenikodkendimin.c,897 :: 		PORTD=sutun_tablo[j];
	MOVF       _j+0, 0
	ADDLW      _sutun_tablo+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;yenikodkendimin.c,898 :: 		delay_us(500);
	MOVLW      166
	MOVWF      R13+0
L_matrix_yaz16184:
	DECFSZ     R13+0, 1
	GOTO       L_matrix_yaz16184
	NOP
;yenikodkendimin.c,899 :: 		PORTD=0;
	CLRF       PORTD+0
;yenikodkendimin.c,894 :: 		{    for(j=0;j<8;j++ )
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;yenikodkendimin.c,900 :: 		}
	GOTO       L_matrix_yaz16181
L_matrix_yaz16182:
;yenikodkendimin.c,901 :: 		}
L_end_matrix_yaz16:
	RETURN
; end of _matrix_yaz16
