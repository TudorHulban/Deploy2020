## Gitlab Installation
### Debian 10.7
Set language variables
```bash
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
```
Update system and then run with sudo as per:
```html
https://about.gitlab.com/install/#debian
```

#### Install Gitlab Runner
Add the official GitLab repository
```
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
```
Install the latest version of GitLab Runner
```
export GITLAB_RUNNER_DISABLE_SKEL=true; sudo -E apt-get install gitlab-runner
```

##### Resources
```
https://docs.gitlab.com/runner/install/linux-repository.html#installing-gitlab-runner
```

### Operations
#### Reset root password
Takes some time to process.
```bash
sudo gitlab-rake "gitlab:password:reset[root]"
```
