# Copyright (c) KylinSoft Co., Ltd. 2016-2024.All rights reserved.
## kylin-kmre-image-data-x64 is licensed under the Apache License, Version 2.0.
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##         http://www.apache.org/licenses/LICENSE-2.0
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
ARCH = $(shell dpkg-architecture -qDEB_HOST_ARCH)

KMRE_DIR = /usr/share/kmre
CONF_FILE = kmre.conf
DATA_FILE = kmre-container-image.tar

#all:
#	@echo "Data package, no compilation required"

build:
	if [ ! -f data/amd64/kmre-container-image.tar ] || [ -f data/amd64/kmre-container-image.tar.aria2 ]; then aria2c https://github.com/GXDE-OS/kylin-kmre-image-data-x64/releases/download/container/kmre-container-image_v3.0-250216.1_amd64.tar -d data/amd64/ -o kmre-container-image.tar -x 16 -s 16 -c ; fi

install:
	@install -p -D -m 0644 data/$(CONF_FILE) $(DESTDIR)/$(KMRE_DIR)/$(CONF_FILE)
	@install -p -D -m 0644 data/$(ARCH)/$(DATA_FILE) $(DESTDIR)/$(KMRE_DIR)/$(DATA_FILE)

uninstall:
	rm -rf $(DESTDIR)/$(KMRE_DIR)/$(CONF_FILE)
	rm -rf $(DESTDIR)/$(KMRE_DIR)/$(DATA_FILE)
