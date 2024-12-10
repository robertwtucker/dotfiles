# Fish shell configuration
set fish_greeting
fish_vi_key_bindings

# Environment variables
set -gx EDITOR nvim
set -gx LANG en_US.UTF-8
set -gx GOLANG $HOME/go

# Git abbreviations
abbr -a g git
abbr -a ga git add
abbr -a gb git branch
abbr -a gbD git branch --delete --force
abbr -a gc git commit
abbr -a gcam git commit --add --message
abbr -a gcb git checkout -b
abbr -a gco git checkout
abbr -a gcm git checkout master
abbr -a gd git diff
abbr -a gds git diff --staged
abbr -a gl git log
abbr -a glo git log --oneline --decorate --graph
abbr -a gm git merge
abbr -a gmff git merge --ff-only
abbr -a gpl git pull
abbr -a gpo git push origin
abbr -a gpom git push origin master
abbr -a gpot git push origin --tags
abbr -a grbm git rebase master
abbr -a gst git status
abbr -a gts git tag --sign

# yadm abbreviations
abbr -a y yadm
abbr -a ya yadm add
abbr -a yc yadm commit
abbr -a yd yadm diff
abbr -a yds yadm diff --staged
abbr -a ypl yadm pull
abbr -a ypu yadm push
abbr -a yst yadm status

# kubectl abbreviations
abbr -a k kubectl
abbr -a kaf kubectl apply --filename
abbr -a kcp kubectl cp
abbr -a kdel kubectl delete
abbr -a kdelf kubectl delete --filename
abbr -a kg kubectl get
abbr -a kga kubectl get all
abbr -a kgc kubectl get configmap
abbr -a kgd kubectl get deployment
abbr -a kgj kubectl get job
abbr -a kgp kubectl get pod
abbr -a kgs kubectl get service
abbr -a kgss kubectl get statefulset
abbr -a kgsec kubectl get secret
