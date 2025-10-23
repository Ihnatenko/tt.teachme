<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'teachme' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'mysql-8.4' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '!>$aJ.c{ 382>sL&.)|dE[&3zmx8O@0Vt_@Z3(NYsBA@l6QF:GBfjK=2>B<[UoI:' );
define( 'SECURE_AUTH_KEY',  'c6.k.Mx@*C-fljUJZeMN 8Nv$`B;&Gqd!0>XgrcVv5W;*e1K!:M:nvW)<u9,E,i+' );
define( 'LOGGED_IN_KEY',    '^ArVGCx<}_dCiaG-@o+L{ss_~-K9rY(yop;}MLq_0TjaGRB.@cAP+Hg/l=/qoz5G' );
define( 'NONCE_KEY',        'nj`{.IBl76zy;4$2HQ/r91QsF8D8W-D9$jQ9Wm!>dibA_=.)xx=:e nRx^)M#`?A' );
define( 'AUTH_SALT',        'WzvjZocP4mw)&Tj2I{a)!!BND@eV?w$3[Qv.B)|#=MnN]4/E:mgic)~!f|PlrMzs' );
define( 'SECURE_AUTH_SALT', '?HlLYj,>Iz rg?_Hem(/zTZrqc>1FMvxy<FgbzuZ-#SPEK6:W#ab1Y81vzI0mp|3' );
define( 'LOGGED_IN_SALT',   'KtM9b&rRH0eyBw$k!%WteHR2/cIhd!~Lha`<s%BCI?V^~s:w4:D%0:@@,[gZhSPo' );
define( 'NONCE_SALT',       '>}c`/LLI.@d8hkyc(4)8O5OJ>W^zw.;;SoV&<cXBP-:dL/P:,Tj,+iE#ZtXW f::' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'tc_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
