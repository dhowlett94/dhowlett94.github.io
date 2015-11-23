package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/vehicleCustomisationGrid.txt", "assets/data/vehicleCustomisationGrid.txt");
			type.set ("assets/data/vehicleCustomisationGrid.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/low/advancedEnemy.png", "assets/images/low/advancedEnemy.png");
			type.set ("assets/images/low/advancedEnemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/averageEnemy.png", "assets/images/low/averageEnemy.png");
			type.set ("assets/images/low/averageEnemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/basicEnemy.png", "assets/images/low/basicEnemy.png");
			type.set ("assets/images/low/basicEnemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/blueTile.png", "assets/images/low/blueTile.png");
			type.set ("assets/images/low/blueTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/blueTilePlayer.png", "assets/images/low/blueTilePlayer.png");
			type.set ("assets/images/low/blueTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/blueWeaponTile.png", "assets/images/low/blueWeaponTile.png");
			type.set ("assets/images/low/blueWeaponTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/blueWeaponTilePlayer.png", "assets/images/low/blueWeaponTilePlayer.png");
			type.set ("assets/images/low/blueWeaponTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/customisationTiles.png", "assets/images/low/customisationTiles.png");
			type.set ("assets/images/low/customisationTiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/customiseButton.png", "assets/images/low/customiseButton.png");
			type.set ("assets/images/low/customiseButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/doublePointsPowerup.png", "assets/images/low/doublePointsPowerup.png");
			type.set ("assets/images/low/doublePointsPowerup.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/emptyTile.png", "assets/images/low/emptyTile.png");
			type.set ("assets/images/low/emptyTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/enemy.png", "assets/images/low/enemy.png");
			type.set ("assets/images/low/enemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/enemyLaser.png", "assets/images/low/enemyLaser.png");
			type.set ("assets/images/low/enemyLaser.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/greenTile.png", "assets/images/low/greenTile.png");
			type.set ("assets/images/low/greenTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/greenTilePlayer.png", "assets/images/low/greenTilePlayer.png");
			type.set ("assets/images/low/greenTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/greenWeaponTile.png", "assets/images/low/greenWeaponTile.png");
			type.set ("assets/images/low/greenWeaponTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/greenWeaponTilePlayer.png", "assets/images/low/greenWeaponTilePlayer.png");
			type.set ("assets/images/low/greenWeaponTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/optionsButton.png", "assets/images/low/optionsButton.png");
			type.set ("assets/images/low/optionsButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/pauseIcon.png", "assets/images/low/pauseIcon.png");
			type.set ("assets/images/low/pauseIcon.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/pinkTile.png", "assets/images/low/pinkTile.png");
			type.set ("assets/images/low/pinkTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/pinkTilePlayer.png", "assets/images/low/pinkTilePlayer.png");
			type.set ("assets/images/low/pinkTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/pinkWeaponTile.png", "assets/images/low/pinkWeaponTile.png");
			type.set ("assets/images/low/pinkWeaponTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/pinkWeaponTilePlayer.png", "assets/images/low/pinkWeaponTilePlayer.png");
			type.set ("assets/images/low/pinkWeaponTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/playButton.png", "assets/images/low/playButton.png");
			type.set ("assets/images/low/playButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/playerEnergyBall.png", "assets/images/low/playerEnergyBall.png");
			type.set ("assets/images/low/playerEnergyBall.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/playerLaser.png", "assets/images/low/playerLaser.png");
			type.set ("assets/images/low/playerLaser.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/shockwaveAmmoPlayer.png", "assets/images/low/shockwaveAmmoPlayer.png");
			type.set ("assets/images/low/shockwaveAmmoPlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/weaponTile.png", "assets/images/low/weaponTile.png");
			type.set ("assets/images/low/weaponTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/weaponTilePlayer.png", "assets/images/low/weaponTilePlayer.png");
			type.set ("assets/images/low/weaponTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/whiteTile.png", "assets/images/low/whiteTile.png");
			type.set ("assets/images/low/whiteTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/whiteTilePlayer.png", "assets/images/low/whiteTilePlayer.png");
			type.set ("assets/images/low/whiteTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/whiteWeaponTile.png", "assets/images/low/whiteWeaponTile.png");
			type.set ("assets/images/low/whiteWeaponTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/whiteWeaponTilePlayer.png", "assets/images/low/whiteWeaponTilePlayer.png");
			type.set ("assets/images/low/whiteWeaponTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/yellowTile.png", "assets/images/low/yellowTile.png");
			type.set ("assets/images/low/yellowTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/low/yellowTilePlayer.png", "assets/images/low/yellowTilePlayer.png");
			type.set ("assets/images/low/yellowTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/medium/customisationTiles.png", "assets/images/medium/customisationTiles.png");
			type.set ("assets/images/medium/customisationTiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/medium/customiseButton.png", "assets/images/medium/customiseButton.png");
			type.set ("assets/images/medium/customiseButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/medium/optionsButton.png", "assets/images/medium/optionsButton.png");
			type.set ("assets/images/medium/optionsButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/medium/playButton.png", "assets/images/medium/playButton.png");
			type.set ("assets/images/medium/playButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/medium/yellowTile.png", "assets/images/medium/yellowTile.png");
			type.set ("assets/images/medium/yellowTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/playButton.png", "assets/images/playButton.png");
			type.set ("assets/images/playButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/advancedEnemy.png", "assets/images/xxhigh/advancedEnemy.png");
			type.set ("assets/images/xxhigh/advancedEnemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/averageEnemy.png", "assets/images/xxhigh/averageEnemy.png");
			type.set ("assets/images/xxhigh/averageEnemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/basicEnemy.png", "assets/images/xxhigh/basicEnemy.png");
			type.set ("assets/images/xxhigh/basicEnemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/customiseButton.png", "assets/images/xxhigh/customiseButton.png");
			type.set ("assets/images/xxhigh/customiseButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/doublePointsPowerup.png", "assets/images/xxhigh/doublePointsPowerup.png");
			type.set ("assets/images/xxhigh/doublePointsPowerup.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/emptyTile.png", "assets/images/xxhigh/emptyTile.png");
			type.set ("assets/images/xxhigh/emptyTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/enemy.png", "assets/images/xxhigh/enemy.png");
			type.set ("assets/images/xxhigh/enemy.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/enemyLaser.png", "assets/images/xxhigh/enemyLaser.png");
			type.set ("assets/images/xxhigh/enemyLaser.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/optionsButton.png", "assets/images/xxhigh/optionsButton.png");
			type.set ("assets/images/xxhigh/optionsButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/pauseIcon.png", "assets/images/xxhigh/pauseIcon.png");
			type.set ("assets/images/xxhigh/pauseIcon.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/playButton.png", "assets/images/xxhigh/playButton.png");
			type.set ("assets/images/xxhigh/playButton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/playerEnergyBall.png", "assets/images/xxhigh/playerEnergyBall.png");
			type.set ("assets/images/xxhigh/playerEnergyBall.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/playerLaser.png", "assets/images/xxhigh/playerLaser.png");
			type.set ("assets/images/xxhigh/playerLaser.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/shockwaveAmmoPlayer.png", "assets/images/xxhigh/shockwaveAmmoPlayer.png");
			type.set ("assets/images/xxhigh/shockwaveAmmoPlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/weaponTile.png", "assets/images/xxhigh/weaponTile.png");
			type.set ("assets/images/xxhigh/weaponTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/weaponTilePlayer.png", "assets/images/xxhigh/weaponTilePlayer.png");
			type.set ("assets/images/xxhigh/weaponTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/yellowTile.png", "assets/images/xxhigh/yellowTile.png");
			type.set ("assets/images/xxhigh/yellowTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/xxhigh/yellowTilePlayer.png", "assets/images/xxhigh/yellowTilePlayer.png");
			type.set ("assets/images/xxhigh/yellowTilePlayer.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/sounds/ButtonPress.wav", "assets/sounds/ButtonPress.wav");
			type.set ("assets/sounds/ButtonPress.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/EnemyGridSpawn.wav", "assets/sounds/EnemyGridSpawn.wav");
			type.set ("assets/sounds/EnemyGridSpawn.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/EnemyHurt.wav", "assets/sounds/EnemyHurt.wav");
			type.set ("assets/sounds/EnemyHurt.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/GeneralBackgroundMusic.wav", "assets/sounds/GeneralBackgroundMusic.wav");
			type.set ("assets/sounds/GeneralBackgroundMusic.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/LaserAmmo.wav", "assets/sounds/LaserAmmo.wav");
			type.set ("assets/sounds/LaserAmmo.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/PlasmaAmmo.wav", "assets/sounds/PlasmaAmmo.wav");
			type.set ("assets/sounds/PlasmaAmmo.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/PlayerHurt.wav", "assets/sounds/PlayerHurt.wav");
			type.set ("assets/sounds/PlayerHurt.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/PlayStateBackgroundMusic.wav", "assets/sounds/PlayStateBackgroundMusic.wav");
			type.set ("assets/sounds/PlayStateBackgroundMusic.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/PowerupAcquired.wav", "assets/sounds/PowerupAcquired.wav");
			type.set ("assets/sounds/PowerupAcquired.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/ShockwaveAmmo.wav", "assets/sounds/ShockwaveAmmo.wav");
			type.set ("assets/sounds/ShockwaveAmmo.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/TilePlacement.wav", "assets/sounds/TilePlacement.wav");
			type.set ("assets/sounds/TilePlacement.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/TilePlacementError.wav", "assets/sounds/TilePlacementError.wav");
			type.set ("assets/sounds/TilePlacementError.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/beep.mp3", "assets/sounds/beep.mp3");
			type.set ("assets/sounds/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/sounds/flixel.mp3", "assets/sounds/flixel.mp3");
			type.set ("assets/sounds/flixel.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/fonts/nokiafc22.ttf", "assets/fonts/nokiafc22.ttf");
			type.set ("assets/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/fonts/arial.ttf", "assets/fonts/arial.ttf");
			type.set ("assets/fonts/arial.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
