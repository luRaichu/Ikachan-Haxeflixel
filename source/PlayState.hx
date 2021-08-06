package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.math.FlxRandom;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.ONE)
		{
			playSong('tidepool');
		}
		if (FlxG.keys.justPressed.TWO)
		{
			playSong('ikachan');
		}
	}

	public function playSong(song:String)
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
}
