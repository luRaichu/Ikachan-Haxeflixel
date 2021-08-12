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
                    FlxG.sound.playMusic("assets/music/mp3/tidepool_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mp3/tidepool_Loop.mp3", 1, true);
                    }
                case 'mizuno':
                    FlxG.sound.playMusic("assets/music/mp3/mizuno_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mp3/mizuno_Loop.mp3", 1, true);
                    }
                case 'quake':
                    FlxG.sound.playMusic("assets/music/mp3/quake_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mp3/quake_Loop.mp3", 1, true);
                    }
                case 'ikachan':
                    FlxG.sound.playMusic("assets/music/mp3/ikachan_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mp3/ikachan_Loop.mp3", 1, true);
                    }
                case 'buriki':
                    FlxG.sound.playMusic("assets/music/mp3/buriki_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mp3/buriki_Loop.mp3", 1, true);
                    }
                case 'magirete':
                    FlxG.sound.playMusic("assets/music/mp3/magirete_Intro.mp3", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/mp3/magirete_Loop.mp3", 1, true);
                    }
                #end
                #if desktop
                case 'tidepool':
                    FlxG.sound.playMusic("assets/music/ogg/tidepool_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ogg/tidepool_Loop.ogg", 1, true);
                    }
                case 'mizuno':
                    FlxG.sound.playMusic("assets/music/ogg/mizuno_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ogg/mizuno_Loop.ogg", 1, true);
                    }
                case 'quake':
                    FlxG.sound.playMusic("assets/music/ogg/quake_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ogg/quake_Loop.ogg", 1, true);
                    }
                case 'ikachan':
                    FlxG.sound.playMusic("assets/music/ogg/ikachan_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ogg/ikachan_Loop.ogg", 1, true);
                    }
                case 'buriki':
                    FlxG.sound.playMusic("assets/music/ogg/buriki_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ogg/buriki_Loop.ogg", 1, true);
                    }
                case 'magirete':
                    FlxG.sound.playMusic("assets/music/ogg/magirete_Intro.ogg", 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic("assets/music/ogg/magirete_Loop.ogg", 1, true);
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