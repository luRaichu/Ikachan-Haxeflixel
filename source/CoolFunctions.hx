package;

import flixel.FlxG;
import flixel.FlxSprite;

class CoolFunctions
{
    static public function playSong(song:String)
        {
            switch song
            {
                case 'tidepool':
                    FlxG.sound.playMusic(AssetPaths.tidepool_Intro__wav, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.tidepool_Loop__wav, 1, true);
                    }
                case 'mizuno':
                    FlxG.sound.playMusic(AssetPaths.mizuno_Intro__wav, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.mizuno_Loop__wav, 1, true);
                    }
                case 'quake':
                    FlxG.sound.playMusic(AssetPaths.quake_Intro__wav, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.quake_Loop__wav, 1, true);
                    }
                case 'ikachan':
                    FlxG.sound.playMusic(AssetPaths.ikachan_Intro__wav, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.ikachan_Loop__wav, 1, true);
                    }
                case 'buriki':
                    FlxG.sound.playMusic(AssetPaths.buriki_Intro__wav, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.buriki_Loop__wav, 1, true);
                    }
                case 'magirete':
                    FlxG.sound.playMusic(AssetPaths.magirete_Intro__wav, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.magirete_Loop__wav, 1, true);
                    }
            }
        }
        static public function pixelZoom(sprite:FlxSprite)
        {
            sprite.setGraphicSize(Std.int(sprite.width * 2));
            sprite.updateHitbox();
        }
        static public function move(sprite:FlxSprite, x:Int, y:Int) // gotta change this later for 320 x 240 support
        {
            sprite.x += x * 2;
            sprite.y += y * 2;
        }
        static public function set(sprite:FlxSprite, ex:Int, why:Int)
        {
            sprite.x = ex * 2;
            sprite.y = why * 2;
        }
        // TODO: ADD A FUNCTION TO ADD SPRITES (MAYBE)
}