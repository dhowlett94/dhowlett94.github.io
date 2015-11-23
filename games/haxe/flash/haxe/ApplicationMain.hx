import lime.Assets;
#if !macro


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	private static var app:lime.app.Application;
	
	
	public static function create ():Void {
		
		app = new openfl.display.Application ();
		app.create (config);
		
		var display = new flixel.system.FlxPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		preloader.onComplete = init;
		preloader.create (config);
		
		#if js
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/data/vehicleCustomisationGrid.txt");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/images/low/advancedEnemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/averageEnemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/basicEnemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/blueTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/blueTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/blueWeaponTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/blueWeaponTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/customisationTiles.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/customiseButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/doublePointsPowerup.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/emptyTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/enemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/enemyLaser.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/greenTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/greenTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/greenWeaponTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/greenWeaponTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/optionsButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/pauseIcon.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/pinkTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/pinkTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/pinkWeaponTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/pinkWeaponTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/playButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/playerEnergyBall.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/playerLaser.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/shockwaveAmmoPlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/weaponTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/weaponTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/whiteTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/whiteTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/whiteWeaponTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/whiteWeaponTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/yellowTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/low/yellowTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/medium/customisationTiles.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/medium/customiseButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/medium/optionsButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/medium/playButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/medium/yellowTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/playButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/advancedEnemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/averageEnemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/basicEnemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/customiseButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/doublePointsPowerup.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/emptyTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/enemy.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/enemyLaser.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/optionsButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/pauseIcon.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/playButton.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/playerEnergyBall.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/playerLaser.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/shockwaveAmmoPlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/weaponTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/weaponTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/yellowTile.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/images/xxhigh/yellowTilePlayer.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/sounds/ButtonPress.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/EnemyGridSpawn.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/EnemyHurt.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/GeneralBackgroundMusic.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/LaserAmmo.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/PlasmaAmmo.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/PlayerHurt.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/PlayStateBackgroundMusic.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/PowerupAcquired.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/ShockwaveAmmo.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/TilePlacement.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/TilePlacementError.wav");
		types.push (AssetType.SOUND);
		
		
		urls.push ("assets/sounds/beep.mp3");
		types.push (AssetType.MUSIC);
		
		
		urls.push ("assets/sounds/flixel.mp3");
		types.push (AssetType.MUSIC);
		
		
		urls.push ("assets/fonts/nokiafc22.ttf");
		types.push (AssetType.FONT);
		
		
		urls.push ("assets/fonts/arial.ttf");
		types.push (AssetType.FONT);
		
		
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if sys
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (_) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		
		
		if (loaded == total) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			antialiasing: Std.int (0),
			background: Std.int (13816530),
			borderless: false,
			depthBuffer: false,
			fps: Std.int (60),
			fullscreen: false,
			height: Std.int (768),
			orientation: "portrait",
			resizable: true,
			stencilBuffer: false,
			title: "ProjectEcho",
			vsync: true,
			width: Std.int (1024),
			
		}
		
		#if js
		#if munit
		flash.Lib.embed (null, 1024, 768, "D2D2D2");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		openfl.Lib.current.stage.align = openfl.display.StageAlign.TOP_LEFT;
		openfl.Lib.current.stage.scaleMode = openfl.display.StageScaleMode.NO_SCALE;
		
		var hasMain = false;
		
		for (methodName in Type.getClassFields (Main)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		if (hasMain) {
			
			Reflect.callMethod (Main, Reflect.field (Main, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		
	}
	
	
	#if neko
	@:noCompletion public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


#if flash @:build(DocumentClass.buildFlash())
#else @:build(DocumentClass.build()) #end
@:keep class DocumentClass extends Main {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					this.stage = flash.Lib.current.stage;
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
	macro public static function buildFlash ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				var method = macro {
					return flash.Lib.current.stage;
				}
				
				fields.push ({ name: "get_stage", access: [ APrivate ], meta: [ { name: ":getter", params: [ macro stage ], pos: Context.currentPos() } ], kind: FFun({ args: [], expr: method, params: [], ret: macro :flash.display.Stage }), pos: Context.currentPos() });
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end