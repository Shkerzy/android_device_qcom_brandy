#ifndef board_input_h
#define board_input_h

/*******************************************
 *		Keypad MODULE
 ******************************************/
#ifndef KEY_RESERVED
#define KEY_RESERVED	0
#endif

#ifndef KEY_CENTER
#define KEY_CENTER	232
#endif

#ifndef KEY_CAMERA
#define KEY_CAMERA	212
#endif

#ifndef KEY_END
#define KEY_END		107
#endif

/* keypad input */
#define KEYPAD_COL		41, 40, 39, 38, 37
#define KEYPAD_COL_LINES	5
/* keypad output */
#define KEYPAD_ROW		35, 34, 33, 32
#define KEYPAD_ROW_LINES	4

#define KEYMAP_INDEX(row, col) ((row) * KEYPAD_COL_LINES + (col))

/* For LK, KEY_VOLUMEDOWN is fastboot and KEY_VOLUMEUP is recovery */
#define KEYPAD_LAYOUT				\
	[KEYMAP_INDEX(0, 0)] = KEY_UP,		\
	[KEYMAP_INDEX(0, 1)] = KEY_CENTER,	\
	[KEYMAP_INDEX(0, 2)] = KEY_LEFT,	\
	[KEYMAP_INDEX(0, 3)] = KEY_RIGHT,	\
	[KEYMAP_INDEX(0, 4)] = KEY_DOWN,	\
	[KEYMAP_INDEX(1, 0)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(1, 1)] = KEY_SEND,	\
	[KEYMAP_INDEX(1, 2)] = KEY_END,		\
	[KEYMAP_INDEX(1, 3)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(1, 4)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(2, 0)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(2, 1)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(2, 2)] = KEY_VOLUMEDOWN,	\
	[KEYMAP_INDEX(2, 3)] = KEY_VOLUMEUP,	\
	[KEYMAP_INDEX(2, 4)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(3, 0)] = KEY_F9,		\
	[KEYMAP_INDEX(3, 1)] = KEY_CAMERA,	\
	[KEYMAP_INDEX(3, 2)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(3, 3)] = KEY_RESERVED,	\
	[KEYMAP_INDEX(3, 4)] = KEY_RESERVED	

/* the name should be exactly same as *.kcm file */
#define KEYPAD_NAME	"7k_ffa_keypad"

/*******************************************
 *		TOUCH PANEL(CTP) MODULE
 ******************************************/
#define VK_YHIGHT 			0
#define VKEY_MENU_X_POINT 	40
#define VKEY_HOME_X_POINT 	120
#define VKEY_SEARCH_X_POINT 200
#define VKEY_BACK_X_POINT 	280
#define VKEY_Y_POINT 		500
#define VKEY_WIDTH 			70
#define VKEY_HIGHT 			30
#define TS_DIS_MAXX 		320
#define TS_DIS_MAXY 		480
//#define TS_REPORT_REVERSE	1
#define TS_FIRMWARE_NAME    "touch_ft5202_fm.bin"

#endif /* board_input_h */
