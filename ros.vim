"enable display ROS Topic list function
source ~/vim-dotfiles/scripts/RosTopicList.vim

"enable display ROS msg 
source ~/vim-dotfiles/scripts/RosmsgShow.vim

" enable catkin_make
source ~/vim-dotfiles/scripts/RosCatkinMake.vim

" launch color scheme same as xml
au BufNewFile,BufRead *.launch set filetype=xml
