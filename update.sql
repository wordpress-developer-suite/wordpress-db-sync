/* Change database name and site/home url's, ie. http://localhost:3000 */
USE db_name;
UPDATE wp_options SET option_value="http://localhost:3000" WHERE option_name="siteurl";
UPDATE wp_options SET option_value="http://localhost:3000" WHERE option_name="home";
