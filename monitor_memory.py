import subprocess
import time
import argparse
from datetime import datetime

DEFAULT_PACKAGE_NAME = "uii.ang.bilitv"
DEFAULT_INTERVAL = 5

device_ip = None
package_name = None
interval = None

def adb_command(cmd):
    if device_ip:
        return ["adb", "-s", device_ip] + cmd
    return ["adb"] + cmd

def get_pid():
    result = subprocess.run(
        adb_command(["shell", f"pidof {package_name}"]),
        capture_output=True, text=True
    )
    pid = result.stdout.strip()
    return pid if pid else None

def get_memory_info():
    result = subprocess.run(
        adb_command(["shell", "dumpsys", "meminfo", package_name]),
        capture_output=True, text=True
    )
    return result.stdout

def get_crash_logcat(pid):
    result = subprocess.run(
        adb_command(["logcat", "-d", "-v", "time", f"--pid={pid}"]),
        capture_output=True, text=True
    )
    return result.stdout

def get_crash_dropbox():
    result = subprocess.run(
        adb_command(["shell", f"dumpsys dropbox --print {package_name}"]),
        capture_output=True, text=True
    )
    return result.stdout

def get_tombstone():
    result = subprocess.run(
        adb_command(["shell", "ls -la /data/tombstones/"]),
        capture_output=True, text=True
    )
    return result.stdout

def connect_device():
    if device_ip:
        result = subprocess.run(
            ["adb", "connect", device_ip],
            capture_output=True, text=True
        )
        return result.stdout.strip()
    return None

def write_crash_report(f, pid):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    
    f.write("\n" + "!" * 60 + "\n")
    f.write("!!! CRASH DETECTED !!!\n")
    f.write(f"Time: {timestamp}\n")
    f.write(f"Last PID: {pid}\n")
    f.write("!" * 60 + "\n\n")
    
    f.write("-" * 60 + "\n")
    f.write("LOGCAT (Last process output):\n")
    f.write("-" * 60 + "\n")
    if pid:
        f.write(get_crash_logcat(pid))
    else:
        f.write("(No PID available)\n")
    f.write("\n")
    
    f.write("-" * 60 + "\n")
    f.write("DROPBOX (Crash reports):\n")
    f.write("-" * 60 + "\n")
    f.write(get_crash_dropbox())
    f.write("\n")
    
    f.write("-" * 60 + "\n")
    f.write("TOMBSTONES (Native crashes):\n")
    f.write("-" * 60 + "\n")
    f.write(get_tombstone())
    f.write("\n")
    
    f.flush()
    
    return timestamp

def main():
    global device_ip, package_name, interval
    
    parser = argparse.ArgumentParser(description='Memory & Crash Monitor for Android TV')
    parser.add_argument('-d', '--device', type=str, help='Device IP address (e.g., 192.168.1.100:5555)')
    parser.add_argument('-p', '--package', type=str, default=DEFAULT_PACKAGE_NAME, help=f'Package name (default: {DEFAULT_PACKAGE_NAME})')
    parser.add_argument('-i', '--interval', type=int, default=DEFAULT_INTERVAL, help=f'Sampling interval in seconds (default: {DEFAULT_INTERVAL})')
    args = parser.parse_args()
    
    device_ip = args.device
    package_name = args.package
    interval = args.interval
    output_file = f"memory_log_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
    
    print("=" * 50)
    print("Memory & Crash Monitor Started")
    print("=" * 50)
    print(f"Package: {package_name}")
    print(f"Interval: {interval}s")
    print(f"Output: {output_file}")
    if device_ip:
        print(f"Device: {device_ip}")
        connect_result = connect_device()
        print(f"Connect: {connect_result}")
    else:
        print("Device: (default)")
    print("=" * 50)
    print("Press Ctrl+C to stop monitoring")
    print()
    
    with open(output_file, "w", encoding="utf-8") as f:
        f.write("=" * 60 + "\n")
        f.write("Memory & Crash Monitor Log\n")
        f.write("=" * 60 + "\n")
        f.write(f"Package: {package_name}\n")
        f.write(f"Device: {device_ip if device_ip else 'default'}\n")
        f.write(f"Start Time: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"Interval: {interval}s\n")
        f.write("=" * 60 + "\n\n")
        
        sample_count = 0
        crash_count = 0
        last_pid = get_pid()
        
        if not last_pid:
            print(f"[WARNING] App {package_name} is not running!")
            print("Waiting for app to start...")
            f.write("[WARNING] App was not running at start\n\n")
        
        try:
            while True:
                current_pid = get_pid()
                
                if last_pid and not current_pid:
                    print(f"\n[CRASH] App crashed! Last PID: {last_pid}")
                    crash_time = write_crash_report(f, last_pid)
                    crash_count += 1
                    print(f"[CRASH] Crash report saved at {crash_time}")
                    print("[INFO] Waiting for app to restart...")
                    
                    for i in range(30):
                        time.sleep(1)
                        current_pid = get_pid()
                        if current_pid:
                            print(f"[INFO] App restarted with PID: {current_pid}")
                            f.write(f"\n[INFO] App restarted at {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
                            f.write(f"[INFO] New PID: {current_pid}\n\n")
                            f.flush()
                            break
                    else:
                        print("[WARNING] App did not restart within 30 seconds")
                        f.write(f"\n[WARNING] App did not restart within 30s\n\n")
                        f.flush()
                
                last_pid = current_pid
                
                if current_pid:
                    sample_count += 1
                    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                    print(f"[{timestamp}] Sample #{sample_count} (PID: {current_pid})")
                    
                    f.write(f"\n{'='*60}\n")
                    f.write(f"Sample #{sample_count} - [{timestamp}] (PID: {current_pid})\n")
                    f.write("=" * 60 + "\n")
                    f.write(get_memory_info())
                    f.write("\n")
                    f.flush()
                else:
                    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                    print(f"[{timestamp}] App not running, waiting...")
                
                time.sleep(interval)
                
        except KeyboardInterrupt:
            f.write("\n" + "=" * 60 + "\n")
            f.write("Monitoring Stopped\n")
            f.write(f"End Time: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write(f"Total Samples: {sample_count}\n")
            f.write(f"Total Crashes: {crash_count}\n")
            f.write("=" * 60 + "\n")
            print("\n" + "=" * 50)
            print("Monitoring stopped.")
            print(f"Total samples: {sample_count}")
            print(f"Total crashes: {crash_count}")
            print(f"Log saved to: {output_file}")
            print("=" * 50)

if __name__ == "__main__":
    main()
