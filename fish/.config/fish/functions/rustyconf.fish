function rustyconf
    cp ~/.alex-dotfiles/rust-toolchain .
    cp ~/.alex-dotfiles/rustfmt.toml .

    # ln -s ~/.alex-dotfiles/.cursor .

    echo "" >>.gitignore
    # echo ".cursor" >>.gitignore
    echo ".env" >>.gitignore

    echo "" >>.env
    echo "RUST_LOG=info" >>.env
end
