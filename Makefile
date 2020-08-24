deploy-dcos-puppet:
	@echo "Deploying DC/OS"
	bash scripts/deploy-dcos-puppet.sh

deploy-dcos:
	@echo "Deploying DC/OS"
	bash scripts/deploy-dcos.sh

deploy-gentoo:
	bash scripts/deploy-gentoo.sh

deploy-alpine:
	bash scripts/deploy-alpine.sh

deploy-hardenedbsd:
	bash scripts/deploy-hardenedbsd.sh

deploy-dragonflybsd-hammer:
	bash scripts/deploy-dragonflybsd-hammer.sh

deploy-dragonflybsd-generic:
	bash scripts/deploy-dragonflybsd-generic.sh

deploy-dragonflybsd:
	bash scripts/deploy-dragonflybsd.sh

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
