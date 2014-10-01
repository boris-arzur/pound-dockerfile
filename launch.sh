set +e
apt-get update && apt-get upgrade -qy

sed -i -e s/STATIC_PORT_80_TCP_ADDR/${STATIC_PORT_80_TCP_ADDR}/ -e s/STATIC_PORT_80_TCP_PORT/${STATIC_PORT_80_TCP_PORT}/ /pound.cfg.template
sed -i -e s/SQ_PORT_80_TCP_ADDR/${SQ_PORT_80_TCP_ADDR}/ -e s/SQ_PORT_80_TCP_PORT/${SQ_PORT_80_TCP_PORT}/ /pound.cfg.template
sed -i -e s/RC_PORT_80_TCP_ADDR/${RC_PORT_80_TCP_ADDR}/ -e s/RC_PORT_80_TCP_PORT/${RC_PORT_80_TCP_PORT}/ /pound.cfg.template

mv /pound.cfg.template /etc/pound/pound.cfg
cat /etc/pound/pound.cfg

exec pound
