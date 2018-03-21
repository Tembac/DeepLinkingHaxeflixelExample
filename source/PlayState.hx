package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	
	var sampleText:FlxText;
	
	override public function create():Void
	{
		super.create();
		
		this.bgColor = FlxColor.GREEN;
		
		//sampleText = new FlxText(0, 10, FlxG.width, "", 12);
		//sampleText.text = "" + Clipboard.getClipboardText();
		//add(sampleText);		
		
		var sampleText:FlxText = new FlxText(0, 100, FlxG.width, "pucha que vale la pena estar vivo.", 12);
		sampleText.text = "" + DeepLinking.getLink();
		add(sampleText);
		
		//SetBrightness.setBrightness( 1);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		//sampleText.text = "" + DeepLinking.getLink();
		
	}
	
	override public function onFocus():Void
	{
		super.onFocus();
		//sampleText.text = "" + Clipboard.getClipboardText();
		//sampleText.text = "" + DeepLinking.getLink();
		FlxG.resetState();
	}
}
