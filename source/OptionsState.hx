package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.text.FlxBitmapText;
import flixel.FlxG;
import flixel.addons.display.FlxTiledSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.frames.FlxBitmapFont;

class OptionsState extends FlxTransitionableState
{
	public var bg:FlxTiledSprite;
	public var ika:FlxSprite;

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
		sp.addEffect("wave",  { id:"wave", time : 20, width : 10, height : 1 });*/

		var border = new FlxSprite(60, 28);
		border.makeGraphic(200, 168, 0xFF5B201C);
		add(border);

		var box = new FlxSprite(64, 32);
		box.makeGraphic(192, 160, 0xFF210000);
		add(box);
		
		ika = new FlxSprite(80, 48);
		ika.loadGraphic("assets/images/MyChar.png", true, 16, 16);
		ika.animation.add("ika", [8], 24, true);
		ika.animation.play("ika");
		add(ika);

		addText(0, 0, 0, "imposter sus!!! 1234");

    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
		bg.x++;
		if (bg.x > 0)
		{
			bg.x = -64;
		}
		if (Input.gKeyUp())
		{
			ika.y -= 16;
		}
		if (FlxG.keys.justPressed.DOWN)
		{
			ika.y += 16;
		}
		if (FlxG.keys.justPressed.ESCAPE)
		{
			FlxG.switchState(new TitleState());
		}
    }
}