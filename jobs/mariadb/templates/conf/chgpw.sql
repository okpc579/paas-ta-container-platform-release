GRANT ALL PRIVILEGES ON *.* TO '<%= p("admin_user.id") %>'@'%' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO '<%= p("admin_user.id") %>'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("admin_user.password") %>') WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("admin_user.password") %>') WITH GRANT OPTION;
ALTER USER 'mariadb.sys'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("admin_user.password") %>');
ALTER USER 'vcap'@'localhost' IDENTIFIED VIA ed25519 USING PASSWORD('<%= p("admin_user.password") %>');

FLUSH PRIVILEGES;
