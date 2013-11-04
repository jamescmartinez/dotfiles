require "fileutils"

@olddir = "~/dotfiles_old"
@files = ["gitconfig", "gitignore", "zshrc", "vim", "vimrc", "gemrc"]

task :backup do
  olddir = File.expand_path(@olddir)

  if File.directory?(olddir)
    puts "ERROR: A backup directory already exists at " + @olddir + "."
    exit
  end

  files = dir(dot(@files), "~")
  backup_files = dir(dot(@files), olddir)

  files.zip(backup_files) do |file, backup_file|
    if File.symlink?(file)
      FileUtils.mkdir_p(olddir)
      FileUtils.ln_s(File.readlink(file), backup_file)
      FileUtils.rm(file)
    elsif File.exists?(file) 
      FileUtils.mkdir_p(olddir)
      FileUtils.mv(file, backup_file)
    end 
  end

  unless File.directory?(olddir)
    puts "WARNING: No dotfiles were backed up because no dotfiles were found."
  else
    puts "All dotfiles that will be replaced have been moved to the " + @olddir + " directory."
  end
end

task :install do
  files = dir(dot(@files), "~")  
  original_files = orig(@files)

  files.zip(original_files) do |file, original_file|
    if File.symlink?(file) || File.exists?(file)
      puts "ERROR: Dotfiles already exist in your home directory. Run \'rake backup\' to back up your current dotfiles before running \'rake install\' again."
      exit
    end
    puts "Creating symlink to \'" + original_file + "\'..."
    FileUtils.ln_s(original_file, file)
  end

  puts "Adding submodules..."
  system("git submodule update --init")

  puts "Installing Vundle bundles..."
  system("vim +BundleInstall +qall")
  puts "...done."
end

task :clean do
  FileUtils.rm_rf(File.expand_path(@olddir))
  puts "Your dotfiles_old directory has been removed."
end

def dot(files)
  dotfiles = []
  files.each do |file|
    dotfile = "." + file
    dotfiles << dotfile
  end
  return dotfiles
end

def dir(files, dir)
  dirfiles = []
  files.each do |file|
    dotfile = dir + "/" + file
    dotfile = File.expand_path(dotfile)
    dirfiles << dotfile
  end
  return dirfiles
end

def orig(files)
  original_files = []
  files.each do |file|
    original_file = Rake.application.original_dir.to_s + "/" + file
    original_files << original_file
  end
  return original_files
end
