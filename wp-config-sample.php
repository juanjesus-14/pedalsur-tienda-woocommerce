<?php
/**
 * Configuración de EJEMPLO para PedalSur (entorno local con XAMPP).
 *
 * Copia este archivo como wp-config.php en la raíz de WordPress y rellena los valores.
 * wp-config.php contiene contraseñas y claves: NO se sube a GitHub (está en .gitignore).
 */

// Base de datos
define( 'DB_NAME', 'pedalsur' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', 'tu_contraseña_de_mysql' );
// En el proyecto original MySQL/MariaDB de XAMPP escuchaba en el puerto 3307.
// Si usas el puerto por defecto, deja '127.0.0.1' (o 'localhost').
define( 'DB_HOST', '127.0.0.1:3307' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );

// Claves únicas: genera las tuyas en https://api.wordpress.org/secret-key/1.1/salt/
define( 'AUTH_KEY',         'pon-aqui-una-frase-unica' );
define( 'SECURE_AUTH_KEY',  'pon-aqui-una-frase-unica' );
define( 'LOGGED_IN_KEY',    'pon-aqui-una-frase-unica' );
define( 'NONCE_KEY',        'pon-aqui-una-frase-unica' );
define( 'AUTH_SALT',        'pon-aqui-una-frase-unica' );
define( 'SECURE_AUTH_SALT', 'pon-aqui-una-frase-unica' );
define( 'LOGGED_IN_SALT',   'pon-aqui-una-frase-unica' );
define( 'NONCE_SALT',       'pon-aqui-una-frase-unica' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );
define( 'WP_MEMORY_LIMIT', '256M' );
define( 'FS_METHOD', 'direct' );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
