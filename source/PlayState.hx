package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		FlxG.mouse.visible = false;

		playSong('mizuno');

		var L = new FlxSprite();
		var back = new FlxSprite();

		back.makeGraphic(640, 480, FlxColor.WHITE);
		back.screenCenter();
        add(back);

		L.loadGraphic("assets/images/Opening.png", true, 48, 64);
		L.screenCenter();
		pixelZoom(L);
		add(L);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
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
	public function pixelZoom(sprite:FlxSprite)
	{
		sprite.setGraphicSize(Std.int(sprite.width * 2));
	}
}
