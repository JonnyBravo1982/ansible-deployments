<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'instanceid' => 'occ29ou4yy4u',
  'passwordsalt' => 'kli8bAuRKEXoJxSvP9ngvHWCuSBDUc',
  'secret' => '1daKBn0UPmWgY3z0ToQL3BVBxl0mn2fjiYXwiABck7kEcUNk',
  'trusted_domains' => 
  array (
	  0 => '{{targetIP}}',
	  1 => '{{targetDomain}}'
  ),
  'datadirectory' => '/var/www/html/data',
  'overwrite.cli.url' => 'https://{{targetIP}}',
  'dbtype' => 'sqlite3',
  'version' => '12.0.4.3',
  'installed' => true,
);
