services=['afm-system-daemon', 'dbus', 'cynara', 'security-manager', 'wpa_supplicant', 'connman', 'systemd-logind', 'systemd-udevd', 'ofono', 'tcf-agent', 'busybox-syslog', 'systemd-journald', 'busybox-klogd' ]

services.each do |service|
  describe systemd_service(service) do
    it { should be_installed }
    it { should be_running }
  end
end
