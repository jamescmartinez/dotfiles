require 'fileutils'

@olddir = '~/dotfiles_old'
@files = %w(gemrc gitconfig gitignore railsrc vimrc zshrc)

task :backup do
  olddir = File.expand_path(@olddir)

  if File.directory?(olddir)
    puts 'ERROR: A backup directory already exists at ' + @olddir + '.'
    exit
  end

  files = dir(dot(@files), '~')
  backup_files = dir(dot(@files), olddir)

  files.zip(backup_files) do |file, backup_file|
    if File.symlink?(file)
      FileUtils.mkdir_p(olddir)
      FileUtils.ln_s(File.readlink(file), backup_file)
      FileUtils.rm(file)
    elsif File.exist?(file)
      FileUtils.mkdir_p(olddir)
      FileUtils.mv(file, backup_file)
    end
  end

  if File.directory?(olddir)
    puts 'All dotfiles that will be replaced have been moved to the ' + @olddir + ' directory.'
  else
    puts 'WARNING: No dotfiles were backed up because no dotfiles were found.'
  end
end

task :install do
  files = dir(dot(@files), '~')
  original_files = orig(@files)

  files.zip(original_files) do |file, original_file|
    if File.symlink?(file) || File.exist?(file)
      puts "ERROR: Dotfiles already exist in your home directory. Run \'rake backup\' to back up your current dotfiles before running \'rake install\' again."
      exit
    end
    puts "Creating symlink to \'" + original_file + "\'..."
    FileUtils.ln_s(original_file, file)
  end
end

task :clean do
  FileUtils.rm_rf(File.expand_path(@olddir))
  puts 'Your dotfiles_old directory has been removed.'
end

def dot(files)
  dotfiles = []
  files.each do |file|
    dotfile = '.' + file
    dotfiles << dotfile
  end
  dotfiles
end

def dir(files, dir)
  dirfiles = []
  files.each do |file|
    dotfile = dir + '/' + file
    dotfile = File.expand_path(dotfile)
    dirfiles << dotfile
  end
  dirfiles
end

def orig(files)
  original_files = []
  files.each do |file|
    original_file = Rake.application.original_dir.to_s + '/' + file
    original_files << original_file
  end
  original_files
end
