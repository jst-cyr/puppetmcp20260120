# Puppet Enterprise control-repo (PE 2025.7 compatible)

This repository is a control-repo skeleton intended for use with r10k and
Puppet Enterprise 2025.7. It includes:

- `Puppetfile` – module list (installs `puppetlabs-stdlib`)
- `hiera.yaml` + `hieradata/common.yaml` – plain Hiera v5 data
- `environments/production/manifests/site.pp` – basic site manifest
- `modules/profile` and `modules/role` – sample `profile::webserver` and `role::webserver`

To deploy modules with r10k:

```bash
r10k puppetfile install --moduledir modules
```

To push this control repo to PE, point your PE code management to this GitHub repository and deploy with r10k or PE Code Manager (you chose r10k).
