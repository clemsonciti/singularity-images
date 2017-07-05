yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
curl -sL https://copr.fedoraproject.org/coprs/gem/openquake-stable/repo/epel-7/gem-openquake-stable-epel-7.repo | tee /etc/yum.repos.d/gem-openquake-stable-epel-7.repo
yum install -y python-oq-engine
