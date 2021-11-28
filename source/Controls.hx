package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var ONE1 = 'one1';
	var ONE1_P = 'one1-press';
	var ONE1_R = 'one1-release';

	var TWO1 = 'two1';
	var TWO1_P = 'two1-press';
	var TWO1_R = 'two1-release';
	var TWO2 = 'two2';
	var TWO2_P = 'two2-press';
	var TWO2_R = 'two2-release';

	var THREE1 = 'three1';
	var THREE1_P = 'three1-press';
	var THREE1_R = 'three1-release';
	var THREE2 = 'three2';
	var THREE2_P = 'three2-press';
	var THREE2_R = 'three2-release';
	var THREE3 = 'three3';
	var THREE3_P = 'three3-press';
	var THREE3_R = 'three3-release';

	var FIVE1 = 'five1';
	var FIVE1_P = 'five1-press';
	var FIVE1_R = 'five1-release';
	var FIVE2 = 'five2';
	var FIVE2_P = 'five2-press';
	var FIVE2_R = 'five2-release';
	var FIVE3 = 'five3';
	var FIVE3_P = 'five3-press';
	var FIVE3_R = 'five3-release';
	var FIVE4 = 'five4';
	var FIVE4_P = 'five4-press';
	var FIVE4_R = 'five4-release';
	var FIVE5 = 'five5';
	var FIVE5_P = 'five5-press';
	var FIVE5_R = 'five5-release';

	var SIX1 = 'six1';
	var SIX1_P = 'six1-press';
	var SIX1_R = 'six1-release';
	var SIX2 = 'six2';
	var SIX2_P = 'six2-press';
	var SIX2_R = 'six2-release';
	var SIX3 = 'six3';
	var SIX3_P = 'six3-press';
	var SIX3_R = 'six3-release';
	var SIX4 = 'six4';
	var SIX4_P = 'six4-press';
	var SIX4_R = 'six4-release';
	var SIX5 = 'six5';
	var SIX5_P = 'six5-press';
	var SIX5_R = 'six5-release';
	var SIX6 = 'six6';
	var SIX6_P = 'six6-press';
	var SIX6_R = 'six6-release';

	var SEVEN1 = 'seven1';
	var SEVEN1_P = 'seven1-press';
	var SEVEN1_R = 'seven1-release';
	var SEVEN2 = 'seven2';
	var SEVEN2_P = 'seven2-press';
	var SEVEN2_R = 'seven2-release';
	var SEVEN3 = 'seven3';
	var SEVEN3_P = 'seven3-press';
	var SEVEN3_R = 'seven3-release';
	var SEVEN4 = 'seven4';
	var SEVEN4_P = 'seven4-press';
	var SEVEN4_R = 'seven4-release';
	var SEVEN5 = 'seven5';
	var SEVEN5_P = 'seven5-press';
	var SEVEN5_R = 'seven5-release';
	var SEVEN6 = 'seven6';
	var SEVEN6_P = 'seven6-press';
	var SEVEN6_R = 'seven6-release';
	var SEVEN7 = 'seven7';
	var SEVEN7_P = 'seven7-press';
	var SEVEN7_R = 'seven7-release';

	var EIGHT1 = 'eight1';
	var EIGHT1_P = 'eight1-press';
	var EIGHT1_R = 'eight1-release';
	var EIGHT2 = 'eight2';
	var EIGHT2_P = 'eight2-press';
	var EIGHT2_R = 'eight2-release';
	var EIGHT3 = 'eight3';
	var EIGHT3_P = 'eight3-press';
	var EIGHT3_R = 'eight3-release';
	var EIGHT4 = 'eight4';
	var EIGHT4_P = 'eight4-press';
	var EIGHT4_R = 'eight4-release';
	var EIGHT5 = 'eight5';
	var EIGHT5_P = 'eight5-press';
	var EIGHT5_R = 'eight5-release';
	var EIGHT6 = 'eight6';
	var EIGHT6_P = 'eight6-press';
	var EIGHT6_R = 'eight6-release';
	var EIGHT7 = 'eight7';
	var EIGHT7_P = 'eight7-press';
	var EIGHT7_R = 'eight7-release';
	var EIGHT8 = 'eight8';
	var EIGHT8_P = 'eight8-press';
	var EIGHT8_R = 'eight8-release';

	var NINE1 = 'nine1';
	var NINE1_P = 'nine1-press';
	var NINE1_R = 'nine1-release';
	var NINE2 = 'nine2';
	var NINE2_P = 'nine2-press';
	var NINE2_R = 'nine2-release';
	var NINE3 = 'nine3';
	var NINE3_P = 'nine3-press';
	var NINE3_R = 'nine3-release';
	var NINE4 = 'nine4';
	var NINE4_P = 'nine4-press';
	var NINE4_R = 'nine4-release';
	var NINE5 = 'nine5';
	var NINE5_P = 'nine5-press';
	var NINE5_R = 'nine5-release';
	var NINE6 = 'nine6';
	var NINE6_P = 'nine6-press';
	var NINE6_R = 'nine6-release';
	var NINE7 = 'nine7';
	var NINE7_P = 'nine7-press';
	var NINE7_R = 'nine7-release';
	var NINE8 = 'nine8';
	var NINE8_P = 'nine8-press';
	var NINE8_R = 'nine8-release';
	var NINE9 = 'nine9';
	var NINE9_P = 'nine9-press';
	var NINE9_R = 'nine9-release';
}
#else
@:enum
abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var ONE1 = 'one1';
	var ONE1_P = 'one1-press';
	var ONE1_R = 'one1-release';

	var TWO1 = 'two1';
	var TWO1_P = 'two1-press';
	var TWO1_R = 'two1-release';
	var TWO2 = 'two2';
	var TWO2_P = 'two2-press';
	var TWO2_R = 'two2-release';

	var THREE1 = 'three1';
	var THREE1_P = 'three1-press';
	var THREE1_R = 'three1-release';
	var THREE2 = 'three2';
	var THREE2_P = 'three2-press';
	var THREE2_R = 'three2-release';
	var THREE3 = 'three3';
	var THREE3_P = 'three3-press';
	var THREE3_R = 'three3-release';

	var FIVE1 = 'five1';
	var FIVE1_P = 'five1-press';
	var FIVE1_R = 'five1-release';
	var FIVE2 = 'five2';
	var FIVE2_P = 'five2-press';
	var FIVE2_R = 'five2-release';
	var FIVE3 = 'five3';
	var FIVE3_P = 'five3-press';
	var FIVE3_R = 'five3-release';
	var FIVE4 = 'five4';
	var FIVE4_P = 'five4-press';
	var FIVE4_R = 'five4-release';
	var FIVE5 = 'five5';
	var FIVE5_P = 'five5-press';
	var FIVE5_R = 'five5-release';

	var SIX1 = 'six1';
	var SIX1_P = 'six1-press';
	var SIX1_R = 'six1-release';
	var SIX2 = 'six2';
	var SIX2_P = 'six2-press';
	var SIX2_R = 'six2-release';
	var SIX3 = 'six3';
	var SIX3_P = 'six3-press';
	var SIX3_R = 'six3-release';
	var SIX4 = 'six4';
	var SIX4_P = 'six4-press';
	var SIX4_R = 'six4-release';
	var SIX5 = 'six5';
	var SIX5_P = 'six5-press';
	var SIX5_R = 'six5-release';
	var SIX6 = 'six6';
	var SIX6_P = 'six6-press';
	var SIX6_R = 'six6-release';

	var SEVEN1 = 'seven1';
	var SEVEN1_P = 'seven1-press';
	var SEVEN1_R = 'seven1-release';
	var SEVEN2 = 'seven2';
	var SEVEN2_P = 'seven2-press';
	var SEVEN2_R = 'seven2-release';
	var SEVEN3 = 'seven3';
	var SEVEN3_P = 'seven3-press';
	var SEVEN3_R = 'seven3-release';
	var SEVEN4 = 'seven4';
	var SEVEN4_P = 'seven4-press';
	var SEVEN4_R = 'seven4-release';
	var SEVEN5 = 'seven5';
	var SEVEN5_P = 'seven5-press';
	var SEVEN5_R = 'seven5-release';
	var SEVEN6 = 'seven6';
	var SEVEN6_P = 'seven6-press';
	var SEVEN6_R = 'seven6-release';
	var SEVEN7 = 'seven7';
	var SEVEN7_P = 'seven7-press';
	var SEVEN7_R = 'seven7-release';

	var EIGHT1 = 'eight1';
	var EIGHT1_P = 'eight1-press';
	var EIGHT1_R = 'eight1-release';
	var EIGHT2 = 'eight2';
	var EIGHT2_P = 'eight2-press';
	var EIGHT2_R = 'eight2-release';
	var EIGHT3 = 'eight3';
	var EIGHT3_P = 'eight3-press';
	var EIGHT3_R = 'eight3-release';
	var EIGHT4 = 'eight4';
	var EIGHT4_P = 'eight4-press';
	var EIGHT4_R = 'eight4-release';
	var EIGHT5 = 'eight5';
	var EIGHT5_P = 'eight5-press';
	var EIGHT5_R = 'eight5-release';
	var EIGHT6 = 'eight6';
	var EIGHT6_P = 'eight6-press';
	var EIGHT6_R = 'eight6-release';
	var EIGHT7 = 'eight7';
	var EIGHT7_P = 'eight7-press';
	var EIGHT7_R = 'eight7-release';
	var EIGHT8 = 'eight8';
	var EIGHT8_P = 'eight8-press';
	var EIGHT8_R = 'eight8-release';

	var NINE1 = 'nine1';
	var NINE1_P = 'nine1-press';
	var NINE1_R = 'nine1-release';
	var NINE2 = 'nine2';
	var NINE2_P = 'nine2-press';
	var NINE2_R = 'nine2-release';
	var NINE3 = 'nine3';
	var NINE3_P = 'nine3-press';
	var NINE3_R = 'nine3-release';
	var NINE4 = 'nine4';
	var NINE4_P = 'nine4-press';
	var NINE4_R = 'nine4-release';
	var NINE5 = 'nine5';
	var NINE5_P = 'nine5-press';
	var NINE5_R = 'nine5-release';
	var NINE6 = 'nine6';
	var NINE6_P = 'nine6-press';
	var NINE6_R = 'nine6-release';
	var NINE7 = 'nine7';
	var NINE7_P = 'nine7-press';
	var NINE7_R = 'nine7-release';
	var NINE8 = 'nine8';
	var NINE8_P = 'nine8-press';
	var NINE8_R = 'nine8-release';
	var NINE9 = 'nine9';
	var NINE9_P = 'nine9-press';
	var NINE9_R = 'nine9-release';
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UI_UP;
	UI_LEFT;
	UI_RIGHT;
	UI_DOWN;
	NOTE_UP;
	NOTE_LEFT;
	NOTE_RIGHT;
	NOTE_DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;
	
	A1;
	A2;
	A3;
	A4;
	A5;
	A6;
	A7;

	B1;
	B2;
	B3;
	B4;
	B5;
	B6;
	B7;
	B8;
	B9;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 * 
 * btw zoro is noob
 * he uses like 3 more functions
 * over here we swag with the ultra complicated
 * flx action set controls code
 * 
 * :getfake:
 * 
 * I ALSO TOOK THE TIME TO MAKE CONTROLS FOR EACH AMMO
 * PLEASE CREDIT ME I FEEL DEAD
 */
class Controls extends FlxActionSet
{
	var _ui_up = new FlxActionDigital(Action.UI_UP);
	var _ui_left = new FlxActionDigital(Action.UI_LEFT);
	var _ui_right = new FlxActionDigital(Action.UI_RIGHT);
	var _ui_down = new FlxActionDigital(Action.UI_DOWN);
	var _ui_upP = new FlxActionDigital(Action.UI_UP_P);
	var _ui_leftP = new FlxActionDigital(Action.UI_LEFT_P);
	var _ui_rightP = new FlxActionDigital(Action.UI_RIGHT_P);
	var _ui_downP = new FlxActionDigital(Action.UI_DOWN_P);
	var _ui_upR = new FlxActionDigital(Action.UI_UP_R);
	var _ui_leftR = new FlxActionDigital(Action.UI_LEFT_R);
	var _ui_rightR = new FlxActionDigital(Action.UI_RIGHT_R);
	var _ui_downR = new FlxActionDigital(Action.UI_DOWN_R);
	var _note_up = new FlxActionDigital(Action.NOTE_UP);
	var _note_left = new FlxActionDigital(Action.NOTE_LEFT);
	var _note_right = new FlxActionDigital(Action.NOTE_RIGHT);
	var _note_down = new FlxActionDigital(Action.NOTE_DOWN);
	var _note_upP = new FlxActionDigital(Action.NOTE_UP_P);
	var _note_leftP = new FlxActionDigital(Action.NOTE_LEFT_P);
	var _note_rightP = new FlxActionDigital(Action.NOTE_RIGHT_P);
	var _note_downP = new FlxActionDigital(Action.NOTE_DOWN_P);
	var _note_upR = new FlxActionDigital(Action.NOTE_UP_R);
	var _note_leftR = new FlxActionDigital(Action.NOTE_LEFT_R);
	var _note_rightR = new FlxActionDigital(Action.NOTE_RIGHT_R);
	var _note_downR = new FlxActionDigital(Action.NOTE_DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);

	var _one1 = new FlxActionDigital(Action.ONE1);
	var _one1P = new FlxActionDigital(Action.ONE1_P);
	var _one1R = new FlxActionDigital(Action.ONE1_R);

	var _two1 = new FlxActionDigital(Action.TWO1);
	var _two1P = new FlxActionDigital(Action.TWO1_P);
	var _two1R = new FlxActionDigital(Action.TWO1_R);
	var _two2 = new FlxActionDigital(Action.TWO2);
	var _two2P = new FlxActionDigital(Action.TWO2_P);
	var _two2R = new FlxActionDigital(Action.TWO2_R);

	var _three1 = new FlxActionDigital(Action.THREE1);
	var _three1P = new FlxActionDigital(Action.THREE1_P);
	var _three1R = new FlxActionDigital(Action.THREE1_R);
	var _three2 = new FlxActionDigital(Action.THREE2);
	var _three2P = new FlxActionDigital(Action.THREE2_P);
	var _three2R = new FlxActionDigital(Action.THREE2_R);
	var _three3 = new FlxActionDigital(Action.THREE3);
	var _three3P = new FlxActionDigital(Action.THREE3_P);
	var _three3R = new FlxActionDigital(Action.THREE3_R);

	var _five1 = new FlxActionDigital(Action.FIVE1);
	var _five1P = new FlxActionDigital(Action.FIVE1_P);
	var _five1R = new FlxActionDigital(Action.FIVE1_R);
	var _five2 = new FlxActionDigital(Action.FIVE2);
	var _five2P = new FlxActionDigital(Action.FIVE2_P);
	var _five2R = new FlxActionDigital(Action.FIVE2_R);
	var _five3 = new FlxActionDigital(Action.FIVE3);
	var _five3P = new FlxActionDigital(Action.FIVE3_P);
	var _five3R = new FlxActionDigital(Action.FIVE3_R);
	var _five4 = new FlxActionDigital(Action.FIVE4);
	var _five4P = new FlxActionDigital(Action.FIVE4_P);
	var _five4R = new FlxActionDigital(Action.FIVE4_R);
	var _five5 = new FlxActionDigital(Action.FIVE5);
	var _five5P = new FlxActionDigital(Action.FIVE5_P);
	var _five5R = new FlxActionDigital(Action.FIVE5_R);

	var _six1 = new FlxActionDigital(Action.SIX1);
	var _six1P = new FlxActionDigital(Action.SIX1_P);
	var _six1R = new FlxActionDigital(Action.SIX1_R);
	var _six2 = new FlxActionDigital(Action.SIX2);
	var _six2P = new FlxActionDigital(Action.SIX2_P);
	var _six2R = new FlxActionDigital(Action.SIX2_R);
	var _six3 = new FlxActionDigital(Action.SIX3);
	var _six3P = new FlxActionDigital(Action.SIX3_P);
	var _six3R = new FlxActionDigital(Action.SIX3_R);
	var _six4 = new FlxActionDigital(Action.SIX4);
	var _six4P = new FlxActionDigital(Action.SIX4_P);
	var _six4R = new FlxActionDigital(Action.SIX4_R);
	var _six5 = new FlxActionDigital(Action.SIX5);
	var _six5P = new FlxActionDigital(Action.SIX5_P);
	var _six5R = new FlxActionDigital(Action.SIX5_R);
	var _six6 = new FlxActionDigital(Action.SIX6);
	var _six6P = new FlxActionDigital(Action.SIX6_P);
	var _six6R = new FlxActionDigital(Action.SIX6_R);

	var _sev1 = new FlxActionDigital(Action.SEVEN1);
	var _sev1P = new FlxActionDigital(Action.SEVEN1_P);
	var _sev1R = new FlxActionDigital(Action.SEVEN1_R);
	var _sev2 = new FlxActionDigital(Action.SEVEN2);
	var _sev2P = new FlxActionDigital(Action.SEVEN2_P);
	var _sev2R = new FlxActionDigital(Action.SEVEN2_R);
	var _sev3 = new FlxActionDigital(Action.SEVEN3);
	var _sev3P = new FlxActionDigital(Action.SEVEN3_P);
	var _sev3R = new FlxActionDigital(Action.SEVEN3_R);
	var _sev4 = new FlxActionDigital(Action.SEVEN4);
	var _sev4P = new FlxActionDigital(Action.SEVEN4_P);
	var _sev4R = new FlxActionDigital(Action.SEVEN4_R);
	var _sev5 = new FlxActionDigital(Action.SEVEN5);
	var _sev5P = new FlxActionDigital(Action.SEVEN5_P);
	var _sev5R = new FlxActionDigital(Action.SEVEN5_R);
	var _sev6 = new FlxActionDigital(Action.SEVEN6);
	var _sev6P = new FlxActionDigital(Action.SEVEN6_P);
	var _sev6R = new FlxActionDigital(Action.SEVEN6_R);
	var _sev7 = new FlxActionDigital(Action.SEVEN7);
	var _sev7P = new FlxActionDigital(Action.SEVEN7_P);
	var _sev7R = new FlxActionDigital(Action.SEVEN7_R);

	var _eig1 = new FlxActionDigital(Action.EIGHT1);
	var _eig1P = new FlxActionDigital(Action.EIGHT1_P);
	var _eig1R = new FlxActionDigital(Action.EIGHT1_R);
	var _eig2 = new FlxActionDigital(Action.EIGHT2);
	var _eig2P = new FlxActionDigital(Action.EIGHT2_P);
	var _eig2R = new FlxActionDigital(Action.EIGHT2_R);
	var _eig3 = new FlxActionDigital(Action.EIGHT3);
	var _eig3P = new FlxActionDigital(Action.EIGHT3_P);
	var _eig3R = new FlxActionDigital(Action.EIGHT3_R);
	var _eig4 = new FlxActionDigital(Action.EIGHT4);
	var _eig4P = new FlxActionDigital(Action.EIGHT4_P);
	var _eig4R = new FlxActionDigital(Action.EIGHT4_R);
	var _eig5 = new FlxActionDigital(Action.EIGHT5);
	var _eig5P = new FlxActionDigital(Action.EIGHT5_P);
	var _eig5R = new FlxActionDigital(Action.EIGHT5_R);
	var _eig6 = new FlxActionDigital(Action.EIGHT6);
	var _eig6P = new FlxActionDigital(Action.EIGHT6_P);
	var _eig6R = new FlxActionDigital(Action.EIGHT6_R);
	var _eig7 = new FlxActionDigital(Action.EIGHT7);
	var _eig7P = new FlxActionDigital(Action.EIGHT7_P);
	var _eig7R = new FlxActionDigital(Action.EIGHT7_R);
	var _eig8 = new FlxActionDigital(Action.EIGHT8);
	var _eig8P = new FlxActionDigital(Action.EIGHT8_P);
	var _eig8R = new FlxActionDigital(Action.EIGHT8_R);

	var _nin1 = new FlxActionDigital(Action.NINE1);
	var _nin1P = new FlxActionDigital(Action.NINE1_P);
	var _nin1R = new FlxActionDigital(Action.NINE1_R);
	var _nin2 = new FlxActionDigital(Action.NINE2);
	var _nin2P = new FlxActionDigital(Action.NINE2_P);
	var _nin2R = new FlxActionDigital(Action.NINE2_R);
	var _nin3 = new FlxActionDigital(Action.NINE3);
	var _nin3P = new FlxActionDigital(Action.NINE3_P);
	var _nin3R = new FlxActionDigital(Action.NINE3_R);
	var _nin4 = new FlxActionDigital(Action.NINE4);
	var _nin4P = new FlxActionDigital(Action.NINE4_P);
	var _nin4R = new FlxActionDigital(Action.NINE4_R);
	var _nin5 = new FlxActionDigital(Action.NINE5);
	var _nin5P = new FlxActionDigital(Action.NINE5_P);
	var _nin5R = new FlxActionDigital(Action.NINE5_R);
	var _nin6 = new FlxActionDigital(Action.NINE6);
	var _nin6P = new FlxActionDigital(Action.NINE6_P);
	var _nin6R = new FlxActionDigital(Action.NINE6_R);
	var _nin7 = new FlxActionDigital(Action.NINE7);
	var _nin7P = new FlxActionDigital(Action.NINE7_P);
	var _nin7R = new FlxActionDigital(Action.NINE7_R);
	var _nin8 = new FlxActionDigital(Action.NINE8);
	var _nin8P = new FlxActionDigital(Action.NINE8_P);
	var _nin8R = new FlxActionDigital(Action.NINE8_R);
	var _nin9 = new FlxActionDigital(Action.NINE9);
	var _nin9P = new FlxActionDigital(Action.NINE9_P);
	var _nin9R = new FlxActionDigital(Action.NINE9_R);

	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UI_UP(get, never):Bool;

	inline function get_UI_UP()
		return _ui_up.check();

	public var UI_LEFT(get, never):Bool;

	inline function get_UI_LEFT()
		return _ui_left.check();

	public var UI_RIGHT(get, never):Bool;

	inline function get_UI_RIGHT()
		return _ui_right.check();

	public var UI_DOWN(get, never):Bool;

	inline function get_UI_DOWN()
		return _ui_down.check();

	public var UI_UP_P(get, never):Bool;

	inline function get_UI_UP_P()
		return _ui_upP.check();

	public var UI_LEFT_P(get, never):Bool;

	inline function get_UI_LEFT_P()
		return _ui_leftP.check();

	public var UI_RIGHT_P(get, never):Bool;

	inline function get_UI_RIGHT_P()
		return _ui_rightP.check();

	public var UI_DOWN_P(get, never):Bool;

	inline function get_UI_DOWN_P()
		return _ui_downP.check();

	public var UI_UP_R(get, never):Bool;

	inline function get_UI_UP_R()
		return _ui_upR.check();

	public var UI_LEFT_R(get, never):Bool;

	inline function get_UI_LEFT_R()
		return _ui_leftR.check();

	public var UI_RIGHT_R(get, never):Bool;

	inline function get_UI_RIGHT_R()
		return _ui_rightR.check();

	public var UI_DOWN_R(get, never):Bool;

	inline function get_UI_DOWN_R()
		return _ui_downR.check();

	public var NOTE_UP(get, never):Bool;

	inline function get_NOTE_UP()
		return _note_up.check();

	public var NOTE_LEFT(get, never):Bool;

	inline function get_NOTE_LEFT()
		return _note_left.check();

	public var NOTE_RIGHT(get, never):Bool;

	inline function get_NOTE_RIGHT()
		return _note_right.check();

	public var NOTE_DOWN(get, never):Bool;

	inline function get_NOTE_DOWN()
		return _note_down.check();

	public var NOTE_UP_P(get, never):Bool;

	inline function get_NOTE_UP_P()
		return _note_upP.check();

	public var NOTE_LEFT_P(get, never):Bool;

	inline function get_NOTE_LEFT_P()
		return _note_leftP.check();

	public var NOTE_RIGHT_P(get, never):Bool;

	inline function get_NOTE_RIGHT_P()
		return _note_rightP.check();

	public var NOTE_DOWN_P(get, never):Bool;

	inline function get_NOTE_DOWN_P()
		return _note_downP.check();

	public var NOTE_UP_R(get, never):Bool;

	inline function get_NOTE_UP_R()
		return _note_upR.check();

	public var NOTE_LEFT_R(get, never):Bool;

	inline function get_NOTE_LEFT_R()
		return _note_leftR.check();

	public var NOTE_RIGHT_R(get, never):Bool;

	inline function get_NOTE_RIGHT_R()
		return _note_rightR.check();

	public var NOTE_DOWN_R(get, never):Bool;

	inline function get_NOTE_DOWN_R()
		return _note_downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var ONE1(get, never):Bool; inline function get_ONE1() {return _one1.check();}
	public var ONE1_P(get, never):Bool; inline function get_ONE1_P() {return _one1P.check();}
	public var ONE1_R(get, never):Bool; inline function get_ONE1_R() {return _one1R.check();}

	public var TWO1(get, never):Bool; inline function get_TWO1() {return _two1.check();}
	public var TWO1_P(get, never):Bool; inline function get_TWO1_P() {return _two1P.check();}
	public var TWO1_R(get, never):Bool; inline function get_TWO1_R() {return _two1R.check();}
	public var TWO2(get, never):Bool; inline function get_TWO2() {return _two2.check();}
	public var TWO2_P(get, never):Bool; inline function get_TWO2_P() {return _two1P.check();}
	public var TWO2_R(get, never):Bool; inline function get_TWO2_R() {return _two1R.check();}

	public var THREE1(get, never):Bool; inline function get_THREE1() {return _three1.check();}
	public var THREE1_P(get, never):Bool; inline function get_THREE1_P() {return _three1P.check();}
	public var THREE1_R(get, never):Bool; inline function get_THREE1_R() {return _three1R.check();}
	public var THREE2(get, never):Bool; inline function get_THREE2() {return _three2.check();}
	public var THREE2_P(get, never):Bool; inline function get_THREE2_P() {return _three2P.check();}
	public var THREE2_R(get, never):Bool; inline function get_THREE2_R() {return _three2R.check();}
	public var THREE3(get, never):Bool; inline function get_THREE3() {return _three3.check();}
	public var THREE3_P(get, never):Bool; inline function get_THREE3_P() {return _three3P.check();}
	public var THREE3_R(get, never):Bool; inline function get_THREE3_R() {return _three3R.check();}

	public var FIVE1(get, never):Bool; inline function get_FIVE1() {return _five1.check();}
	public var FIVE1_P(get, never):Bool; inline function get_FIVE1_P() {return _five1P.check();}
	public var FIVE1_R(get, never):Bool; inline function get_FIVE1_R() {return _five1R.check();}
	public var FIVE2(get, never):Bool; inline function get_FIVE2() {return _five2.check();}
	public var FIVE2_P(get, never):Bool; inline function get_FIVE2_P() {return _five2P.check();}
	public var FIVE2_R(get, never):Bool; inline function get_FIVE2_R() {return _five2R.check();}
	public var FIVE3(get, never):Bool; inline function get_FIVE3() {return _five3.check();}
	public var FIVE3_P(get, never):Bool; inline function get_FIVE3_P() {return _five3P.check();}
	public var FIVE3_R(get, never):Bool; inline function get_FIVE3_R() {return _five3R.check();}
	public var FIVE4(get, never):Bool; inline function get_FIVE4() {return _five4.check();}
	public var FIVE4_P(get, never):Bool; inline function get_FIVE4_P() {return _five4P.check();}
	public var FIVE4_R(get, never):Bool; inline function get_FIVE4_R() {return _five4R.check();}
	public var FIVE5(get, never):Bool; inline function get_FIVE5() {return _five5.check();}
	public var FIVE5_P(get, never):Bool; inline function get_FIVE5_P() {return _five5P.check();}
	public var FIVE5_R(get, never):Bool; inline function get_FIVE5_R() {return _five5R.check();}

	public var SIX1(get, never):Bool; inline function get_SIX1() {return _six1.check();}
	public var SIX1_P(get, never):Bool; inline function get_SIX1_P() {return _six1P.check();}
	public var SIX1_R(get, never):Bool; inline function get_SIX1_R() {return _six1R.check();}
	public var SIX2(get, never):Bool; inline function get_SIX2() {return _six2.check();}
	public var SIX2_P(get, never):Bool; inline function get_SIX2_P() {return _six2P.check();}
	public var SIX2_R(get, never):Bool; inline function get_SIX2_R() {return _six2R.check();}
	public var SIX3(get, never):Bool; inline function get_SIX3() {return _six3.check();}
	public var SIX3_P(get, never):Bool; inline function get_SIX3_P() {return _six3P.check();}
	public var SIX3_R(get, never):Bool; inline function get_SIX3_R() {return _six3R.check();}
	public var SIX4(get, never):Bool; inline function get_SIX4() {return _six4.check();}
	public var SIX4_P(get, never):Bool; inline function get_SIX4_P() {return _six4P.check();}
	public var SIX4_R(get, never):Bool; inline function get_SIX4_R() {return _six4R.check();}
	public var SIX5(get, never):Bool; inline function get_SIX5() {return _six5.check();}
	public var SIX5_P(get, never):Bool; inline function get_SIX5_P() {return _six5P.check();}
	public var SIX5_R(get, never):Bool; inline function get_SIX5_R() {return _six5R.check();}
	public var SIX6(get, never):Bool; inline function get_SIX6() {return _six6.check();}
	public var SIX6_P(get, never):Bool; inline function get_SIX6_P() {return _six6P.check();}
	public var SIX6_R(get, never):Bool; inline function get_SIX6_R() {return _six6R.check();}

	public var SEVEN1(get, never):Bool; inline function get_SEVEN1() {return _sev1.check();}
	public var SEVEN1_P(get, never):Bool; inline function get_SEVEN1_P() {return _sev1P.check();}
	public var SEVEN1_R(get, never):Bool; inline function get_SEVEN1_R() {return _sev1R.check();}
	public var SEVEN2(get, never):Bool; inline function get_SEVEN2() {return _sev2.check();}
	public var SEVEN2_P(get, never):Bool; inline function get_SEVEN2_P() {return _sev2P.check();}
	public var SEVEN2_R(get, never):Bool; inline function get_SEVEN2_R() {return _sev2R.check();}
	public var SEVEN3(get, never):Bool; inline function get_SEVEN3() {return _sev3.check();}
	public var SEVEN3_P(get, never):Bool; inline function get_SEVEN3_P() {return _sev3P.check();}
	public var SEVEN3_R(get, never):Bool; inline function get_SEVEN3_R() {return _sev3R.check();}
	public var SEVEN4(get, never):Bool; inline function get_SEVEN4() {return _sev4.check();}
	public var SEVEN4_P(get, never):Bool; inline function get_SEVEN4_P() {return _sev4P.check();}
	public var SEVEN4_R(get, never):Bool; inline function get_SEVEN4_R() {return _sev4R.check();}
	public var SEVEN5(get, never):Bool; inline function get_SEVEN5() {return _sev5.check();}
	public var SEVEN5_P(get, never):Bool; inline function get_SEVEN5_P() {return _sev5P.check();}
	public var SEVEN5_R(get, never):Bool; inline function get_SEVEN5_R() {return _sev5R.check();}
	public var SEVEN6(get, never):Bool; inline function get_SEVEN6() {return _sev6.check();}
	public var SEVEN6_P(get, never):Bool; inline function get_SEVEN6_P() {return _sev6P.check();}
	public var SEVEN6_R(get, never):Bool; inline function get_SEVEN6_R() {return _sev6R.check();}
	public var SEVEN7(get, never):Bool; inline function get_SEVEN7() {return _sev7.check();}
	public var SEVEN7_P(get, never):Bool; inline function get_SEVEN7_P() {return _sev7P.check();}
	public var SEVEN7_R(get, never):Bool; inline function get_SEVEN7_R() {return _sev7R.check();}
	
	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		
		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		
		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UI_UP: _ui_up;
			case UI_DOWN: _ui_down;
			case UI_LEFT: _ui_left;
			case UI_RIGHT: _ui_right;
			case NOTE_UP: _note_up;
			case NOTE_DOWN: _note_down;
			case NOTE_LEFT: _note_left;
			case NOTE_RIGHT: _note_right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;
		
			/*
			case A1: _a1;
			case A2: _a2;
			case A3: _a3;
			case A4: _a4;
			case A5: _a5;
			case A6: _a6;
			case A7: _a7;


			case B1: _b1;
			case B2: _b2;
			case B3: _b3;
			case B4: _b4;
			case B5: _b5;
			case B6: _b6;
			case B7: _b7;
			case B8: _b8;
			case B9: _b9;
			*/
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UI_UP:
				func(_ui_up, PRESSED);
				func(_ui_upP, JUST_PRESSED);
				func(_ui_upR, JUST_RELEASED);
			case UI_LEFT:
				func(_ui_left, PRESSED);
				func(_ui_leftP, JUST_PRESSED);
				func(_ui_leftR, JUST_RELEASED);
			case UI_RIGHT:
				func(_ui_right, PRESSED);
				func(_ui_rightP, JUST_PRESSED);
				func(_ui_rightR, JUST_RELEASED);
			case UI_DOWN:
				func(_ui_down, PRESSED);
				func(_ui_downP, JUST_PRESSED);
				func(_ui_downR, JUST_RELEASED);
			case NOTE_UP:
				func(_note_up, PRESSED);
				func(_note_upP, JUST_PRESSED);
				func(_note_upR, JUST_RELEASED);
			case NOTE_LEFT:
				func(_note_left, PRESSED);
				func(_note_leftP, JUST_PRESSED);
				func(_note_leftR, JUST_RELEASED);
			case NOTE_RIGHT:
				func(_note_right, PRESSED);
				func(_note_rightP, JUST_PRESSED);
				func(_note_rightR, JUST_RELEASED);
			case NOTE_DOWN:
				func(_note_down, PRESSED);
				func(_note_downP, JUST_PRESSED);
				func(_note_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);

				/*
			case A1:
				func(_a1, PRESSED);
				func(_a1P, JUST_PRESSED);
				func(_a1R, JUST_RELEASED);
			case A2:
				func(_a2, PRESSED);
				func(_a2P, JUST_PRESSED);
				func(_a2R, JUST_RELEASED);
			case A3:
				func(_a3, PRESSED);
				func(_a3P, JUST_PRESSED);
				func(_a3R, JUST_RELEASED);
			case A4:
				func(_a4, PRESSED);
				func(_a4P, JUST_PRESSED);
				func(_a4R, JUST_RELEASED);
			case A5:
				func(_a5, PRESSED);
				func(_a5P, JUST_PRESSED);
				func(_a5R, JUST_RELEASED);
			case A6:
				func(_a6, PRESSED);
				func(_a6P, JUST_PRESSED);
				func(_a6R, JUST_RELEASED);
			case A7:
				func(_a7, PRESSED);
				func(_a7P, JUST_PRESSED);
				func(_a7R, JUST_RELEASED);


			case B1:
				func(_b1, PRESSED);
				func(_b1P, JUST_PRESSED);
				func(_b1R, JUST_RELEASED);
			case B2:
				func(_b2, PRESSED);
				func(_b2P, JUST_PRESSED);
				func(_b2R, JUST_RELEASED);
			case B3:
				func(_b3, PRESSED);
				func(_b3P, JUST_PRESSED);
				func(_b3R, JUST_RELEASED);
			case B4:
				func(_b4, PRESSED);
				func(_b4P, JUST_PRESSED);
				func(_b4R, JUST_RELEASED);
			case B5:
				func(_b5, PRESSED);
				func(_b5P, JUST_PRESSED);
				func(_b5R, JUST_RELEASED);
			case B6:
				func(_b6, PRESSED);
				func(_b6P, JUST_PRESSED);
				func(_b6R, JUST_RELEASED);
			case B7:
				func(_b7, PRESSED);
				func(_b7P, JUST_PRESSED);
				func(_b7R, JUST_RELEASED);
			case B8:
				func(_b8, PRESSED);
				func(_b8P, JUST_PRESSED);
				func(_b8R, JUST_RELEASED);
			case B9:
				func(_b9, PRESSED);
				func(_b9P, JUST_PRESSED);
				func(_b9R, JUST_RELEASED);
				*/
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, copyKeys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, copyKeys, state));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, copyKeys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, copyKeys));
		#end
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			if(key != NONE)
				action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		var keysMap = ClientPrefs.keyBinds;
		
		#if (haxe >= "4.0.0")
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UI_UP, keysMap.get('ui_up'));
				inline bindKeys(Control.UI_DOWN, keysMap.get('ui_down'));
				inline bindKeys(Control.UI_LEFT, keysMap.get('ui_left'));
				inline bindKeys(Control.UI_RIGHT, keysMap.get('ui_right'));
				inline bindKeys(Control.NOTE_UP, keysMap.get('note_up'));
				inline bindKeys(Control.NOTE_DOWN, keysMap.get('note_down'));
				inline bindKeys(Control.NOTE_LEFT, keysMap.get('note_left'));
				inline bindKeys(Control.NOTE_RIGHT, keysMap.get('note_right'));

				inline bindKeys(Control.ACCEPT, keysMap.get('accept'));
				inline bindKeys(Control.BACK, keysMap.get('back'));
				inline bindKeys(Control.PAUSE, keysMap.get('pause'));
				inline bindKeys(Control.RESET, keysMap.get('reset'));

				inline bindKeys(Control.A1, keysMap.get('note_a1'));
				inline bindKeys(Control.A2, keysMap.get('note_a2'));
				inline bindKeys(Control.A3, keysMap.get('note_a3'));
				inline bindKeys(Control.A4, keysMap.get('note_a4'));
				inline bindKeys(Control.A5, keysMap.get('note_a5'));
				inline bindKeys(Control.A6, keysMap.get('note_a6'));
				inline bindKeys(Control.A7, keysMap.get('note_a7'));
				
				inline bindKeys(Control.B1, keysMap.get('note_b1'));
				inline bindKeys(Control.B2, keysMap.get('note_b2'));
				inline bindKeys(Control.B3, keysMap.get('note_b3'));
				inline bindKeys(Control.B4, keysMap.get('note_b4'));
				inline bindKeys(Control.B5, keysMap.get('note_b5'));
				inline bindKeys(Control.B6, keysMap.get('note_b6'));
				inline bindKeys(Control.B7, keysMap.get('note_b7'));
				inline bindKeys(Control.B8, keysMap.get('note_b8'));
				inline bindKeys(Control.B9, keysMap.get('note_b9'));
			case Duo(true):
				inline bindKeys(Control.UI_UP, [W]);
				inline bindKeys(Control.UI_DOWN, [S]);
				inline bindKeys(Control.UI_LEFT, [A]);
				inline bindKeys(Control.UI_RIGHT, [D]);
				inline bindKeys(Control.NOTE_UP, [W]);
				inline bindKeys(Control.NOTE_DOWN, [S]);
				inline bindKeys(Control.NOTE_LEFT, [A]);
				inline bindKeys(Control.NOTE_RIGHT, [D]);
				inline bindKeys(Control.ACCEPT, [G, Z]);
				inline bindKeys(Control.BACK, [H, X]);
				inline bindKeys(Control.PAUSE, [ONE]);
				inline bindKeys(Control.RESET, [R]);

				/*
				inline bindKeys(Control.A1, [S]);
				inline bindKeys(Control.A2, [D]);
				inline bindKeys(Control.A3, [F]);
				inline bindKeys(Control.A4, [SPACE]);
				inline bindKeys(Control.A5, [J]);
				inline bindKeys(Control.A6, [K]);
				inline bindKeys(Control.A7, [L]);
				
				inline bindKeys(Control.B1, [A]);
				inline bindKeys(Control.B2, [S]);
				inline bindKeys(Control.B3, [D]);
				inline bindKeys(Control.B4, [F]);
				inline bindKeys(Control.B5, [SPACE]);
				inline bindKeys(Control.B6, [H]);
				inline bindKeys(Control.B7, [J]);
				inline bindKeys(Control.B8, [K]);
				inline bindKeys(Control.B9, [L]);*/
			case Duo(false):
				inline bindKeys(Control.UI_UP, [FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
				inline bindKeys(Control.RESET, [BACKSPACE]);
				
				/*
				inline bindKeys(Control.A1, [S]);
				inline bindKeys(Control.A2, [D]);
				inline bindKeys(Control.A3, [F]);
				inline bindKeys(Control.A4, [SPACE]);
				inline bindKeys(Control.A5, [J]);
				inline bindKeys(Control.A6, [K]);
				inline bindKeys(Control.A7, [L]);
				
				inline bindKeys(Control.B1, [A]);
				inline bindKeys(Control.B2, [S]);
				inline bindKeys(Control.B3, [D]);
				inline bindKeys(Control.B4, [F]);
				inline bindKeys(Control.B5, [SPACE]);
				inline bindKeys(Control.B6, [H]);
				inline bindKeys(Control.B7, [J]);
				inline bindKeys(Control.B8, [K]);
				inline bindKeys(Control.B9, [L]);*/
			case None: // nothing
			case Custom: // nothing
		}
		#else
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				bindKeys(Control.RESET, [R]);

				/*
				bindKeys(Control.A1, [S]);
				bindKeys(Control.A2, [D]);
				bindKeys(Control.A3, [F]);
				bindKeys(Control.A4, [SPACE]);
				bindKeys(Control.A5, [J]);
				bindKeys(Control.A6, [K]);
				bindKeys(Control.A7, [L]);
				
				bindKeys(Control.B1, [A]);
				bindKeys(Control.B2, [S]);
				bindKeys(Control.B3, [D]);
				bindKeys(Control.B4, [F]);
				bindKeys(Control.B5, [SPACE]);
				bindKeys(Control.B6, [H]);
				bindKeys(Control.B7, [J]);
				bindKeys(Control.B8, [K]);
				bindKeys(Control.B9, [L]);
				*/
			case Duo(true):
				bindKeys(Control.UI_UP, [W]);
				bindKeys(Control.UI_DOWN, [S]);
				bindKeys(Control.UI_LEFT, [A]);
				bindKeys(Control.UI_RIGHT, [D]);
				bindKeys(Control.NOTE_UP, [W]);
				bindKeys(Control.NOTE_DOWN, [S]);
				bindKeys(Control.NOTE_LEFT, [A]);
				bindKeys(Control.NOTE_RIGHT, [D]);
				bindKeys(Control.ACCEPT, [G, Z]);
				bindKeys(Control.BACK, [H, X]);
				bindKeys(Control.PAUSE, [ONE]);
				bindKeys(Control.RESET, [R]);

				bindKeys(Control.A1, [S]);
				bindKeys(Control.A2, [D]);
				bindKeys(Control.A3, [F]);
				bindKeys(Control.A4, [SPACE]);
				bindKeys(Control.A5, [J]);
				bindKeys(Control.A6, [K]);
				bindKeys(Control.A7, [L]);
				
				bindKeys(Control.B1, [A]);
				bindKeys(Control.B2, [S]);
				bindKeys(Control.B3, [D]);
				bindKeys(Control.B4, [F]);
				bindKeys(Control.B5, [SPACE]);
				bindKeys(Control.B6, [H]);
				bindKeys(Control.B7, [J]);
				bindKeys(Control.B8, [K]);
				bindKeys(Control.B9, [L]);
			case Duo(false):
				bindKeys(Control.UI_UP, [FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [O]);
				bindKeys(Control.BACK, [P]);
				bindKeys(Control.PAUSE, [ENTER]);
				bindKeys(Control.RESET, [BACKSPACE]);

				bindKeys(Control.A1, [S]);
				bindKeys(Control.A2, [D]);
				bindKeys(Control.A3, [F]);
				bindKeys(Control.A4, [SPACE]);
				bindKeys(Control.A5, [J]);
				bindKeys(Control.A6, [K]);
				bindKeys(Control.A7, [L]);
				
				bindKeys(Control.B1, [A]);
				bindKeys(Control.B2, [S]);
				bindKeys(Control.B3, [D]);
				bindKeys(Control.B4, [F]);
				bindKeys(Control.B5, [SPACE]);
				bindKeys(Control.B6, [H]);
				bindKeys(Control.B7, [J]);
				bindKeys(Control.B8, [K]);
				bindKeys(Control.B9, [L]);
			case None: // nothing
			case Custom: // nothing
		}
		#end
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [8],

			Control.A1 => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.A2 => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.A3 => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.A4 => [LEFT_STICK_CLICK, RIGHT_STICK_CLICK],
			Control.A5 => [X, RIGHT_STICK_DIGITAL_LEFT],
			Control.A6 => [A, RIGHT_STICK_DIGITAL_DOWN],
			Control.A7 => [B, RIGHT_STICK_DIGITAL_RIGHT],

			Control.B1 => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.B2 => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.B3 => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.B4 => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.B5 => [LEFT_STICK_CLICK, RIGHT_STICK_CLICK],
			Control.B6 => [X, RIGHT_STICK_DIGITAL_LEFT],
			Control.B7 => [A, RIGHT_STICK_DIGITAL_DOWN],
			Control.B8 => [B, RIGHT_STICK_DIGITAL_UP],
			Control.B9 => [Y, RIGHT_STICK_DIGITAL_RIGHT]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch -Also the Y and X
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [8],

			Control.A1 => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.A2 => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.A3 => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.A4 => [LEFT_STICK_CLICK, RIGHT_STICK_CLICK],
			Control.A5 => [Y, RIGHT_STICK_DIGITAL_LEFT],
			Control.A6 => [B, RIGHT_STICK_DIGITAL_DOWN],
			Control.A7 => [A, RIGHT_STICK_DIGITAL_RIGHT]

			Control.B1 => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.B2 => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.B3 => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.B4 => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.B5 => [LEFT_STICK_CLICK, RIGHT_STICK_CLICK],
			Control.B6 => [Y, RIGHT_STICK_DIGITAL_LEFT],
			Control.B7 => [B, RIGHT_STICK_DIGITAL_DOWN],
			Control.B8 => [A, RIGHT_STICK_DIGITAL_UP],
			Control.B9 => [X, RIGHT_STICK_DIGITAL_RIGHT]
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}