# Lessons for WebGoat

This repository contains all the lessons for the WebGoat container. Every lesson is packaged as a separate jar file which can
be placed into a running WebGoat server. 

## Creating a new plugin

## Building

Run `mvn package` in the top level directory to build all the plugins. The plugins are copied to the `target/plugins`
folder.


## TODO

- common classes should always be loaded during plugin loading two options 1) we package the common classes in each
 plugin (maven) or we change the plugin loader to load these classes as well in the classloader.
