import flash.display.BitmapData;
import flash.media.Sound;
import flash.text.Font;

interface IAsset
{
    function getBitmapData(id:String, ?useCache:Bool=true):BitmapData;

    function getFont(id:String, ?useCache:Bool=true):Font;

    function getSound(id:String, ?useCache:Bool=true):Sound;

    function getText(id:String):String;
}