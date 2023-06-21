pkg-config --cflags-only-I `pkg-config --list-all | cut -f1 -d" "` \
  | cut -c3- | sed "s/ -I/\n/g" > tags_dirs
rm tags
echo Directories to index:
cat tags_dirs
echo Indexing..
ctags --c++-kinds=+p+l -R -L tags_dirs

