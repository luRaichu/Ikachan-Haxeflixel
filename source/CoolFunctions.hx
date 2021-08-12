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
                case 'tidepool':
                    FlxG.sound.playMusic(AssetPaths.tidepool_Intro__mp3, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.tidepool_Loop__mp3, 1, true);
                    }
                case 'mizuno':
                    FlxG.sound.playMusic(AssetPaths.mizuno_Intro__mp3, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.mizuno_Loop__mp3, 1, true);
                    }
                case 'quake':
                    FlxG.sound.playMusic(AssetPaths.quake_Intro__mp3, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.quake_Loop__mp3, 1, true);
                    }
                case 'ikachan':
                    FlxG.sound.playMusic(AssetPaths.ikachan_Intro__mp3, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.ikachan_Loop__mp3, 1, true);
                    }
                case 'buriki':
                    FlxG.sound.playMusic(AssetPaths.buriki_Intro__mp3, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.buriki_Loop__mp3, 1, true);
                    }
                case 'magirete':
                    FlxG.sound.playMusic(AssetPaths.magirete_Intro__mp3, 1, false);
                    FlxG.sound.music.onComplete = () -> {
                        FlxG.sound.playMusic(AssetPaths.magirete_Loop__mp3, 1, true);
                    }
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