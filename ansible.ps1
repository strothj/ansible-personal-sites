$cwd = Convert-Path .
docker run -it --rm -v ${cwd}:/site -v ${env:USERPROFILE}/.ssh:/root/.ssh -v ${env:USERPROFILE}/.vault_pass:/root/.vault_pass -w /site strothj/ansible
