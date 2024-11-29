# packit (Packages Kit)
A simple real-time package manager.

So, packit is written in [RTS](https://github.com/miruji/rts) and therefore runs in real time. It can work with packages in a less fussy way, so I thought why not use it in everyday tasks. It is worth remembering that the functionality depends on the stage of development of the language, and to work you need RTS >= 0.1.0.

> To run you just need to write ./rts run packit.rt; you can also bind the launch on your system to just "packit".

Keys:
>
>  v - packit version
>
>  s - Synchronize package (update/download)
>
>  sa - Synchronize all packages
>
>  r - Remove package
>
>  rd - Remove package with dependencies
>
>  rdc - Remove package with dependencies, configuration
>
>  l - Show litter packages
>
>  lc - Clear litter packages
>
>  c - Clear cache, leaving latest
>
>  ca - Clear cache, all
