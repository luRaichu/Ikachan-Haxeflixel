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
	// doing the yandere dev
	static var blank = FlxColor.fromString("#000000");
	static var a = FlxColor.fromString("#0000FF");
	static var b = FlxColor.fromString("#1F45F1");
	static var c = FlxColor.fromString("#001F98");
	static var d = FlxColor.fromString("#0045BA");
	static var e = FlxColor.fromString("#006CE0");
	static var f = FlxColor.fromString("#98E718");
	static var g = FlxColor.fromString("#00C800");
	static var h = FlxColor.fromString("#006400");
	static var i = FlxColor.fromString("#EA00E6");
	static var j = FlxColor.fromString("#B900CA");
	static var k = FlxColor.fromString("#8C00A0");
	static var l = FlxColor.fromString("#5A0084");
	static var m = FlxColor.fromString("#F80000");
	static var n = FlxColor.fromString("#BA0000");
	static var o = FlxColor.fromString("#FFFFFF");
	static var p = FlxColor.fromString("#FFFF00");
	static var q = FlxColor.fromString("#EDBB39");
	static var r = FlxColor.fromString("#BB8100");
	static var s = FlxColor.fromString("#DBB000");
	static var t = FlxColor.fromString("#918086");

	public var map = new FlxTilemap();
	public var bg:FlxBackdrop;

	override public function create()
	{
		super.create();
		var back = new FlxSprite();

		CoolFunctions.playSong('ikachan');
		CoolFunctions.fadeShit();

		bg = new FlxBackdrop("assets/images/Back.png");
		bg.scrollFactor.set(0.75, 0.75);
		add(bg);

		map.loadMapFromGraphic("assets/images/Map1.png", true, 1, [blank, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t], "assets/images/tileset.png", 16, 16, 0, 1, 0);
		add(map);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
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
	}
}
