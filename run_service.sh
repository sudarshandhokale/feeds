PID_DIR="`pwd`/pids"
LOG_DIR="`pwd`/log"
if [[ -z $1 ]]; then
  ENVIRONMENT=development
else
  ENVIRONMENT=$1
fi

pidfile="$PID_DIR/sidekiq.pid"
logfile="$LOG_DIR/sidekiq.log"
if [[ -f "$pidfile" ]]; then
  procpid=$(<"$pidfile")
  if [[ ! -z "$procpid" ]]; then
    kill -9 $procpid
  fi
fi

RAILS_ENV=$ENVIRONMENT bundle exec sidekiq -C config/sidekiq.yml &> "$logfile" &
echo $! > "$pidfile"

RAILS_ENV=$ENVIRONMENT bundle exec puma
