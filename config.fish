if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g theme_display_git yes
    set -g theme_display_git_dirty yes
    set -g theme_display_git_untracked yes
    set -g theme_display_git_ahead_verbose yes
    set -g theme_display_git_dirty_verbose yes
    set -g theme_display_git_stashed_verbose yes
    set -g theme_display_git_default_branch yes
    set -g theme_git_default_branches master main
    set -g theme_git_worktree_support yes
    set -g theme_use_abbreviated_branch_name yes
    set -g theme_display_vagrant yes
    set -g theme_display_docker_machine no
    set -g theme_display_k8s_context yes
    set -g theme_display_hg yes
    set -g theme_display_virtualenv no
    set -g theme_display_nix no
    set -g theme_display_ruby no
    set -g theme_display_node yes
    set -g theme_display_user ssh
    set -g theme_display_hostname ssh
    set -g theme_display_vi no
    set -g theme_display_date no
    set -g theme_display_cmd_duration yes
    set -g theme_title_display_process yes
    set -g theme_title_display_path no
    set -g theme_title_display_user yes
    set -g theme_title_use_abbreviated_path no
    set -g theme_date_format "+%a %H:%M"
    set -g theme_date_timezone America/Los_Angeles
    set -g theme_avoid_ambiguous_glyphs yes
    set -g theme_powerline_fonts no
    set -g theme_nerd_fonts yes
    set -g theme_show_exit_status yes
    set -g theme_display_jobs_verbose yes
    # set -g default_user your_normal_user
    # set -g theme_color_scheme solarized
    set -g fish_prompt_pwd_dir_length 0
    set -g theme_project_dir_length 1
    set -g theme_newline_cursor yes
    set -g theme_newline_prompt '$ '
    set -Ux EDITOR nvim
    set -Ux VISUAL nvim
    set -Ux HSA_OVERRIDE_GFX_VERSION 10.3.0
    set -Ux LEETCODE_USERNAME "jasonli108"

    set -Ux LEETCODE_SESSION "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfYXV0aF91c2VyX2lkIjoiMTk4NjUzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0NjJiZjJlMmIwYmU2MDkzYzAwMDc4YTc3M2NiM2IyMjYzZmNkNjhlYTQ3MDc5NDNkMjNkZGMwY2FjYTdhOGYiLCJzZXNzaW9uX3V1aWQiOiI2NGJiNWIxNSIsImlkIjoxOTg2NTM5LCJlbWFpbCI6Imphc29ubGkxMDhAZ21haWwuY29tIiwidXNlcm5hbWUiOiJqYXNvbmxpMTA4IiwidXNlcl9zbHVnIjoiamFzb25saTEwOCIsImF2YXRhciI6Imh0dHBzOi8vYXNzZXRzLmxlZXRjb2RlLmNvbS91c2Vycy9kZWZhdWx0X2F2YXRhci5qcGciLCJyZWZyZXNoZWRfYXQiOjE3NjY5NTY1NjcsImlwIjoiNzIuNjkuMTA5LjEyOCIsImlkZW50aXR5IjoiOGRmMWQxZTFkMmM1ODRlNGEwMTU4NGRiZTkyNTE3NDQiLCJkZXZpY2Vfd2l0aF9pcCI6WyJjNTUxYTNiMDIxMmVmZGNmYzgzZmVjZDJmNzI5YzMzNSIsIjcyLjY5LjEwOS4xMjgiXSwiX3Nlc3Npb25fZXhwaXJ5IjoxMjA5NjAwfQ.slP2LE1ujsl7fMJG6LwaCikJQJnYCLcscbj54Ef0veU"
    set -Ux CSRF_TOKEN "GVPKl3zfWeorE2hXyxKBRcPhhX5SU319"


end

# if status is-interactive; and not set -q TMUX
#   if type -q tmux
#     tmux attach -t main; or tmux new -s main
#   end
# end

# source (/home/linuxbrew/.linuxbrew/bin/brew shellenv | psub)
bind -e \cv
fish_add_path /home/yuheng108/.pixi/bin
set -g fish_function_path $fish_function_path ~/.config/fish/functions
