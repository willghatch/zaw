function zaw-src-commands() {
    # fill the command hash
    hash -r
    hash -f
    candidates=($(hash | cut -d '=' -f 1))
    candidates+=($(alias | cut -d '=' -f 1))
    candidates+=($(print -l ${(ok)functions}))
    actions=(zaw-callback-execute zaw-callback-append-to-buffer zaw-callback-insert-to-buffer zaw-callback-replace-buffer)
    act_descriptions=("execute" "append to buffer" "insert into edit buffer" "replace buffer")
}

zaw-register-src -n commands zaw-src-commands
