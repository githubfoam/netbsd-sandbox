deploy-dcos-puppet:
	@echo "Deploying DC/OS"
	bash scripts/deploy-dcos-puppet.sh

deploy-dcos:
	@echo "Deploying DC/OS"
	bash scripts/deploy-dcos.sh

deploy-netbsd9:
	bash scripts/deploy-netbsd9.sh

deploy-netbsd8:
	bash scripts/deploy-netbsd8.sh

deploy-libvirt:
	bash scripts/deploy-libvirt.sh

deploy-vagrant:
	bash scripts/deploy-vagrant.sh

push-image:
	docker push $(IMAGE)
.PHONY: deploy-vagrant deploy-libvirt deploy-netbsd9 deploy-netbsd8 push-image
