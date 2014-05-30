import flash.display.BitmapData;
import flash.media.Sound;
import flash.text.Font;

class DefaultAsset implements IAsset
{
    public function new()
    {

    }
    
    public function getBitmapData(id:String, ?useCache:Bool=true):BitmapData
    {
        return openfl.Assets.getBitmapData(id, useCache);
    }

    public function getFont(id:String, ?useCache:Bool=true):Font
    {
        return openfl.Assets.getFont(id, useCache);
    }

    public function getSound(id:String, ?useCache:Bool=true):Sound
    {
        return openfl.Assets.getSound(id, useCache);
    }

    public function getText(id:String):String
    {
        return openfl.Assets.getText(id);
    }
}