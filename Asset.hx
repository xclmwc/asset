import flash.display.BitmapData;
import flash.media.Sound;
import flash.text.Font;

class Asset
{
    static var initialized:Bool = false;
    static public var assets(get, set):IAsset;
    static var _assets:IAsset;

    static public function initialize():Void
    {
        if (initialized)
            return;
        initialized = true;
        assets = new DefaultAsset();
    }

    static public function getBitmapData(id:String, ?useCache:Bool=true):BitmapData
    {
        initialize();
        return assets.getBitmapData(id, useCache);
    }

    static public function getFont(id:String, ?useCache:Bool=true):Font
    {
        initialize();
        return assets.getFont(id, useCache);
    }

    static public function getSound(id:String, ?useCache:Bool=true):Sound
    {
        initialize();
        return assets.getSound(id, useCache);
    }

    static public function getText(id:String):String
    {
        initialize();
        return assets.getText(id);
    }

    static public function get_assets():IAsset
    {
        return _assets;
    }

    static public function set_assets(value:IAsset):IAsset
    {
        initialized = true;
        _assets = value;
        return value;
    }
}