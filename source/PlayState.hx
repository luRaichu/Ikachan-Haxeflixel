package;

import flixel.addons.display.FlxBackdrop;
import flixel.tile.FlxTilemap;
import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;

class PlayState extends FlxTransitionableState
{
	// not doing the yandere dev

	public var map = new FlxTilemap();
	public var bg:FlxBackdrop;

	override public function create()
	{
		super.create();

		CoolFunctions.playSong('ikachan');
		CoolFunctions.fadeShit();

		bg = new FlxBackdrop("assets/images/Back.png");
		bg.scrollFactor.set(0.1, 0.1);
		add(bg);

		map.loadMapFromGraphic("assets/images/Map1.png", true, 1, [
			FlxColor.fromString("#000000"),
			FlxColor.fromString("#0000FF"),
			FlxColor.fromString("#1F45F1"),
			FlxColor.fromString("#001F98"),
			FlxColor.fromString("#0045BA"),
			FlxColor.fromString("#006CE0"),
			FlxColor.fromString("#98E718"),
			FlxColor.fromString("#00C800"),
			FlxColor.fromString("#006400"),
			FlxColor.fromString("#EA00E6"),
			FlxColor.fromString("#B900CA"),
			FlxColor.fromString("#8C00A0"),
			FlxColor.fromString("#5A0084"),
			FlxColor.fromString("#F80000"),
			FlxColor.fromString("#BA0000"),
			FlxColor.fromString("#FFFFFF"),
			FlxColor.fromString("#FFFF00"),
			FlxColor.fromString("#EDBB39"),
			FlxColor.fromString("#BB8100"),
			FlxColor.fromString("#DBB000"),
			FlxColor.fromString("#918086")
		], "assets/images/tileset.png", 16, 16, 0, 1, 0);
		map.useScaleHack = false;
		add(map);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		#if FLX_KEYBOARD
		if (FlxG.keys.pressed.W)
		{
			map.y++;
		}
		if (FlxG.keys.pressed.S)
		{
			map.y--;
		}
		if (FlxG.keys.pressed.A)
		{
			map.x++;
		}
		if (FlxG.keys.pressed.D)
		{
			map.x--;
		}
		#end
	}
}
