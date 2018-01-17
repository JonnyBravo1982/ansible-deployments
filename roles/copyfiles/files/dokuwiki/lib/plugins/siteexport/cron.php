<?php
if(!defined('DOKU_INC')) define('DOKU_INC',dirname(__FILE__).'/../../../');
if(!defined('DOKU_PLUGIN')) define('DOKU_PLUGIN',DOKU_INC.'lib/plugins/');

/**
 * The Cron Class is just an initial wrapper which tries to create a blank cron.conf.php file
 * It can also add/edit/delete Cron Jobs that are being configured at the GUI
 *
 * @author     i-net software <tools@inetsoftware.de>
 * @author     Gerry Weissbach <gweissbach@inetsoftware.de>
 *
 */
class cron_plugin_siteexport {

    private $configFile;
    public $configuration;

    /**
     * Initial setup for this class
     */
    function __construct()
    {
        $this->configFile = DOKU_INC . 'conf/cron.config.php';
        $this->readCronSettings();
    }

    /**
     * Save a new entry, or overwrite an existing entry in the cron config
     * @param $parameters parameters which define the cron job
     * @param $canOverwrite information if an existing entry should be overwritten
     */
    public function saveCronDataWithParameters($parameters, $canOverwrite=false)
    {
        if ( !$canOverwrite && $this->hasCronJobForParameters($parameters) )
        {
            return "Cannot save. The Cron Job already exists - but no permission given to overwrite";
        }
		
        $this->configuration[$this->cronJobNameForParameters($parameters)] = $parameters;
        if ( !$this->writeCronSettings() ) {
            return "There was an error while saving the Cron configuration during a save action";
        }
    }

    public function deleteCronDataWithParameters($parameters)
    {
        unset($this->configuration[$this->cronJobNameForParameters($parameters)]);
        if ( !$this->writeCronSettings() ) {
            return "There was an error while saving the Cron configuration during a deletion action";
        }
    }

    /**
     * Reads the Configuration if not loaded yet
     */
    public function readCronSettings()
    {
        if ( !$this->configFile )
        {
            return false;
        }

        $settings = array();
        if ( file_exists($this->configFile) )
        {
            include($this->configFile);
        }

        $this->configuration = $settings;
        return true;
    }

    /**
     * Writes the Configuration if it is being set
     */
    public function writeCronSettings()
    {
        global $conf;

        if ( !$this->configFile )
        {
            // Nothing has changed.
            return true;
        }

        // backup current file (remove any existing backup)
        if (@file_exists($this->configFile)) {
            if (@file_exists($this->configFile.'.bak')) @unlink($this->configFile.'.bak');
            if (!io_rename($this->configFile, $this->configFile.'.bak')) return false;
        }

        if (!$fh = @fopen($this->configFile, 'wb')) {
            io_rename($this->configFile.'.bak', $this->configFile);     // problem opening, restore the backup
            return false;
        }

        $out = $this->cronHeading();
        $out .= $this->recurseSettingsToOut($this->configuration);
        $out .= $this->cronFooter();

        // Finally write it out.
        @fwrite($fh, $out);
        fclose($fh);
        if($conf['fperm']) chmod($this->configFile, $conf['fperm']);
        return true;
    }

    /**
     * Header text for the cron config file
     */
    private function cronHeading()
    {
        $DOKU_URL = DOKU_URL;
        return <<<OUTPUT
<?php
/*
 * Siteexport Cron Job Configuration
 * Auto-generated by siteexport
 * Run for user: {$_SERVER['REMOTE_USER']}
 */

// Required to set the HTTP_HOST which is usually not set in CLI Environments 
\$_SERVER['HTTP_HOST'] = "{$_SERVER['HTTP_HOST']}";

// This is not the nice way to inject another ROOT-URL, but we do not want to modify other stuff. 
if(!defined('DOKU_URL')) define('DOKU_URL', "{$DOKU_URL}");


OUTPUT;
    }

    /**
     * Footer Text for the cron config file
     */
    private function cronFooter()
    {
        return <<<OUTPUT

// end of auto-generated content
OUTPUT;
    }

    /**
     * Checks if the settings file is writeable
     */
    public function canWriteSettings()
    {
        if ( !file_exists($this->configFile) && !$this->writeCronSettings() )
        {
            return false;
        }
        
        return is_writable($this->configFile);
    }

    /**
     * Recursively walk through the settings and generate a nice looking string
     * @param $settings Array of named settings
     * @param $levelPrefix Prefix that will be build during recursion. It will contain a string for the named array depth
     */
    private function recurseSettingsToOut($settings, $levelPrefix = null)
    {
        if ( !is_array($settings) )
        {
            // If this is a value and the levelPrefix is not empty, print it out
            if ( $levelPrefix == null || empty($settings) )
            {
                return '';
            }

            return '$settings' . $levelPrefix . ' = "' . trim($settings) . "\";\n";
        }

        $out = '';

        // walk recursively through the content and giv it all back
        foreach ($settings as $name => $value )
        {
            $out .= $this->recurseSettingsToOut($value, $levelPrefix . '["' . trim($name) . '"]');
        }
        return $out;
    }

    /**
     * Checks if there is already a Cron Job for the given parameters
     * @param $parameters
     */
    public function hasCronJobForParameters($parameters)
    {
        return array_key_exists($this->cronJobNameForParameters($parameters), $this->configuration);
    }

    /**
     * returns a name for the parameters
     * @param $parameters
     */
    public function cronJobNameForParameters($parameters)
    {
        return md5($parameters);
    }
}

// ensure that the request comes from the cli
if ( !$_SERVER['REMOTE_ADDR'] && 'cli' == php_sapi_name()) {
    ini_set('memory_limit','512M');

    // overriding this will lead to too many error messages
    // error_reporting(E_ALL);

    /**
     * Cli Cron is responsible for doing the actual fetching of documentation
     * @author gamma
     *
     */
    class plugin_siteexport_cli_cron {

        private $cronPlugin;
        private $siteexportAjax;
        public $error;

        /**
         * Instantiate and load plugin
         */
        public function plugin_siteexport_cli_cron()
        {
            // Needs to go first, to initialize the config which holds some special treatment 
            $this->cronPlugin = new cron_plugin_siteexport();
            
            // Load later to have the config up and running.
            // the config needs to adjust some variables of the server
            @require_once(DOKU_INC . 'inc/init.php');
            @require_once(DOKU_INC . 'inc/common.php');
            @require_once(DOKU_INC . 'inc/indexer.php');
            @require_once(DOKU_INC . 'inc/io.php');
            @require_once(DOKU_INC . 'inc/confutils.php');

            if ( !$this->siteexportAjax = plugin_load('action', 'siteexport_ajax' ) ) {
                $this->error = "Faild! Ajax Plugin not loaded\n";
            }
        }

        /**
         * let the plugin run!
         */
        public function run() {
            global $ID;
            global $INFO;
            
            $originalREquest = $_REQUEST;

            foreach ( $this->cronPlugin->configuration as $name => $config )
            {
                // retrieve parameters
                list($id,$parameters) = explode('?', $config, 2);
                
                $function = new siteexport_functions(false);
                $_REQUEST = $function->parseStringToRequestArray($parameters, true);
                unset($function);
                
                $ID = $_REQUEST['id'] = cleanID($id); // re-set the ID
                // $ID = getID();
                
                // Lets start over!
                $this->siteexportAjax->__init_functions();
                $this->siteexportAjax->functions->settings->isCLI = true;
                $this->siteexportAjax->functions->settings->isAuthed = true;
                $INFO['perm'] = AUTH_DELETE; // Fake authentication
                
                // Fake security Token if none given
                if ( empty( $_REQUEST['sectok'] ) ) {
                    $_REQUEST['sectok'] = getSecurityToken();
                }

                $data = $this->siteexportAjax->__get_siteexport_list_and_init_tocs($ID);
                
                // If there is nothing in there - ignore. This may mean we have a valid cache
                if ( count($data) == 0 ) {
                    continue;
                }

                foreach ( $data as $site ) {

                    // We want to create a specific file! - have to reset it every time in here
                    // $_REQUEST['pattern'] = $name;
                    $status = $this->siteexportAjax->__siteexport_add_site($site['id']);
                }

                $this->siteexportAjax->functions->checkIfCacheFileExistsForFileWithPattern($this->siteexportAjax->functions->getCacheFileNameForPattern(), $name);
                
                // Wat zum geier?
                $this->siteexportAjax->cleanCacheFiles();
            }
        }
    }

    $cron = new plugin_siteexport_cli_cron();
    if ( empty($cron->error) )
    {
        $cron->run();
    } else
    {
        echo <<<OUTPUT
************************************************************************
* ERROR                                                                *
************************************************************************

        {$cron->error}
************************************************************************


OUTPUT;
    }
}

?>