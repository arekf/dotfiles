files = %w(
    .aliases.sh
    .gemrc
    .gitconfig
    .gitignore
    .zshrc
)

current_dir = Dir.pwd
home = ENV['HOME']

def symlink(source, target, delete: false)
    File.delete(target) if delete && File.exist?(target)
    system "ln -s #{source} #{target}"
    puts "Symlinked #{target}"
end

files.each do |f|
    source = File.join(current_dir, f)
    target = File.join(home, f)

    symlink(source, target, delete: true)
end

zsh_theme_source = File.join(current_dir, 'zsh/arekf.zsh-theme')
zsh_theme_target = File.join(home, '.oh-my-zsh', 'themes', 'arekf.zsh-theme')

symlink(zsh_theme_source, zsh_theme_target, delete: true)
