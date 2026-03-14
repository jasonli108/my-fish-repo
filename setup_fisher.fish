#!/usr/bin/env fish

# Ensure fisher is installed
if not functions -q fisher
    echo "Installing fisher..."
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
end

# List of plugins to install
set plugins \
    laughedelic/pisces \
    patrickf1/fzf.fish \
    jorgebucaran/fish-bax \
    jethrokuan/z \
    ilancosman/tide@v6 \
    realiserad/fish-ai \
    jorgebucaran/nvm.fish

echo "Installing plugins..."
for plugin in $plugins
    fisher install $plugin
end

echo "All plugins installed successfully!"
