name              "supervisor"
maintainer        "Noah Kantrowitz"
maintainer_email  "noah@coderanger.net"
license           "Apache 2.0"
description       "Installs supervisor and provides resources to configure services"
version           "0.4.15"

recipe "supervisor", "Installs and configures supervisord"

depends "python"
depends "apt"

%w{ ubuntu debian redhat centos fedora amazon smartos }.each do |os|
  supports os
end
