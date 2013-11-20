if platform?("ubuntu", "debian")
  package "locales" do
    action :install
  end

  execute :update_locale do
    command "export LANG=#{node[:locale][:lang]}"
    command "export LANGUAGE=#{node[:locale][:lang]}"
    command "export LC_ALL=#{node[:locale][:lc_all]}"
    command "locale-gen #{node[:locale][:lang]}"
    command "update-locale LANG=#{node[:locale][:lang]} LC_ALL=#{node[:locale][:lc_all]}"
    command "sudo dpkg-reconfigure locales"
  end

end

if platform?("redhat", "centos", "fedora")
  execute :update_locale do
    command "locale -a | grep -qx #{node[:locale][:lang]} && sed -i 's|LANG=.*|LANG=#{node[:locale][:lang]}|' /etc/sysconfig/i18n"
    not_if "grep -qx LANG=#{node[:locale][:lang]} /etc/sysconfig/i18n"
  end
end

