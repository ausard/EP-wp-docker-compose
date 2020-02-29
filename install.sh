curl -o wordpress.tar.gz -fSL "https://wordpress.org/latest.tar.gz";
tar -xzf wordpress.tar.gz -C /wordpress ; \
	rm wordpress.tar.gz; 
cp wp-conf/wp-config.php /wordpress/wp-config.php