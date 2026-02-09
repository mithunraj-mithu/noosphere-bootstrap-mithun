# [1.1.0](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/compare/v1.0.0...v1.1.0) (2026-02-09)


### Bug Fixes

* New combined some commits into one ([acb5088](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/acb5088178adac6bd0b9f28f973b116eca1256cb))


### Features

* added gitleaks job on terraform ci ([8de395c](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/8de395c65f4fd09f8c2cc83c20488f7942e02653))
* added Iac.yaml for terraform automation ([b52717d](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/b52717d2d944f0796d0fedeb85462bd0e5edf4d9))
* merging changes into main ([bec4385](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/bec43851241e451e8b17e9e1ef909b93e52053fe))

# 1.0.0 (2026-02-09)


### Bug Fixes

* **ci:**  updated ci file to not run when terraform changes ([47f9f66](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/47f9f661036245a8aaa697c4a50f0402dc66111d))
* ci.yaml corrcted job names ([2f91b37](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/2f91b3710ca1e7d8dc74843c65451326cd968381))
* **ci:** fixed npm cache dependency folder ([ac16cff](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/ac16cff0dbf752fc3b1300af41181ccd2a0d0b0a))
* **ci:** fixed npm install on SAST block ([5caceaa](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/5caceaaab4c36f80d16761a452f6e253c7cc385b))
* corrected the 'on:' block syntax at newci.yaml ([a7a2a41](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/a7a2a41029d831d3dacca14e92e372b77167405c))
* fixed defaults block in newci.yaml file ([7be8229](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/7be8229a76aafc413f9326dda62fdd204de6a193))
* **kustomise:** corrected manifests ([027a31d](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/027a31dd0a340274c9742d9e2bd33208db67f399))
* **kustomise:** removed namespace transformers ([555d753](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/555d7536019056ea587a4a11a1a03cccf348ded0))


### Features

* **app:** add Express API with health and data endpoints ([d342d65](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/d342d656d5be28571db11947eabe9dddea50b830))
* **ci-build:** combined docker build and security scan steps ([b2d288a](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/b2d288aedbb08451a34f1a1adcfbe3fbc825a9f3))
* **ci:** added docker   build-and-push block ([c9af36d](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/c9af36df87a5e900e1fcefba28054c419719df26))
* **ci:** modified build-and-push block ([42d3b3d](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/42d3b3d7a865e980a735b02723f71256bb343769))
* created working multistage docker image file ([93cdcab](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/93cdcabcb2d6dd48b4781e985f0e3c016055d7d4))
* **docker-image:** change builder image from node18-alpine to node20-alpine ([e35d5c3](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/e35d5c33dac19299fd71e6f050a2cd1eb2d391b5))
* **GitHub-Workflow:** added the ci yaml with workflow_dispatch ([9aee9da](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/9aee9da1d35ab30dba88caf069025ec0b573c263))
* **gitleaks-ci:** added gitleaks to prevent secret leak ([e314ccc](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/e314cccddb2f1014cc98b67ff693deb62ce22922))
* **k8s-deploy:** added deployment update steps ([64822fd](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/64822fdc782e381c1967fab122fbd499562660e5))
* **kustomize:** added kustomize folder structures and basic yamls ([ec17c6e](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/ec17c6e9de9ca647031d506add36cbcabeaaf609))
* **kustomize:** added kustomize folder structures and basic yamls ([b10e982](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/b10e98289297438e830b566ae9be5915daa539ac))
* **kustomize:** added namespace transformer in dev overlay ([a419765](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/a4197658f45e807c23a9cccb315b5a0f5c875072))
* **kustomize:** added replicas tranformer in dev overlay ([4fa80a4](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/4fa80a437e55f8757948590a5e223bb7b0daabd3))
* Multi stage Docker file created and tested ([3cccab2](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/3cccab215f876247f392115c18a8f578048979e2))
* **smoke-test:** adding smoke test before pushing ([a0996a0](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/a0996a085443d276c8869f67e93212127d73575c))
* **smoke-test:** updated smoke test endpoint ([7881f5a](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/7881f5a6095b71e072481688ba798ca52d87b049))
* **smoke-test:** updated smoke test url ([96bb06e](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/96bb06e26894af546691040510590f13ee18afcb))
* **terrafor:** fixed ec2.tf issue now it can be  added to respected subnet ids ([bb19acd](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/bb19acd5ba4c8e8f9c2eeffc2bf47a879dec2011))
* **terraform:** added security group and allocated to ec2s ([f93a871](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/f93a8715f52f92ba08be580d786e4b47338a7304))
* **terraform:** adding locals.tf to use ec2_instance type values for environments ([104dd80](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/104dd80d93d7a246f9e360da81744fa93d34ac2d))
* **terraform:** terraform re-adding to the same repo ([015213a](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/015213a6349cc9c362cbc0610486d21c1250ae63))
* updating the variable.tf file to add vpc and ec2 variables ([8a70f4f](https://github.com/mithunraj-mithu/noosphere-bootstrap-mithun/commit/8a70f4f85f4eee32bcd7771c8a1e77560c8a6bb7))
