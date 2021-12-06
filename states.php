<?php
include_once 'wp-load.php'; 
global $wpdb;
$states = array(
  'EG1' => 'Cairo',
  'EG2' => 'Giza',
  'EG3' => 'Alexandria City',
//    'EG5' => 'Al Arish',
  'EG6' => '(Gharbia) Al Mahala',
  'EG7' => '(Daqahlyia) Al Mansourah',
  'EG8' => 'Assuit',
  'EG9' => 'Aswan',
  'EG10' => 'Bani Swif',
  // 'EG11' => 'Benha',
  'EG12' => '10th Of Ramdan City',
  'EG13' => '(Beheira) Damanhour',
  'EG14' => 'Dumiat',
//    'EG15' => 'El Wadi El Gadid',
  'EG16' => 'Fayoum',
  'EG17' => 'Helwan',
  'EG18' => 'Hurghada',
  'EG19' => 'Ismailia',
  'EG20' => 'Kafr Al Sheikh',
  'EG21' => 'Luxor',
  'EG22' => 'Marsa Matrouh',
  'EG23' => 'Minia',
  'EG24' => '(Sharqia) New Salhia',
  'EG25' => 'Port Said',
  'EG26' => 'Qena',
  'EG27' => 'Sadat City',
  'EG28' => 'Sharm Sheikh',
  'EG29' => '(Menofia) Shebin El Koum',
  'EG30' => 'Sohag City',
  'EG31' => 'Suez',
  'EG32' => '(Gharbia)',
  'EG33' => '(Sharqia) Zakazik',
  'EG34' => 'Qalyubia',
  'EG35' => 'Shubra El Kheima',
  'EG36' => 'Al Obour City',
  'EG37' => 'Badr City',
  'EG38' => 'Al Shrouq City',
  'EG39' => 'Noarth Coast',
  'EG40' => 'Red Sea',
);
$tables = array(
 'wp_states',
);
foreach($tables as $table){
 //drop query
 $drop_sql = "DROP TABLE {$table};";
 $run_drop = $wpdb->query($drop_sql);
 //create query
 if($table == 'wp_states'){
   $create_sql = "CREATE TABLE `wp_tagerly_states` (
     `ID` int(11) NOT NULL,
     `state_code` varchar(14) DEFAULT NULL,
     `name_ar` varchar(25) DEFAULT NULL,
     `name_en` varchar(25) DEFAULT NULL
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8;";
 }
 $run_create = $wpdb->query($create_sql);
 //alter query 1
 $primary_sql = " ALTER TABLE {$table} ADD PRIMARY KEY (`ID`);";
 $run_primary = $wpdb->query($primary_sql);
 //alter query 2
 $modify_id  = "ALTER TABLE {$table} MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT";
 $run_modify = $wpdb->query($modify_id);
}
foreach($states as $state_code => $state_name){
 $state_data = array(
   'state_code' => $state_code,
   'name_en'    => $state_name,
   'name_ar'    => '',
 );
 $wpdb->insert('wp_states', $state_data);
}
var_dump($wpdb->last_error);
