package;

import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;

class PlayState extends FlxTransitionableState
{
	override public function create()
	{
		super.create();
		var back = new FlxSprite();

		back.makeGraphic(640, 480, FlxColor.GREEN);
		back.screenCenter();
        add(back);

		CoolFunctions.playSong('ikachan');
		CoolFunctions.fadeShit();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.justPressed.F)
		{
			FlxG.switchState(new TitleState());
		}
	}
}
