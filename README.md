kylin-kmre-image-data-x64.

1. 文件清单
kmre-container-image.tar
kmre.conf

2. 说明
kmre-container-image.tar为docker镜像包。
kmre.conf为ini格式配置文件，其中：
image/repo为镜像的repo，值为"kmre2"；
image/tag为镜像的版本号，"v1.0-YYMMDD.X"，例如"v1.0-190729.3"；
这两个值拼起来就是kmre-container-image.tar所提供docker镜像的版本号，例如"kmre2:v1.0-190729.3"

3. 路径
kmre-container-image.tar -> /usr/share/kmre/kmre-container-image.tar
kmre.conf -> /usr/share/kmre/kmre.conf

4. 更新
每更新一次镜像，都需要提供新的tar包并修改kmre.conf文件设置image版本号。 
