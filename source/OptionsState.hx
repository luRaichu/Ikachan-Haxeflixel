package;

import flixel.text.FlxText;
import flixel.FlxObject;
import flixel.FlxG;
import flixel.addons.display.FlxTiledSprite;
import flixel.addons.effects.chainable.FlxEffectSprite;
import Shaders.WiggleEffect;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.effects.chainable.FlxWaveEffect;

class OptionsState extends FlxTransitionableState
{
	public var wiggleShit:WiggleEffect;
	public var bg:FlxTiledSprite;

    function addText(x, y, wrap, text)
    {
        var text = new FlxText(x, y, wrap, text, 8);
		text.setFormat("assets/data/MS Gothic.otf");
        trace(text);
    }
    override public function create():Void
    {
        super.create();

		CoolFunctions.playSong('lofi');

		bg = new FlxTiledSprite("assets/images/Back.png", FlxG.width + 128, FlxG.height, true, true);
		bg.x = -64;
		add(bg);

		var box = new FlxSprite("assets/images/Msgbox.png");

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