#ifndef board_pm_h
#define board_pm_h

/*******************************************
 *              LCD MODULE
 ******************************************/
#define LCD_VREG_NUM	2
/* lcd 1.8v */
#define LCD_VREG0       "gp4"
/* lcd 2.6v */
#define LCD_VREG1       "gp1"

#define LCD_VREG(x)	\
	((x == 0) ? (LCD_VREG0) : ((x == 1) ? (LCD_VREG1) : NULL))

#define MMC_VREG	"wlan"


/*******************************************
 *              BT MODULE
 ******************************************/
#define BT_VREG 	"msme2"
#define BT_VREG_LEVEL 	1200
#define BT_WLAN_POWER_SAME
#define BT_VREG_LEVEL_NOSET


/*******************************************
 *              WLAN MODULE
 ******************************************/
#define WLAN_VREG	"msme2"


/*******************************************
 *              CAMERA MODULE
 ******************************************/
#define CAMERA_VREG_NUM		3
#define CAMERA_VREG_VDDA	"gp6"
#define CAMERA_VREG_VDDIO	NULL	/* enable by gpio 1 */
#define CAMERA_VREG_VDDC	NULL	/* enable by gpio 0 */

#define CAMERA_VREG(x)	\
	(((x == 0) ? (CAMERA_VREG_VDDA) : ((x == 1) ? (CAMERA_VREG_VDDIO) : CAMERA_VREG_VDDC)))


/*******************************************
 *              RGB leds MODULE
 ******************************************/
#define MPP_R_PIN		PM_MPP_1
#define MPP_G_PIN		PM_MPP_19
#define MPP_B_PIN		PM_MPP_20


#endif /* board_pm_h */
