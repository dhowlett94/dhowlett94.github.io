package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Preloader;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Font;
import lime.graphics.Image;
import lime.utils.ByteArray;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("assets/data/vehicleCustomisationGrid.txt", __ASSET__assets_data_vehiclecustomisationgrid_txt);
		type.set ("assets/data/vehicleCustomisationGrid.txt", AssetType.TEXT);
		className.set ("assets/images/low/advancedEnemy.png", __ASSET__assets_images_low_advancedenemy_png);
		type.set ("assets/images/low/advancedEnemy.png", AssetType.IMAGE);
		className.set ("assets/images/low/averageEnemy.png", __ASSET__assets_images_low_averageenemy_png);
		type.set ("assets/images/low/averageEnemy.png", AssetType.IMAGE);
		className.set ("assets/images/low/basicEnemy.png", __ASSET__assets_images_low_basicenemy_png);
		type.set ("assets/images/low/basicEnemy.png", AssetType.IMAGE);
		className.set ("assets/images/low/blueTile.png", __ASSET__assets_images_low_bluetile_png);
		type.set ("assets/images/low/blueTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/blueTilePlayer.png", __ASSET__assets_images_low_bluetileplayer_png);
		type.set ("assets/images/low/blueTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/blueWeaponTile.png", __ASSET__assets_images_low_blueweapontile_png);
		type.set ("assets/images/low/blueWeaponTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/blueWeaponTilePlayer.png", __ASSET__assets_images_low_blueweapontileplayer_png);
		type.set ("assets/images/low/blueWeaponTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/customisationTiles.png", __ASSET__assets_images_low_customisationtiles_png);
		type.set ("assets/images/low/customisationTiles.png", AssetType.IMAGE);
		className.set ("assets/images/low/customiseButton.png", __ASSET__assets_images_low_customisebutton_png);
		type.set ("assets/images/low/customiseButton.png", AssetType.IMAGE);
		className.set ("assets/images/low/doublePointsPowerup.png", __ASSET__assets_images_low_doublepointspowerup_png);
		type.set ("assets/images/low/doublePointsPowerup.png", AssetType.IMAGE);
		className.set ("assets/images/low/emptyTile.png", __ASSET__assets_images_low_emptytile_png);
		type.set ("assets/images/low/emptyTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/enemy.png", __ASSET__assets_images_low_enemy_png);
		type.set ("assets/images/low/enemy.png", AssetType.IMAGE);
		className.set ("assets/images/low/enemyLaser.png", __ASSET__assets_images_low_enemylaser_png);
		type.set ("assets/images/low/enemyLaser.png", AssetType.IMAGE);
		className.set ("assets/images/low/greenTile.png", __ASSET__assets_images_low_greentile_png);
		type.set ("assets/images/low/greenTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/greenTilePlayer.png", __ASSET__assets_images_low_greentileplayer_png);
		type.set ("assets/images/low/greenTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/greenWeaponTile.png", __ASSET__assets_images_low_greenweapontile_png);
		type.set ("assets/images/low/greenWeaponTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/greenWeaponTilePlayer.png", __ASSET__assets_images_low_greenweapontileplayer_png);
		type.set ("assets/images/low/greenWeaponTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/optionsButton.png", __ASSET__assets_images_low_optionsbutton_png);
		type.set ("assets/images/low/optionsButton.png", AssetType.IMAGE);
		className.set ("assets/images/low/pauseIcon.png", __ASSET__assets_images_low_pauseicon_png);
		type.set ("assets/images/low/pauseIcon.png", AssetType.IMAGE);
		className.set ("assets/images/low/pinkTile.png", __ASSET__assets_images_low_pinktile_png);
		type.set ("assets/images/low/pinkTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/pinkTilePlayer.png", __ASSET__assets_images_low_pinktileplayer_png);
		type.set ("assets/images/low/pinkTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/pinkWeaponTile.png", __ASSET__assets_images_low_pinkweapontile_png);
		type.set ("assets/images/low/pinkWeaponTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/pinkWeaponTilePlayer.png", __ASSET__assets_images_low_pinkweapontileplayer_png);
		type.set ("assets/images/low/pinkWeaponTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/playButton.png", __ASSET__assets_images_low_playbutton_png);
		type.set ("assets/images/low/playButton.png", AssetType.IMAGE);
		className.set ("assets/images/low/playerEnergyBall.png", __ASSET__assets_images_low_playerenergyball_png);
		type.set ("assets/images/low/playerEnergyBall.png", AssetType.IMAGE);
		className.set ("assets/images/low/playerLaser.png", __ASSET__assets_images_low_playerlaser_png);
		type.set ("assets/images/low/playerLaser.png", AssetType.IMAGE);
		className.set ("assets/images/low/shockwaveAmmoPlayer.png", __ASSET__assets_images_low_shockwaveammoplayer_png);
		type.set ("assets/images/low/shockwaveAmmoPlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/weaponTile.png", __ASSET__assets_images_low_weapontile_png);
		type.set ("assets/images/low/weaponTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/weaponTilePlayer.png", __ASSET__assets_images_low_weapontileplayer_png);
		type.set ("assets/images/low/weaponTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/whiteTile.png", __ASSET__assets_images_low_whitetile_png);
		type.set ("assets/images/low/whiteTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/whiteTilePlayer.png", __ASSET__assets_images_low_whitetileplayer_png);
		type.set ("assets/images/low/whiteTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/whiteWeaponTile.png", __ASSET__assets_images_low_whiteweapontile_png);
		type.set ("assets/images/low/whiteWeaponTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/whiteWeaponTilePlayer.png", __ASSET__assets_images_low_whiteweapontileplayer_png);
		type.set ("assets/images/low/whiteWeaponTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/low/yellowTile.png", __ASSET__assets_images_low_yellowtile_png);
		type.set ("assets/images/low/yellowTile.png", AssetType.IMAGE);
		className.set ("assets/images/low/yellowTilePlayer.png", __ASSET__assets_images_low_yellowtileplayer_png);
		type.set ("assets/images/low/yellowTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/medium/customisationTiles.png", __ASSET__assets_images_medium_customisationtiles_png);
		type.set ("assets/images/medium/customisationTiles.png", AssetType.IMAGE);
		className.set ("assets/images/medium/customiseButton.png", __ASSET__assets_images_medium_customisebutton_png);
		type.set ("assets/images/medium/customiseButton.png", AssetType.IMAGE);
		className.set ("assets/images/medium/optionsButton.png", __ASSET__assets_images_medium_optionsbutton_png);
		type.set ("assets/images/medium/optionsButton.png", AssetType.IMAGE);
		className.set ("assets/images/medium/playButton.png", __ASSET__assets_images_medium_playbutton_png);
		type.set ("assets/images/medium/playButton.png", AssetType.IMAGE);
		className.set ("assets/images/medium/yellowTile.png", __ASSET__assets_images_medium_yellowtile_png);
		type.set ("assets/images/medium/yellowTile.png", AssetType.IMAGE);
		className.set ("assets/images/playButton.png", __ASSET__assets_images_playbutton_png);
		type.set ("assets/images/playButton.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/advancedEnemy.png", __ASSET__assets_images_xxhigh_advancedenemy_png);
		type.set ("assets/images/xxhigh/advancedEnemy.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/averageEnemy.png", __ASSET__assets_images_xxhigh_averageenemy_png);
		type.set ("assets/images/xxhigh/averageEnemy.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/basicEnemy.png", __ASSET__assets_images_xxhigh_basicenemy_png);
		type.set ("assets/images/xxhigh/basicEnemy.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/customiseButton.png", __ASSET__assets_images_xxhigh_customisebutton_png);
		type.set ("assets/images/xxhigh/customiseButton.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/doublePointsPowerup.png", __ASSET__assets_images_xxhigh_doublepointspowerup_png);
		type.set ("assets/images/xxhigh/doublePointsPowerup.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/emptyTile.png", __ASSET__assets_images_xxhigh_emptytile_png);
		type.set ("assets/images/xxhigh/emptyTile.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/enemy.png", __ASSET__assets_images_xxhigh_enemy_png);
		type.set ("assets/images/xxhigh/enemy.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/enemyLaser.png", __ASSET__assets_images_xxhigh_enemylaser_png);
		type.set ("assets/images/xxhigh/enemyLaser.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/optionsButton.png", __ASSET__assets_images_xxhigh_optionsbutton_png);
		type.set ("assets/images/xxhigh/optionsButton.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/pauseIcon.png", __ASSET__assets_images_xxhigh_pauseicon_png);
		type.set ("assets/images/xxhigh/pauseIcon.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/playButton.png", __ASSET__assets_images_xxhigh_playbutton_png);
		type.set ("assets/images/xxhigh/playButton.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/playerEnergyBall.png", __ASSET__assets_images_xxhigh_playerenergyball_png);
		type.set ("assets/images/xxhigh/playerEnergyBall.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/playerLaser.png", __ASSET__assets_images_xxhigh_playerlaser_png);
		type.set ("assets/images/xxhigh/playerLaser.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/shockwaveAmmoPlayer.png", __ASSET__assets_images_xxhigh_shockwaveammoplayer_png);
		type.set ("assets/images/xxhigh/shockwaveAmmoPlayer.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/weaponTile.png", __ASSET__assets_images_xxhigh_weapontile_png);
		type.set ("assets/images/xxhigh/weaponTile.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/weaponTilePlayer.png", __ASSET__assets_images_xxhigh_weapontileplayer_png);
		type.set ("assets/images/xxhigh/weaponTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/yellowTile.png", __ASSET__assets_images_xxhigh_yellowtile_png);
		type.set ("assets/images/xxhigh/yellowTile.png", AssetType.IMAGE);
		className.set ("assets/images/xxhigh/yellowTilePlayer.png", __ASSET__assets_images_xxhigh_yellowtileplayer_png);
		type.set ("assets/images/xxhigh/yellowTilePlayer.png", AssetType.IMAGE);
		className.set ("assets/sounds/ButtonPress.wav", __ASSET__assets_sounds_buttonpress_wav);
		type.set ("assets/sounds/ButtonPress.wav", AssetType.SOUND);
		className.set ("assets/sounds/EnemyGridSpawn.wav", __ASSET__assets_sounds_enemygridspawn_wav);
		type.set ("assets/sounds/EnemyGridSpawn.wav", AssetType.SOUND);
		className.set ("assets/sounds/EnemyHurt.wav", __ASSET__assets_sounds_enemyhurt_wav);
		type.set ("assets/sounds/EnemyHurt.wav", AssetType.SOUND);
		className.set ("assets/sounds/GeneralBackgroundMusic.wav", __ASSET__assets_sounds_generalbackgroundmusic_wav);
		type.set ("assets/sounds/GeneralBackgroundMusic.wav", AssetType.SOUND);
		className.set ("assets/sounds/LaserAmmo.wav", __ASSET__assets_sounds_laserammo_wav);
		type.set ("assets/sounds/LaserAmmo.wav", AssetType.SOUND);
		className.set ("assets/sounds/PlasmaAmmo.wav", __ASSET__assets_sounds_plasmaammo_wav);
		type.set ("assets/sounds/PlasmaAmmo.wav", AssetType.SOUND);
		className.set ("assets/sounds/PlayerHurt.wav", __ASSET__assets_sounds_playerhurt_wav);
		type.set ("assets/sounds/PlayerHurt.wav", AssetType.SOUND);
		className.set ("assets/sounds/PlayStateBackgroundMusic.wav", __ASSET__assets_sounds_playstatebackgroundmusic_wav);
		type.set ("assets/sounds/PlayStateBackgroundMusic.wav", AssetType.SOUND);
		className.set ("assets/sounds/PowerupAcquired.wav", __ASSET__assets_sounds_powerupacquired_wav);
		type.set ("assets/sounds/PowerupAcquired.wav", AssetType.SOUND);
		className.set ("assets/sounds/ShockwaveAmmo.wav", __ASSET__assets_sounds_shockwaveammo_wav);
		type.set ("assets/sounds/ShockwaveAmmo.wav", AssetType.SOUND);
		className.set ("assets/sounds/TilePlacement.wav", __ASSET__assets_sounds_tileplacement_wav);
		type.set ("assets/sounds/TilePlacement.wav", AssetType.SOUND);
		className.set ("assets/sounds/TilePlacementError.wav", __ASSET__assets_sounds_tileplacementerror_wav);
		type.set ("assets/sounds/TilePlacementError.wav", AssetType.SOUND);
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		className.set ("assets/fonts/nokiafc22.ttf", __ASSET__assets_fonts_nokiafc22_ttf);
		type.set ("assets/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("assets/fonts/arial.ttf", __ASSET__assets_fonts_arial_ttf);
		type.set ("assets/fonts/arial.ttf", AssetType.FONT);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/vehicleCustomisationGrid.txt";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/images/low/advancedEnemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/averageEnemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/basicEnemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/blueTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/blueTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/blueWeaponTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/blueWeaponTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/customisationTiles.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/customiseButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/doublePointsPowerup.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/emptyTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/enemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/enemyLaser.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/greenTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/greenTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/greenWeaponTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/greenWeaponTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/optionsButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/pauseIcon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/pinkTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/pinkTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/pinkWeaponTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/pinkWeaponTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/playButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/playerEnergyBall.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/playerLaser.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/shockwaveAmmoPlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/weaponTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/weaponTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/whiteTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/whiteTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/whiteWeaponTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/whiteWeaponTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/yellowTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/low/yellowTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/medium/customisationTiles.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/medium/customiseButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/medium/optionsButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/medium/playButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/medium/yellowTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/playButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/advancedEnemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/averageEnemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/basicEnemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/customiseButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/doublePointsPowerup.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/emptyTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/enemy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/enemyLaser.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/optionsButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/pauseIcon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/playButton.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/playerEnergyBall.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/playerLaser.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/shockwaveAmmoPlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/weaponTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/weaponTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/yellowTile.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/xxhigh/yellowTilePlayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/sounds/ButtonPress.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/EnemyGridSpawn.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/EnemyHurt.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/GeneralBackgroundMusic.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/LaserAmmo.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/PlasmaAmmo.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/PlayerHurt.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/PlayStateBackgroundMusic.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/PowerupAcquired.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/ShockwaveAmmo.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/TilePlacement.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/TilePlacementError.wav";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "assets/sounds/beep.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/sounds/flixel.mp3";
		path.set (id, id);
		
		type.set (id, AssetType.MUSIC);
		id = "assets/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__assets_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "assets/fonts/arial.ttf";
		className.set (id, __ASSET__assets_fonts_arial_ttf);
		
		type.set (id, AssetType.FONT);
		
		
		#else
		
		#if openfl
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__assets_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__assets_fonts_arial_ttf);
		
		#end
		
		#if (windows || mac || linux)
		
		/*var useManifest = false;
		
		className.set ("assets/data/vehicleCustomisationGrid.txt", __ASSET__assets_data_vehiclecustomisationgrid_txt);
		type.set ("assets/data/vehicleCustomisationGrid.txt", AssetType.TEXT);
		
		className.set ("assets/images/low/advancedEnemy.png", __ASSET__assets_images_low_advancedenemy_png);
		type.set ("assets/images/low/advancedEnemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/averageEnemy.png", __ASSET__assets_images_low_averageenemy_png);
		type.set ("assets/images/low/averageEnemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/basicEnemy.png", __ASSET__assets_images_low_basicenemy_png);
		type.set ("assets/images/low/basicEnemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/blueTile.png", __ASSET__assets_images_low_bluetile_png);
		type.set ("assets/images/low/blueTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/blueTilePlayer.png", __ASSET__assets_images_low_bluetileplayer_png);
		type.set ("assets/images/low/blueTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/blueWeaponTile.png", __ASSET__assets_images_low_blueweapontile_png);
		type.set ("assets/images/low/blueWeaponTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/blueWeaponTilePlayer.png", __ASSET__assets_images_low_blueweapontileplayer_png);
		type.set ("assets/images/low/blueWeaponTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/customisationTiles.png", __ASSET__assets_images_low_customisationtiles_png);
		type.set ("assets/images/low/customisationTiles.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/customiseButton.png", __ASSET__assets_images_low_customisebutton_png);
		type.set ("assets/images/low/customiseButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/doublePointsPowerup.png", __ASSET__assets_images_low_doublepointspowerup_png);
		type.set ("assets/images/low/doublePointsPowerup.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/emptyTile.png", __ASSET__assets_images_low_emptytile_png);
		type.set ("assets/images/low/emptyTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/enemy.png", __ASSET__assets_images_low_enemy_png);
		type.set ("assets/images/low/enemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/enemyLaser.png", __ASSET__assets_images_low_enemylaser_png);
		type.set ("assets/images/low/enemyLaser.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/greenTile.png", __ASSET__assets_images_low_greentile_png);
		type.set ("assets/images/low/greenTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/greenTilePlayer.png", __ASSET__assets_images_low_greentileplayer_png);
		type.set ("assets/images/low/greenTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/greenWeaponTile.png", __ASSET__assets_images_low_greenweapontile_png);
		type.set ("assets/images/low/greenWeaponTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/greenWeaponTilePlayer.png", __ASSET__assets_images_low_greenweapontileplayer_png);
		type.set ("assets/images/low/greenWeaponTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/optionsButton.png", __ASSET__assets_images_low_optionsbutton_png);
		type.set ("assets/images/low/optionsButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/pauseIcon.png", __ASSET__assets_images_low_pauseicon_png);
		type.set ("assets/images/low/pauseIcon.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/pinkTile.png", __ASSET__assets_images_low_pinktile_png);
		type.set ("assets/images/low/pinkTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/pinkTilePlayer.png", __ASSET__assets_images_low_pinktileplayer_png);
		type.set ("assets/images/low/pinkTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/pinkWeaponTile.png", __ASSET__assets_images_low_pinkweapontile_png);
		type.set ("assets/images/low/pinkWeaponTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/pinkWeaponTilePlayer.png", __ASSET__assets_images_low_pinkweapontileplayer_png);
		type.set ("assets/images/low/pinkWeaponTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/playButton.png", __ASSET__assets_images_low_playbutton_png);
		type.set ("assets/images/low/playButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/playerEnergyBall.png", __ASSET__assets_images_low_playerenergyball_png);
		type.set ("assets/images/low/playerEnergyBall.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/playerLaser.png", __ASSET__assets_images_low_playerlaser_png);
		type.set ("assets/images/low/playerLaser.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/shockwaveAmmoPlayer.png", __ASSET__assets_images_low_shockwaveammoplayer_png);
		type.set ("assets/images/low/shockwaveAmmoPlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/weaponTile.png", __ASSET__assets_images_low_weapontile_png);
		type.set ("assets/images/low/weaponTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/weaponTilePlayer.png", __ASSET__assets_images_low_weapontileplayer_png);
		type.set ("assets/images/low/weaponTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/whiteTile.png", __ASSET__assets_images_low_whitetile_png);
		type.set ("assets/images/low/whiteTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/whiteTilePlayer.png", __ASSET__assets_images_low_whitetileplayer_png);
		type.set ("assets/images/low/whiteTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/whiteWeaponTile.png", __ASSET__assets_images_low_whiteweapontile_png);
		type.set ("assets/images/low/whiteWeaponTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/whiteWeaponTilePlayer.png", __ASSET__assets_images_low_whiteweapontileplayer_png);
		type.set ("assets/images/low/whiteWeaponTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/yellowTile.png", __ASSET__assets_images_low_yellowtile_png);
		type.set ("assets/images/low/yellowTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/low/yellowTilePlayer.png", __ASSET__assets_images_low_yellowtileplayer_png);
		type.set ("assets/images/low/yellowTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/medium/customisationTiles.png", __ASSET__assets_images_medium_customisationtiles_png);
		type.set ("assets/images/medium/customisationTiles.png", AssetType.IMAGE);
		
		className.set ("assets/images/medium/customiseButton.png", __ASSET__assets_images_medium_customisebutton_png);
		type.set ("assets/images/medium/customiseButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/medium/optionsButton.png", __ASSET__assets_images_medium_optionsbutton_png);
		type.set ("assets/images/medium/optionsButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/medium/playButton.png", __ASSET__assets_images_medium_playbutton_png);
		type.set ("assets/images/medium/playButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/medium/yellowTile.png", __ASSET__assets_images_medium_yellowtile_png);
		type.set ("assets/images/medium/yellowTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/playButton.png", __ASSET__assets_images_playbutton_png);
		type.set ("assets/images/playButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/advancedEnemy.png", __ASSET__assets_images_xxhigh_advancedenemy_png);
		type.set ("assets/images/xxhigh/advancedEnemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/averageEnemy.png", __ASSET__assets_images_xxhigh_averageenemy_png);
		type.set ("assets/images/xxhigh/averageEnemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/basicEnemy.png", __ASSET__assets_images_xxhigh_basicenemy_png);
		type.set ("assets/images/xxhigh/basicEnemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/customiseButton.png", __ASSET__assets_images_xxhigh_customisebutton_png);
		type.set ("assets/images/xxhigh/customiseButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/doublePointsPowerup.png", __ASSET__assets_images_xxhigh_doublepointspowerup_png);
		type.set ("assets/images/xxhigh/doublePointsPowerup.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/emptyTile.png", __ASSET__assets_images_xxhigh_emptytile_png);
		type.set ("assets/images/xxhigh/emptyTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/enemy.png", __ASSET__assets_images_xxhigh_enemy_png);
		type.set ("assets/images/xxhigh/enemy.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/enemyLaser.png", __ASSET__assets_images_xxhigh_enemylaser_png);
		type.set ("assets/images/xxhigh/enemyLaser.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/optionsButton.png", __ASSET__assets_images_xxhigh_optionsbutton_png);
		type.set ("assets/images/xxhigh/optionsButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/pauseIcon.png", __ASSET__assets_images_xxhigh_pauseicon_png);
		type.set ("assets/images/xxhigh/pauseIcon.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/playButton.png", __ASSET__assets_images_xxhigh_playbutton_png);
		type.set ("assets/images/xxhigh/playButton.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/playerEnergyBall.png", __ASSET__assets_images_xxhigh_playerenergyball_png);
		type.set ("assets/images/xxhigh/playerEnergyBall.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/playerLaser.png", __ASSET__assets_images_xxhigh_playerlaser_png);
		type.set ("assets/images/xxhigh/playerLaser.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/shockwaveAmmoPlayer.png", __ASSET__assets_images_xxhigh_shockwaveammoplayer_png);
		type.set ("assets/images/xxhigh/shockwaveAmmoPlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/weaponTile.png", __ASSET__assets_images_xxhigh_weapontile_png);
		type.set ("assets/images/xxhigh/weaponTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/weaponTilePlayer.png", __ASSET__assets_images_xxhigh_weapontileplayer_png);
		type.set ("assets/images/xxhigh/weaponTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/yellowTile.png", __ASSET__assets_images_xxhigh_yellowtile_png);
		type.set ("assets/images/xxhigh/yellowTile.png", AssetType.IMAGE);
		
		className.set ("assets/images/xxhigh/yellowTilePlayer.png", __ASSET__assets_images_xxhigh_yellowtileplayer_png);
		type.set ("assets/images/xxhigh/yellowTilePlayer.png", AssetType.IMAGE);
		
		className.set ("assets/sounds/ButtonPress.wav", __ASSET__assets_sounds_buttonpress_wav);
		type.set ("assets/sounds/ButtonPress.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/EnemyGridSpawn.wav", __ASSET__assets_sounds_enemygridspawn_wav);
		type.set ("assets/sounds/EnemyGridSpawn.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/EnemyHurt.wav", __ASSET__assets_sounds_enemyhurt_wav);
		type.set ("assets/sounds/EnemyHurt.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/GeneralBackgroundMusic.wav", __ASSET__assets_sounds_generalbackgroundmusic_wav);
		type.set ("assets/sounds/GeneralBackgroundMusic.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/LaserAmmo.wav", __ASSET__assets_sounds_laserammo_wav);
		type.set ("assets/sounds/LaserAmmo.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/PlasmaAmmo.wav", __ASSET__assets_sounds_plasmaammo_wav);
		type.set ("assets/sounds/PlasmaAmmo.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/PlayerHurt.wav", __ASSET__assets_sounds_playerhurt_wav);
		type.set ("assets/sounds/PlayerHurt.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/PlayStateBackgroundMusic.wav", __ASSET__assets_sounds_playstatebackgroundmusic_wav);
		type.set ("assets/sounds/PlayStateBackgroundMusic.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/PowerupAcquired.wav", __ASSET__assets_sounds_powerupacquired_wav);
		type.set ("assets/sounds/PowerupAcquired.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/ShockwaveAmmo.wav", __ASSET__assets_sounds_shockwaveammo_wav);
		type.set ("assets/sounds/ShockwaveAmmo.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/TilePlacement.wav", __ASSET__assets_sounds_tileplacement_wav);
		type.set ("assets/sounds/TilePlacement.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/TilePlacementError.wav", __ASSET__assets_sounds_tileplacementerror_wav);
		type.set ("assets/sounds/TilePlacementError.wav", AssetType.SOUND);
		
		className.set ("assets/sounds/beep.mp3", __ASSET__assets_sounds_beep_mp3);
		type.set ("assets/sounds/beep.mp3", AssetType.MUSIC);
		
		className.set ("assets/sounds/flixel.mp3", __ASSET__assets_sounds_flixel_mp3);
		type.set ("assets/sounds/flixel.mp3", AssetType.MUSIC);
		
		className.set ("assets/fonts/nokiafc22.ttf", __ASSET__assets_fonts_nokiafc22_ttf);
		type.set ("assets/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("assets/fonts/arial.ttf", __ASSET__assets_fonts_arial_ttf);
		type.set ("assets/fonts/arial.ttf", AssetType.FONT);
		*/
		var useManifest = true;
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						if (eventCallback != null) {
							
							eventCallback (this, "change");
							
						}
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && requestedType == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif js
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return AudioBuffer.fromFile (path.get (id));
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif js
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		//return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), ByteArray);
		//else 
		return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Dynamic /*Font*/ {
		
		// TODO: Complete Lime Font API
		
		#if openfl
		#if (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), openfl.text.Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			openfl.text.Font.registerFont (fontClass);
			return cast (Type.createInstance (fontClass, []), openfl.text.Font);
			
		} else {
			
			return new openfl.text.Font (path.get (id));
			
		}
		
		#end
		#end
		
		return null;
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif js
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		return Image.fromFile (path.get (id));
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif js
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if js
		
		var bytes:ByteArray = null;
		var data = Preloader.loaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			return cast data;
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}
		
		if (bytes != null) {
			
			bytes.position = 0;
			return bytes.readUTFBytes (bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String, handler:AudioBuffer -> Void):Void {
		
		#if (flash || js)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getAudioBuffer (id));
			
		//}
		
		#else
		
		handler (getAudioBuffer (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadImage (id:String, handler:Image -> Void):Void {
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				handler (Image.fromBitmapData (bitmapData));
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getImage (id));
			
		}
		
		#else
		
		handler (getImage (id));
		
		#end
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								path.set (asset.id, asset.path);
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	/*public override function loadMusic (id:String, handler:Dynamic -> Void):Void {
		
		#if (flash || js)
		
		//if (path.exists (id)) {
			
		//	var loader = new Loader ();
		//	loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
		//		handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
		//	});
		//	loader.load (new URLRequest (path.get (id)));
			
		//} else {
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}*/
	
	
	public override function loadText (id:String, handler:String -> Void):Void {
		
		//#if js
		
		/*if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (event.currentTarget.data);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getText (id));
			
		}*/
		
		//#else
		
		var callback = function (bytes:ByteArray):Void {
			
			if (bytes == null) {
				
				handler (null);
				
			} else {
				
				handler (bytes.readUTFBytes (bytes.length));
				
			}
			
		}
		
		loadBytes (id, callback);
		
		//#end
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_data_vehiclecustomisationgrid_txt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_advancedenemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_averageenemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_basicenemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_bluetile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_bluetileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_blueweapontile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_blueweapontileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_customisationtiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_customisebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_doublepointspowerup_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_emptytile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_enemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_enemylaser_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_greentile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_greentileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_greenweapontile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_greenweapontileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_optionsbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_pauseicon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_pinktile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_pinktileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_pinkweapontile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_pinkweapontileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_playbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_playerenergyball_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_playerlaser_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_shockwaveammoplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_weapontile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_weapontileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_whitetile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_whitetileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_whiteweapontile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_whiteweapontileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_yellowtile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_low_yellowtileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_medium_customisationtiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_medium_customisebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_medium_optionsbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_medium_playbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_medium_yellowtile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_playbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_advancedenemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_averageenemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_basicenemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_customisebutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_doublepointspowerup_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_emptytile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_enemy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_enemylaser_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_optionsbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_pauseicon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_playbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_playerenergyball_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_playerlaser_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_shockwaveammoplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_weapontile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_weapontileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_yellowtile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_xxhigh_yellowtileplayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_buttonpress_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_enemygridspawn_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_enemyhurt_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_generalbackgroundmusic_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_laserammo_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_plasmaammo_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_playerhurt_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_playstatebackgroundmusic_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_powerupacquired_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_shockwaveammo_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_tileplacement_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_tileplacementerror_wav extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_beep_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_flixel_mp3 extends flash.media.Sound { }
@:keep @:bind #if display private #end class __ASSET__assets_fonts_nokiafc22_ttf extends flash.text.Font { }
@:keep @:bind #if display private #end class __ASSET__assets_fonts_arial_ttf extends flash.text.Font { }


#elseif html5

#if openfl










































































@:keep #if display private #end class __ASSET__assets_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { super (); fontName = "assets/fonts/nokiafc22.ttf"; } } 
@:keep #if display private #end class __ASSET__assets_fonts_arial_ttf extends openfl.text.Font { public function new () { super (); fontName = "assets/fonts/arial.ttf"; } } 

#end

#else

#if openfl
class __ASSET__assets_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/fonts/nokiafc22.ttf"; fontName = "Nokia Cellphone FC Small"; }}
class __ASSET__assets_fonts_arial_ttf extends openfl.text.Font { public function new () { super (); __fontPath = "assets/fonts/arial.ttf"; fontName = "Arial"; }}

#end

#if (windows || mac || linux)

//
//@:file("assets/data/vehicleCustomisationGrid.txt") class __ASSET__assets_data_vehiclecustomisationgrid_txt extends lime.utils.ByteArray {}
//@:bitmap("assets/images/low/advancedEnemy.png") class __ASSET__assets_images_low_advancedenemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/averageEnemy.png") class __ASSET__assets_images_low_averageenemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/basicEnemy.png") class __ASSET__assets_images_low_basicenemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/blueTile.png") class __ASSET__assets_images_low_bluetile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/blueTilePlayer.png") class __ASSET__assets_images_low_bluetileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/blueWeaponTile.png") class __ASSET__assets_images_low_blueweapontile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/blueWeaponTilePlayer.png") class __ASSET__assets_images_low_blueweapontileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/customisationTiles.png") class __ASSET__assets_images_low_customisationtiles_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/customiseButton.png") class __ASSET__assets_images_low_customisebutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/doublePointsPowerup.png") class __ASSET__assets_images_low_doublepointspowerup_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/emptyTile.png") class __ASSET__assets_images_low_emptytile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/enemy.png") class __ASSET__assets_images_low_enemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/enemyLaser.png") class __ASSET__assets_images_low_enemylaser_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/greenTile.png") class __ASSET__assets_images_low_greentile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/greenTilePlayer.png") class __ASSET__assets_images_low_greentileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/greenWeaponTile.png") class __ASSET__assets_images_low_greenweapontile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/greenWeaponTilePlayer.png") class __ASSET__assets_images_low_greenweapontileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/optionsButton.png") class __ASSET__assets_images_low_optionsbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/pauseIcon.png") class __ASSET__assets_images_low_pauseicon_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/pinkTile.png") class __ASSET__assets_images_low_pinktile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/pinkTilePlayer.png") class __ASSET__assets_images_low_pinktileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/pinkWeaponTile.png") class __ASSET__assets_images_low_pinkweapontile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/pinkWeaponTilePlayer.png") class __ASSET__assets_images_low_pinkweapontileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/playButton.png") class __ASSET__assets_images_low_playbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/playerEnergyBall.png") class __ASSET__assets_images_low_playerenergyball_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/playerLaser.png") class __ASSET__assets_images_low_playerlaser_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/shockwaveAmmoPlayer.png") class __ASSET__assets_images_low_shockwaveammoplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/weaponTile.png") class __ASSET__assets_images_low_weapontile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/weaponTilePlayer.png") class __ASSET__assets_images_low_weapontileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/whiteTile.png") class __ASSET__assets_images_low_whitetile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/whiteTilePlayer.png") class __ASSET__assets_images_low_whitetileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/whiteWeaponTile.png") class __ASSET__assets_images_low_whiteweapontile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/whiteWeaponTilePlayer.png") class __ASSET__assets_images_low_whiteweapontileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/yellowTile.png") class __ASSET__assets_images_low_yellowtile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/low/yellowTilePlayer.png") class __ASSET__assets_images_low_yellowtileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/medium/customisationTiles.png") class __ASSET__assets_images_medium_customisationtiles_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/medium/customiseButton.png") class __ASSET__assets_images_medium_customisebutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/medium/optionsButton.png") class __ASSET__assets_images_medium_optionsbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/medium/playButton.png") class __ASSET__assets_images_medium_playbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/medium/yellowTile.png") class __ASSET__assets_images_medium_yellowtile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/playButton.png") class __ASSET__assets_images_playbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/advancedEnemy.png") class __ASSET__assets_images_xxhigh_advancedenemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/averageEnemy.png") class __ASSET__assets_images_xxhigh_averageenemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/basicEnemy.png") class __ASSET__assets_images_xxhigh_basicenemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/customiseButton.png") class __ASSET__assets_images_xxhigh_customisebutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/doublePointsPowerup.png") class __ASSET__assets_images_xxhigh_doublepointspowerup_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/emptyTile.png") class __ASSET__assets_images_xxhigh_emptytile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/enemy.png") class __ASSET__assets_images_xxhigh_enemy_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/enemyLaser.png") class __ASSET__assets_images_xxhigh_enemylaser_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/optionsButton.png") class __ASSET__assets_images_xxhigh_optionsbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/pauseIcon.png") class __ASSET__assets_images_xxhigh_pauseicon_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/playButton.png") class __ASSET__assets_images_xxhigh_playbutton_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/playerEnergyBall.png") class __ASSET__assets_images_xxhigh_playerenergyball_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/playerLaser.png") class __ASSET__assets_images_xxhigh_playerlaser_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/shockwaveAmmoPlayer.png") class __ASSET__assets_images_xxhigh_shockwaveammoplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/weaponTile.png") class __ASSET__assets_images_xxhigh_weapontile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/weaponTilePlayer.png") class __ASSET__assets_images_xxhigh_weapontileplayer_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/yellowTile.png") class __ASSET__assets_images_xxhigh_yellowtile_png extends openfl.display.BitmapData {}
//@:bitmap("assets/images/xxhigh/yellowTilePlayer.png") class __ASSET__assets_images_xxhigh_yellowtileplayer_png extends openfl.display.BitmapData {}
//@:sound("assets/sounds/ButtonPress.wav") class __ASSET__assets_sounds_buttonpress_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/EnemyGridSpawn.wav") class __ASSET__assets_sounds_enemygridspawn_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/EnemyHurt.wav") class __ASSET__assets_sounds_enemyhurt_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/GeneralBackgroundMusic.wav") class __ASSET__assets_sounds_generalbackgroundmusic_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/LaserAmmo.wav") class __ASSET__assets_sounds_laserammo_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/PlasmaAmmo.wav") class __ASSET__assets_sounds_plasmaammo_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/PlayerHurt.wav") class __ASSET__assets_sounds_playerhurt_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/PlayStateBackgroundMusic.wav") class __ASSET__assets_sounds_playstatebackgroundmusic_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/PowerupAcquired.wav") class __ASSET__assets_sounds_powerupacquired_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/ShockwaveAmmo.wav") class __ASSET__assets_sounds_shockwaveammo_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/TilePlacement.wav") class __ASSET__assets_sounds_tileplacement_wav extends openfl.media.Sound {}
//@:sound("assets/sounds/TilePlacementError.wav") class __ASSET__assets_sounds_tileplacementerror_wav extends openfl.media.Sound {}
//@:sound("C:/HaxeToolkit/haxe/lib/flixel/3,3,9/assets/sounds/beep.mp3") class __ASSET__assets_sounds_beep_mp3 extends openfl.media.Sound {}
//@:sound("C:/HaxeToolkit/haxe/lib/flixel/3,3,9/assets/sounds/flixel.mp3") class __ASSET__assets_sounds_flixel_mp3 extends openfl.media.Sound {}
//@:font("C:/HaxeToolkit/haxe/lib/flixel/3,3,9/assets/fonts/nokiafc22.ttf") class __ASSET__assets_fonts_nokiafc22_ttf extends openfl.text.Font {}
//@:font("C:/HaxeToolkit/haxe/lib/flixel/3,3,9/assets/fonts/arial.ttf") class __ASSET__assets_fonts_arial_ttf extends openfl.text.Font {}
//
//

#end

#end
#end

