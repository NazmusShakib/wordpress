<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_pontis');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '1');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'I:C>X/=2=I l<Mg5Z`EnlPsfsV4,/}^+Uo.ZSy(D2y/INFbytN6U1%VVnslUzH6-');
define('SECURE_AUTH_KEY',  'vA~/Jww:p:h{4nh8De+@vZTBuOx:_]BM_f$MK10Fg-M([7(iN.4%{1^-|:KO8Lnf');
define('LOGGED_IN_KEY',    ' {6?]uD*)5Yh^UOsje39;)#vk)GWn(*=x_B0ToV%}e`|a*-bG?cb&#K 7bXz1>+D');
define('NONCE_KEY',        'ps4|#b-Tqw6VbLBT4hf76|-{ROld-Re O4SME=>5M)86.-++*Jo/.HA9Ye6I!jA9');
define('AUTH_SALT',        'J5jaN[.3%n>{6J_[(7@_6wwJN||gZ1OD<c/<D}aKVt=45XA=WF?7rdRSRa.5cr?z');
define('SECURE_AUTH_SALT', ' -W |1Q1w}UHzmS+)GF^MK9*Ii7>4[[>S_ :jN-1s C-.Ud=Vi]MUNes4aWG?BVa');
define('LOGGED_IN_SALT',   'Z |9-<A:> S~};EAYP]@d|/ABAgE]<SY6F6i}VyBMIW,CXpb+,gj8C@:;`SCK5lk');
define('NONCE_SALT',       'R|a;]/T-_U>|=^eTVq}peU=ch.XhT}C(N)AFq#L]`?![d=v6=fA}W:+o[HZKivM1');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
