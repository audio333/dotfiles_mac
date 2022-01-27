# sublime text dotfiles
sublimedotfilesdir=${homedir}/dotfiles_mac/settings/sublime

# sublime text config directory
sublimeconfigdir=${homedir}/Library/Application\ Support/Sublime\ Text/Packages/User/

# create Sublime Text directories as they don't exist until Sublime is opened
mkdir -p ${sublimeconfigdir}

# list of sublime config
sublimefiles=".neovintageousrc Default\ \(OSX\).sublime-keymap Package\ Control.sublime-settings Preferences.sublime-settings Fetch.sublime-settings"

#change to the sublime text dotfiles directory
echo "Changing to the ${sublimedotfilesdir} directory"
cd ${sublimedotfilesdir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${sublimefiles}; do
	echo "Creating symlink to $file in ${sublimeconfigdir}."
	ln -sf ${sublimedotfilesdir}/.${file} ${sublimeconfigdir}/.${file}
done

# Create symlink to subl command
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
