#
  packet kit for ArchLinux

packitString = "\fg(#ffffff)\bpackit:\c "

? argc = 0
  println(packitString+"No arguments\c")
  exit(0)

#
# packit version
? argv[0] = "v"
  println(packitString+"Version 0.1.0")
#
# sync package (update/download)
? argv[0] = "s"
  target
  ? argc < 2
    target = ""
  ?
    target = argv[1]
  println(packitString+"Synchronize package '"+target+"'")
  
  ? argc = 2
    exec("sudo pacman --noconfirm -S archlinux-keyring")
    exec("sudo pacman --noconfirm -S "+target)
  ?
    println(packitString+"Requires 2nd parameter as target")
# sync all
? argv[0] = "sa"
  println(packitString+"Synchronize all packages")
  exec("sudo pacman --noconfirm -S archlinux-keyring")
  exec("sudo pacman --noconfirm -Syu")
#
# remove package
? argv[0] = "r"
  target
  ? argc < 2
    target = ""
  ?
    target = argv[1]
  println(packitString+"Remove package '"+target+"'")
  
  ? argc = 2
    exec("sudo pacman --noconfirm -R"+target)
  ?
    println(packitString+"Requires 2nd parameter as target")
# remove package with dependencies
? argv[0] = "rd"
  target
  ? argc < 2
    target = ""
  ?
    target = argv[1]
  println(packitString+"Remove package '"+target+"' with dependencies")
  
  ? argc = 2
    exec("sudo pacman --noconfirm -Rn "+target)
  ?
    println("Requires 2nd parameter as target")
# remove package with dependencies, configuration
? argv[0] = "rdc"
  target
  ? argc < 2
    target = ""
  ?
    target = argv[1]
  println(packitString+"Remove package '"+target+"' with dependencies, configuration")
  
  ? argc = 2
    exec("sudo pacman --noconfirm -Rns "+target)
  ?
    println("Requires 2nd parameter as target")
#
# litter packages
? argv[0] = "l"
  println(packitString+"Show litter packages")
  exec("pacman -Qdtq")
# clear litter packages
? argv[0] = "lc"
  println(packitString+"Clear litter packages")
  exec("sudo pacman --noconfirm -Rdd $(pacman -Qdtq)")
  # todo: check litter list
#
# clear cache, leaving latest
? argv[0] = "c"
  println(packitString+"Clear cache, leaving latest")
  exec("sudo pacman --noconfirm -Sc")
# clear cache all
? argv[0] = "ca"
  println(packitString+"Clear cache, all")
  exec("sudo pacman --noconfirm -Scc")
#
# bad command
?
  println(packitString+"bad command, no work")
  exit(1)

println(packitString+"Successful completion")