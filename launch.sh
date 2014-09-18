set +e
sed -i -e s/HTTP_PORT_80_TCP_ADDR/${HTTP_PORT_80_TCP_ADDR}/ -e s/HTTP_PORT_80_TCP_PORT/${HTTP_PORT_80_TCP_PORT}/ /pound.cfg.template
mv /pound.cfg.template /etc/pound/pound.cfg
cat /etc/pound/pound.cfg

exec pound
