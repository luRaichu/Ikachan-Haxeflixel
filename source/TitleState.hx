package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

class TitleState extends FlxState
{
	public var title = new FlxSprite();
	public var pixel = new FlxSprite();
	public var pixel_x = 320;

	var tex:FlxAtlasFrames;

    override public function create():Void
    {
        super.create();

		FlxG.mouse.visible = false;

		CoolFunctions.playSong('mizuno');

		var L = new FlxSprite();
		var R = new FlxSprite();
		var back = new FlxSprite();
		var crab = new FlxSprite();

		back.makeGraphic(640, 480, FlxColor.CYAN);
		back.screenCenter();
        add(back);

		title.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		title.animation.addByPrefix('title', 'title', 24, false);
		CoolFunctions.pixelZoom(title);
		CoolFunctions.set(title, 65, -83);
		title.animation.play('title');
		add(title);

		crab.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		crab.animation.addByPrefix('crab', 'crab', 24, false);
		CoolFunctions.pixelZoom(crab);
		CoolFunctions.set(crab, 132, 137);
		crab.animation.play('crab');
		add(crab);

		L.loadGraphic("assets/images/Opening.png", true, 48, 64);
		CoolFunctions.pixelZoom(L);
		L.screenCenter();
		//add(L);

		pixel.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		pixel.animation.addByPrefix('pixel', 'pixel', 24, false);
		CoolFunctions.pixelZoom(pixel);
		CoolFunctions.set(pixel, 320, 205);
		pixel.animation.play('pixel');
		add(pixel);

    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
		if (title.y < 90)
		{
			CoolFunctions.move(title, 0, 1);
		}
		if (pixel.x * 2 != 320)
		{
			// Move 'Made by Studio Pixel' text
			CoolFunctions.move(pixel, -2, 0);
		}
    }
}