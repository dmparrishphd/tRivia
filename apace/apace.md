# *apace*: A Package Extractor

## Introduction

The *apace* package is designed for use in an agency or organization that maintains its own network.

## Problems

 - Packages may not be available locally or from the Internet.
 
 - Packages sometimes get updated out from under users who expected a certain version to be available.
 
 - Thousands of small files clutter the server.

 - Random people need to run R scripts, but don't need to have their user libraries cluttered with packages that are used only once.
 
## Solution
 - Store packages in an agency-sponsored, append-only repository: One or a few potentially large .tar files.
 
 - Old versions of packages remain in the repository.
 
 - Design R scripts that require libraries to install them from files extracted from a repository.
 The extracted files are deleted after instalation in a local, session-specific library.
 The session-specific library is deleted during session cleanup.
 
 ## *apace* can be used to
 
  - Extract and install packages from a repository, and to delete extrated files after installation.
 
