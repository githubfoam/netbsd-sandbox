deploy-netbsd:
	bash scripts/deploy-netbsd.sh

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
