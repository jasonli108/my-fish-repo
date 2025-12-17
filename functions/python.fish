function python
    if not set -q VIRTUAL_ENV
        echo "activating virtualenv: /home/yuheng108/.config/venv"
        source ~/.config/venv/bin/activate.fish
    end

    python3 $argv
end

