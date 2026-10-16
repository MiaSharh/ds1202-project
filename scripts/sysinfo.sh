echo "=== System Information Report ==="
echo "Hostname : $(hostname)"
echo "OS : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d ' '' ')"
echo "Kernel : $(uname -r)"
echo "--- Memory ---"
free -h
echo "--- Disk ---"
df -h /
