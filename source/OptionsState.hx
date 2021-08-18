package;

import flixel.util.FlxColor;
import flixel.text.FlxBitmapText;
import flixel.FlxG;
import flixel.addons.display.FlxTiledSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.frames.FlxBitmapFont;

class OptionsState extends FlxTransitionableState
{
	public var bg:FlxTiledSprite;

    function addText(x, y, wrap, text)
    {
		var font = FlxBitmapFont.fromAngelCode("assets/misc/MSX.png", "assets/misc/MSX.fnt");

        var back = new FlxBitmapText(font);
		back.text = text;
		back.x = x + 1;
		back.y = y + 1;
		back.color = FlxColor.BLUE;
		add(back);

        var front = new FlxBitmapText(font);
		front.text = text;
		front.x = x;
		front.y = y;
		add(front);
    }
    override public function create():Void
    {
        super.create();

		CoolFunctions.playSong('lofi');

		bg = new FlxTiledSprite("assets/images/Back.png", FlxG.width + 128, FlxG.height, true, true);
		bg.x = -64;
		add(bg);

		// JUST TESTIN SHIT HERE
		/*var sp = new SpriteEffects('assets/images/Staff.png');
		add(sp);
		bg.addEffect("wave",  { id:"wave", time : 20, width : 10, height : 1 });*/

		addText(0, 0, 0, "sussy balls");

    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
		bg.x++;
		if (bg.x > 0)
		{
			bg.x = -64;
		}
		if (FlxG.keys.justPressed.ESCAPE)
		{
			FlxG.switchState(new TitleState());
		}
    }
}