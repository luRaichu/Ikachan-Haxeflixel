package;

import flixel.FlxG;

class Input
{
    public static function gKey(key:String) {

        #if FLX_KEYBOARD
        switch key 
        {
            case 'KEY_LEFT':
                if (FlxG.keys.pressed.LEFT) {
                    return true;
                }
            case 'KEY_RIGHT':
                if (FlxG.keys.pressed.RIGHT) {
                    return true;
                }
            case 'KEY_UP':
                if (FlxG.keys.pressed.UP) {
                    return true;
                }
            case 'KEY_DOWN':
                if (FlxG.keys.pressed.DOWN) {
                    return true;
                }
            case 'KEY_SPACE':
                if (FlxG.keys.pressed.SPACE) {
                    return true;
                }
            case 'KEY_Z':
                if (FlxG.keys.pressed.Z) {
                    return true;
                }
            case 'KEY_X':
                if (FlxG.keys.pressed.X) {
                    return true;
                }
            case 'KEY_S':
                if (FlxG.keys.pressed.S) {
                    return true;
                }
            default:
                return false;
        }
        #end
        #if FLX_GAMEPAD
        if (FlxG.gamepads.lastActive != null)
        {
            switch key 
            {
                case 'KEY_LEFT':
                    if (FlxG.gamepads.lastActive.pressed.DPAD_LEFT) {
                        return true;
                    }
                case 'KEY_RIGHT':
                    if (FlxG.gamepads.lastActive.pressed.DPAD_RIGHT) {
                        return true;
                    }
                case 'KEY_UP':
                    if (FlxG.gamepads.lastActive.pressed.DPAD_UP) {
                        return true;
                    }
                case 'KEY_DOWN':
                    if (FlxG.gamepads.lastActive.pressed.DPAD_DOWN) {
                        return true;
                    }
                case 'KEY_Z':
                    if (FlxG.gamepads.lastActive.pressed.A) {
                        return true;
                    }
                case 'KEY_X':
                    if (FlxG.gamepads.lastActive.pressed.B) {
                        return true;
                    }
                case 'KEY_S':
                    if (FlxG.gamepads.lastActive.pressed.START) {
                        return true;
                    }
                default:
                    return false;
            }
        }
        #end
        #if FLX_TOUCH
        var virtualPad = PlayState.virtualPad;
        var tkey = virtualPad.buttonUp.pressed;
        switch key 
        {
            case 'KEY_LEFT':
                if (virtualPad.buttonLeft.pressed) {
                    return true;
                }
            case 'KEY_RIGHT':
                if (virtualPad.buttonRight.pressed) {
                    return true;
                }
            case 'KEY_UP':
                if (virtualPad.buttonUp.pressed) {
                    return true;
                }
            case 'KEY_DOWN':
                if (virtualPad.buttonDown.pressed) {
                    return true;
                }
            case 'KEY_Z':
                if (virtualPad.buttonA.pressed) {
                    return true;
                }
            case 'KEY_X':
                if (virtualPad.buttonB.pressed) {
                    return true;
                }
            case 'KEY_S':
                if (virtualPad.buttonX.pressed) {
                    return true;
                }
            default:
                return false;
        }
        #end
        
        return false;
    }
}