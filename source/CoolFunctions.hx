package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileCircle;
import flixel.addons.transition.TransitionData;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.graphics.FlxGraphic;
import flixel.util.FlxColor;

class CoolFunctions
{
    static public function playSong(song:String)
        {
            switch song
            {
                #if web
                case 'tidepool':
                    FlxG.sound.playMusic("assets/music/tidepool_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/tidepool_Loop.mp3", 1, true);
                    }
                case 'mizuno':
                    FlxG.sound.playMusic("assets/music/mizuno_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mizuno_Loop.mp3", 1, true);
                    }
                case 'quake':
                    FlxG.sound.playMusic("assets/music/quake_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/quake_Loop.mp3", 1, true);
                    }
                case 'ikachan':
                    FlxG.sound.playMusic("assets/music/ikachan_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ikachan_Loop.mp3", 1, true);
                    }
                case 'buriki':
                    FlxG.sound.playMusic("assets/music/buriki_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/buriki_Loop.mp3", 1, true);
                    }
                case 'magirete':
                    FlxG.sound.playMusic("assets/music/magirete_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/magirete_Loop.mp3", 1, true);
                    }
                #end
                #if desktop
                case 'tidepool':
                    FlxG.sound.playMusic("assets/music/tidepool_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/tidepool_Loop.ogg", 1, true);
                    }
                case 'mizuno':
                    FlxG.sound.playMusic("assets/music/mizuno_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mizuno_Loop.ogg", 1, true);
                    }
                case 'quake':
                    FlxG.sound.playMusic("assets/music/quake_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/quake_Loop.ogg", 1, true);
                    }
                case 'ikachan':
                    FlxG.sound.playMusic("assets/music/ikachan_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ikachan_Loop.ogg", 1, true);
                    }
                case 'buriki':
                    FlxG.sound.playMusic("assets/music/buriki_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/buriki_Loop.ogg", 1, true);
                    }
                case 'magirete':
                    FlxG.sound.playMusic("assets/music/magirete_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/magirete_Loop.ogg", 1, true);
                    }
                #end
            }
        }
        // TODO: ADD A FUNCTION TO ADD SPRITES (MAYBE)
        static public function fadeShit()
        {
            var transOut;
            var transIn;
            var diamond:FlxGraphic = FlxGraphic.fromClass(GraphicTransTileCircle);
            diamond.persist = true;
            diamond.destroyOnNoUse = false;
    
            FlxTransitionableState.defaultTransOut = new TransitionData(TILES, FlxColor.BLACK, 0.7, new FlxPoint(1, -1),
                {asset: diamond, width: 32, height: 32}, new FlxRect(-200, -200, FlxG.width * 1.4, FlxG.height * 1.4));
            FlxTransitionableState.defaultTransIn = new TransitionData(TILES, FlxColor.BLACK, 1, new FlxPoint(1, -1),
                {asset: diamond, width: 32, height: 32}, new FlxRect(-200, -200, FlxG.width * 1.4, FlxG.height * 1.4));
    
            transOut = FlxTransitionableState.defaultTransOut;
            transIn = FlxTransitionableState.defaultTransIn;
        }
}