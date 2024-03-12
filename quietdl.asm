;Sound: Quiet Downloads
;Version: Sound1
;
INCLUDE "WRISTAPP.I"
;
; This is the default sound table
;
DEF_SOUNDS
        db      SP_1-SD_1

        db      SD_1-DEF_SOUNDS ; 0001: 0b   BUTTON BEEP
        db      SD_2-DEF_SOUNDS ; 0002: 0c   RETURN TO TIME
        db      SD_3-DEF_SOUNDS ; 0003: 0d   HOURLY CHIME
        db      SD_4-DEF_SOUNDS ; 0004: 0e   CONFIRMATION
        db      SD_5-DEF_SOUNDS ; 0005: 0f   APPOINTMENT BEEP
        db      SD_5-DEF_SOUNDS ; 0006: 0f   ALARM BEEP
        db      SD_5-DEF_SOUNDS ; 0007: 0f   PROGRAM DOWNLOAD
        db      SD_5-DEF_SOUNDS ; 0008: 0f   EXTRA
        db      SD_6-DEF_SOUNDS ; 0009: 11   COMM ERROR
        db      SD_7-DEF_SOUNDS ; 000a: 12   COMM DONE

;
; This is the soundlet count table which contains the duration
; counts for the individual soundlets
;
SD_1    db      SND_END+1
SD_2    db      SND_END+1
SD_3    db      SND_END+2
SD_4    db      SND_END+4
SD_5    db      10,SND_END+40
SD_6    db      SND_END+1
SD_7    db      SND_END+2

;
; This is the soundlet pointer table which contains the pointers to the soundlets
;
SP_1    db      SL_2-DEF_SOUNDS
SP_2    db      SL_1-DEF_SOUNDS
SP_3    db      SL_3-DEF_SOUNDS
SP_4    db      SL_2-DEF_SOUNDS
SP_5    db      SL_4-DEF_SOUNDS
        db      SL_5-DEF_SOUNDS
SP_6    db      SL_6-DEF_SOUNDS
SP_7    db      SL_2-DEF_SOUNDS

;
; These are the soundlets themselves.  The +1 or other number
; indicates the duration for the sound.
;
SL_1    db      TONE_HI_GSHARP+1
        db      TONE_END

SL_2    db      TONE_MID_C+1
        db      TONE_END

SL_3    db      TONE_MID_C+2
        db      TONE_PAUSE+2
        db      TONE_END

SL_4    db      TONE_HI_C+2
        db      TONE_PAUSE+2
        db      TONE_HI_C+2
        db      TONE_PAUSE+10
        db      TONE_END

SL_5    db      TONE_HI_C+2
        db      TONE_PAUSE+2
        db      TONE_END

SL_6    db      TONE_HI_F+1
        db      TONE_LO_GSHARP+1
        db      TONE_VHI_C+1
        db      TONE_MID_D+3
        db      TONE_END

;
; This is the tone that the comm app plays for each record
;
        db      TONE_END
