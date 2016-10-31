repeat() {
    n=$1
    shift
    while [ $(( n -= 1 )) -ge 0 ]
    do
        "$@"
    done
}
m4conv() {
  for f in *.m4a; do avconv -i "$f" "${f%.m4a}.mp3"; done
}

alias cd..='cd ..'
alias ll='ls -lah'
alias cleanup='free && sudo sync && sudo echo 3 | sudo tee /proc/sys/vm/drop_caches && free'
alias rubytest='time ruby -e "count = 0; while(count < 100000000); count = count + 1; end; puts count"'

alias b='bundle'
alias bu='bundle update'
alias bo='bundle outdated'
alias fstart='foreman start'
alias frails='foreman run rails s webrick'
alias fspec='foreman run --env .env_test rspec'
alias fconsole='foreman run rails c'
alias frake='foreman run rake'
alias updaterust='curl -s http://www.rust-lang.org/rustup.sh | sudo sh -s --
--uninstall'
