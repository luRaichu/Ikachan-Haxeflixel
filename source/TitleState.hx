package;

import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxTiledSprite;

class TitleState extends FlxTransitionableState
{
	public var L:FlxTiledSprite;
	public var R:FlxTiledSprite;
	public var title = new FlxSprite(65, -83);
	public var pixel = new FlxSprite(320, 205);

    override public function create():Void
    {
        super.create();

		#if !mobile
		FlxG.mouse.visible = false;
		#end
		CoolFunctions.playSong('mizuno');
		CoolFunctions.fadeShit();
		
		var back = new FlxSprite();
		var crab = new FlxSprite(132, 137);

		back.makeGraphic(320, 240, FlxColor.WHITE);
		back.screenCenter();
        add(back);

		L = new FlxTiledSprite("assets/images/BorderL.png", 48, FlxG.height * 4, false, true);
		L.x = -128;
		L.y = -128;
		add(L);

		R = new FlxTiledSprite("assets/images/BorderR.png", 248, FlxG.height * 4, false, true);
		R.x = 400;
		R.y = -128;
		add(R);

		title.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		title.animation.addByPrefix('title', 'title', 24, false);
		title.animation.play('title');
		add(title);

		crab.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		crab.animation.addByPrefix('crab', 'crab', 24, false);
		crab.animation.play('crab');
		add(crab);

		pixel.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		pixel.animation.addByPrefix('pixel', 'pixel', 24, false);
		pixel.animation.play('pixel');
		add(pixel);

    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
		if (title.y < 45)
		{
			title.y += 1;
		}
		if (pixel.x > 64)
		{
			// Move 'Made by Studio Pixel' text
			pixel.x -= 2;
		}
		#if FLX_KEYBOARD
		if (FlxG.keys.justPressed.Z)
		{
			FlxG.switchState(new PlayState());
		}
		#end
		#if mobile
		for (touch in FlxG.touches.list)
		{
			if (touch.justPressed) {
				FlxG.switchState(new PlayState());
			}
		}
		#end
		L.y++;
		R.y++;
		if (L.y == 0)
		{
			L.y = -128;
		}
		if (R.y == 0)
		{
			R.y = -128;
		}
		if (L.x != 0)
		{
			L.x++;
		}
		if (R.x != 272)
		{
			R.x--;
		}
    }
}