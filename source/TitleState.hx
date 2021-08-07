package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;

class TitleState extends FlxState
{
    override public function create():Void
    {
        super.create();

		FlxG.mouse.visible = false;

		PlayState.playSong('mizuno');

		var L = new FlxSprite();
		var back = new FlxSprite();

		back.makeGraphic(640, 480, FlxColor.WHITE);
		back.screenCenter();
        add(back);

		L.loadGraphic("assets/images/Opening.png", true, 48, 64);
		L.screenCenter();
		PlayState.pixelZoom(L);
		add(L);
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
    }
}