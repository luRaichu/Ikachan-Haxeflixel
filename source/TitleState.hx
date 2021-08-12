package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.addons.transition.FlxTransitionableState;
import flixel.input.touch.FlxTouch;

class TitleState extends FlxTransitionableState
{
	public var title = new FlxSprite();
	public var pixel = new FlxSprite();

	var tex:FlxAtlasFrames;

    override public function create():Void
    {
        super.create();

		#if !mobile
		FlxG.mouse.visible = false;
		#end
		CoolFunctions.playSong('mizuno');
		CoolFunctions.fadeShit();

		var L = new FlxSprite();
		var R = new FlxSprite();
		var back = new FlxSprite();
		var crab = new FlxSprite();

		back.makeGraphic(320, 240, FlxColor.CYAN);
		back.screenCenter();
        add(back);

		FlxG.sound.playMusic("assets/music/inst.mp3", 1, true);

		title.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		title.animation.addByPrefix('title', 'title', 24, false);
		title.x = 65;
		title.y = -83;
		title.animation.play('title');
		add(title);

		crab.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		crab.animation.addByPrefix('crab', 'crab', 24, false);
		crab.x = 132;
		crab.y = 137;
		crab.animation.play('crab');
		add(crab);

		pixel.frames = FlxAtlasFrames.fromSparrow("assets/images/Opening.png", "assets/images/Opening.xml");
		pixel.animation.addByPrefix('pixel', 'pixel', 24, false);
		pixel.x = 320;
		pixel.y = 205;
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
    }
}