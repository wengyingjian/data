#！/bin/bash
#CentOS6.X版本 ngnix install script
#Author：AncheNet_Nay

#根据用户选择来安装响应的版本

	echo "请选择您所需的nginx版本：
	    1 ngnix  1.4.7
	    2 ngnix  1.6.2
	    3 ngnix  1.7.10
	"

	sleep 0.1
	read -p "Please Input 1,2,3: " VER_ID
		yum -y update
		yum -y install gcc-c++
case $VER_ID in
    1)  
	Ver=1.4.7
	wget -c http://download.51idc.com/download/src/nginx/zlib-1.2.6.tar.gz
	tar -zvxf zlib-1.2.6.tar.gz
	cd zlib-1.2.6
	./configure --prefix=/usr/local/zlib
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/pcre-8.32.tar.gz
	tar -zvxf pcre-8.32.tar.gz
	cd pcre-8.32
	./configure --prefix=/usr/local/pcre
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/openssl-1.0.2.tar.gz
	tar -zvxf openssl-1.0.2.tar.gz
	cd openssl-1.0.2
	./config --prefix=/usr/local/openssl
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/nginx-1.4.7.tar.gz
	tar -zvxf nginx-1.4.7.tar.gz
	cd nginx-1.4.7
	./configure --prefix=/usr/local/nginx --with-pcre=/usr/local/src/pcre-8.32 --with-zlib=/usr/local/src/zlib-1.2.6 --with-openssl=/usr/local/src/openssl-1.0.2 --with-http_ssl_module --pid-path=/usr/local/nginx/run --user=root --group=root
	make && make install

	/usr/local/nginx/sbin/nginx 

    ;;
    2)
	Ver=1.6.2

	wget -c http://download.51idc.com/download/src/nginx/zlib-1.2.6.tar.gz
	tar -zvxf zlib-1.2.6.tar.gz
	cd zlib-1.2.6
	./configure --prefix=/usr/local/zlib
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/pcre-8.32.tar.gz
	tar -zvxf pcre-8.32.tar.gz
	cd pcre-8.32
	./configure --prefix=/usr/local/pcre
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/openssl-1.0.2.tar.gz
	tar -zvxf openssl-1.0.2.tar.gz
	cd openssl-1.0.2
	./config --prefix=/usr/local/openssl
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/nginx-1.6.2.tar.gz
	tar -zvxf nginx-1.6.2.tar.gz
	cd nginx-1.6.2
	./configure --prefix=/usr/local/nginx --with-pcre=/usr/local/src/pcre-8.32 --with-zlib=/usr/local/src/zlib-1.2.6 --with-openssl=/usr/local/src/openssl-1.0.2 --with-http_ssl_module --pid-path=/usr/local/nginx/run --user=root --group=root
	make && make install

	/usr/local/nginx/sbin/nginx 

    ;;
    3) 
	Ver=1.7.10
		
	wget -c http://download.51idc.com/download/src/nginx/zlib-1.2.6.tar.gz
	tar -zvxf zlib-1.2.6.tar.gz
	cd zlib-1.2.6
	./configure --prefix=/usr/local/zlib
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/pcre-8.32.tar.gz
	tar -zvxf pcre-8.32.tar.gz
	cd pcre-8.32
	./configure --prefix=/usr/local/pcre
	make && make install
	cd ..

	wget -c http://download.51idc.com/download/src/nginx/openssl-1.0.2.tar.gz
	tar -zvxf openssl-1.0.2.tar.gz
	cd openssl-1.0.2
	./config --prefix=/usr/local/openssl
	make && make install
	cd ..
	
	wget -c http://download.51idc.com/download/src/nginx/nginx-1.7.10.tar.gz
	tar -zvxf nginx-1.7.10.tar.gz
	cd nginx-1.7.10
	./configure --prefix=/usr/local/nginx --with-pcre=/usr/local/src/pcre-8.32 --with-zlib=/usr/local/src/zlib-1.2.6 --with-openssl=/usr/local/src/openssl-1.0.2 --with-http_ssl_module --pid-path=/usr/local/nginx/run --user=root --group=root 
	make && make install

	/usr/local/nginx/sbin/nginx 
    ;;
    *)  echo 'You do not select a number between 1 to 3'
    ;;
esac
