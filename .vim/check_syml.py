import os.path

# Check if symlink already exists
vim_folder = os.path.expanduser('~/.vim')
home_vimrc = os.path.expanduser('~/.vimrc')

if os.path.islink(home_vimrc):
    # Check that the target link is appropriate
    if os.path.realpath(home_vimrc) == os.path.join(vim_folder, '.vimrc'):
        exit()
    else:
        print("Something went weird, the symlink exists, but is pointing to {}".format(os.path.realpath(home_vimrc)))
        print("This is not the usual location.")
else:
    print("Moving original ~/.vimrc to ~/.vim directory")
    os.rename(home_vimrc, os.path.join(vim_folder, '.vimrc'))
    print("Creating symbolic link.")
    os.symlink(os.path.join(vim_folder, '.vimrc'), home_vimrc)

