LOGDIR="$(dirname "$0")/../logs"
LOGFILE="$LOGDIR/sysinfo_$(date +%Y%m%d_%H%M%S).log"
report() {
    echo "=== System Information Report ==="
    echo "Generated: $(date)"
    echo "Hostname : $(hostname)"
    echo "OS       : $(lsb_release -ds)"
    echo "Kernel   : $(uname -r)"
    echo "--- Uptime & CPU Load ---"
    echo "Uptime   : $(uptime -p)"
    echo "Load avg : $(cut -d' ' -f1-3 /proc/loadavg)"
    echo "--- Memory ---"
    free -h
    echo "--- Disk ---"
    df -h /
}
mkdir -p "$LOGDIR"
report | tee "$LOGFILE"
echo "Report saved to $LOGFILE"
