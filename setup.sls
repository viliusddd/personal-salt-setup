essential_pkgs:
  - pkg.installed:
    - git
    - neovim
    - wireguard
    - xcape

'make caps behave like ctrl and esc when pressed':
  file.append:
    - name: ~/.profile
    - text: |
        # make CapsLock behave like Ctrl:
        setxkbmap -option ctrl:nocaps

        # make short-pressed Ctrl behave like Escape:
        xcape -e 'Control_L=Escape'

'source ~/.bashrc': cmd.run

Install google-chrome:
  pkg.installed:
    - sources:
      - google-chrome: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

Install slack:
  pkg.installed:
    - sources:
      - slack: https://downloads.slack-edge.com/linux_releases/slack-desktop-4.13.0-amd64.deb

Install vnc viewer:
  pkg.installed:
    - sources:
      - https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.20.529-Linux-x64.deb


# install vscode

alias nvim to vim:
  alias.present:
    - name: vim
    - target: nvim

