LOGDIR=/var/log/suckless-ubuntu
ERR_LOG=error.log
INFO_LOG=info.log
TIME_FORMAT="[%Y-%m-%d][%H:%I:%S]"

touch $LOGDIR/$INFO_LOG && touch $LOGDIR/$ERR_LOG
function log_info() {
	echo "[INFO]`date +$TIME_FORMAT`$1" >> $LOGDIR/$INFO_LOG
}

function log_err() {
	echo "[ERROR]`date +$TIME_FORMAT`$1" >> $LOGDIR/$ERR_LOG
}

$1 $2 $3
