# Make sure to change this!!!
modname="avalimmech"

pak=$modname".pak"
dir=$modname

packer="asset_packer"
starboundmoddir=/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Starbound/mods

mkdir "packed"
command=$packer" ./"$dir" ./packed/"$pak
eval ${command}

if [[ $1 == "install" ]]; then
  mv ./packed/$pak "$starboundmoddir/"$pak
fi
