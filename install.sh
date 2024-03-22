!#/bin/bash

if [ -f "/usr/bin/doc_nvchad" ]; then
	sudo rm /usr/bin/doc_nvchad
fi

sudo cp run.sh /usr/bin/doc_nvchad
sudo chmod +x /usr/bin/doc_nvchad

cd CONTAINER_FILES

sudo docker build --tag nvchad_dev_env .

sudo docker-compose up -d
