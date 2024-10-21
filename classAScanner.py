from scapy.all import *

def scan_ip(ip):
    icmp = IP(dst=ip)/ICMP()
    resp = sr1(icmp, timeout=2, verbose=False)
    if resp:
        print(f"Host {ip} is alive.")

def main():
    network_prefix = "10.0"
    for i in range(256):
        for j in range(256):
            ip = f"{network_prefix}.{i}.{j}"
            scan_ip(ip)
if __name__=="__main__":
    main()