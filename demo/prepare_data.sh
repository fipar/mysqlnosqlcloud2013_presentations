#!/bin/bash

pushd ~/sandboxes/rsandbox_5_6_10
cat <<'EOF'|./m

CREATE DATABASE IF NOT EXISTS `percona`;
USE `percona`;
DROP TABLE IF EXISTS `dsns`;
CREATE TABLE `dsns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `dsn` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `dsns` VALUES (2,NULL,'h=localhost,S=/var/folders/mr/86dgg7qn291bmznn8_43mvg40000gn/T//mysql_sandbox18676.sock,u=msandbox,p=msandbox'),(3,NULL,'h=localhost,S=/var/folders/mr/86dgg7qn291bmznn8_43mvg40000gn/T//mysql_sandbox18677.sock,u=msandbox,p=msandbox');


CREATE DATABASE IF NOT EXISTS `ptc_demo`;
USE `ptc_demo`;
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `users` VALUES (1,'fipar');

EOF

popd
