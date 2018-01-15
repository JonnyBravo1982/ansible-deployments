<?php
/*
 * configuration metadata
 *
 */


$meta['showTools']         = array('multichoice', '_choices' => array('never', 'logged', 'always'));
$meta['sidebarPosition']   = array('multichoice', '_choices' => array('left', 'right'));
$meta['rightSidebar']      = array('string');
$meta['showTranslation']   = array('onoff');
$meta['inverseNavbar']     = array('onoff');
$meta['fixedTopNavbar']    = array('onoff');
$meta['fluidContainer']    = array('onoff');
$meta['pageOnPanel']       = array('onoff');
$meta['tableFullWidth']    = array('onoff');
$meta['semantic']          = array('onoff');
$meta['schemaOrgType']     = array('multichoice', '_choices' => array('Article', 'NewsArticle', 'TechArticle', 'BlogPosting'));
$meta['bootstrapTheme']    = array('multichoice', '_choices' => array('default', 'optional', 'custom', 'bootswatch'));
$meta['customTheme']       = array('string');
$meta['bootswatchTheme']   = array('multichoice', '_choices' => array('cerulean','cosmo','cyborg','darkly','flatly','journal','lumen','paper','readable','sandstone','simplex','slate','spacelab','superhero','united','yeti'));
$meta['showThemeSwitcher'] = array('onoff');
$meta['showPageInfo']      = array('onoff');
$meta['showBadges']        = array('onoff');
$meta['showDiscussion']    = array('onoff');
$meta['discussionPage']    = array('string');
