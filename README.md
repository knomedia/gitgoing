# GitGoing

GitGoing ia a ruby CLI for quickly tracking and cloning your favorite git repos. It allows users to build up a library of git repo locations by name that can be cloned quickly. Ideally this is used for cloning "starter" projects like [HTML5 Boiler Plate](https://github.com/h5bp/html5-boilerplate), [Foundation](https://github.com/zurb/foundation) or [Skeleton](https://github.com/dhgamache/Skeleton). By default, on first launch, theses three projects are placed in your GitGoing library using the `merge` command (see below). It can also be useful for team members that jump from project to project, but don't want to have to remember git urls.

**GitGoing has the following features:**

 * Manage a local list of your favorite git repos using a name of your choice
   * We call it a library of repos, think of them as key-value pairs (name:url)
 * Clone a remote git repo to your local system by it's library name
 * Add a remote git repo url (and name) to your library
 * Rename a git repo that you previously remembered (added) to your local library
 * Remove a git repo from your local library
 * List all of the git repos in your library
 * Merge a remote list of repos into your library


## Installation

````bash
$ gem install gitgoing
````


## Usage

GitGoing responds to 7 commands, each are listed here, and are listed with details and examples below:

GitGoing Commands:

 * [new](#new)
 * [add](adding-a-repo-to-your-library-add)
 * [rename](#rename)
 * [remove](#remove)
 * [list](#list)
 * [merge](#merge)
 * [help](#help)

----
#### <a id="new"></a>Creating a new project / clone a repo (`new`)
````bash
new (repo_name, new_project_name [,-r])
````
Clones repo found in your library as repo_name into a directory named new_project_name. 
If -r is passed it will delete the existing git repo and init a new repo for you. This (-r) may be useful for template repos (skeleton, curb, html5bp, etc)

**_Example_**
````bash
$ gitgoing new skeleton MyProject -r
````
This would clone the repo that is named `skeleton` in your library to a MyProject directory in your current directory. By passing the `-r` flag it will then delete the actual .git repo and re-initialize the repo as a blank repo for you to begin working with.


----
#### <a id="add"></a>Adding a repo to your library (`add`)
````bash
add (repo_name, git_url)
````
Adds and location to your library named repo_name that point to the git_url 

**_Example_**
````bash
$ gitgoing add backbone-bp git://github.com/tbranyen/backbone-boilerplate.git
````
This would add a project to your library named backbond-bp and associate it to the appropriate git url.


----
#### <a id="rename"></a>Rename a repo in your library (`rename`)
````bash
rename (current_repo_name ,new_name)
````
Renames the current_repo_name to the new_name within your library


**_Example_**
````bash
$ gitgoing rename backbone-bp bbb
````
This would rename the project in your library currently named backbone-bb to bbb

----


#### <a id="remove"></a>Remove a repo from your library (`remove`)
````bash
remove (repo_name [,-a])
````
Removes repo_name from your library of repos
Passing the optional -a flag will remove all repo locations.


**_Example_**
````bash
$ gitgoing remove bbb
````
This would remove the library project named bbb from your library of known git repos



----
#### <a id="list"></a>List the repos in your library (`list`)
````bash
list
````
Displays a list of all known repos within your library


**_Example_**
````bash
$ gitgoing list
````
This would print out a list of the known git repos in your library


----
#### <a id="merge"></a>Merge a library into your library (`merge`)
````bash
merge (path_to_yaml)
````
Merges a yaml file found at path_to_yaml into your library of known repo locations


**_Example_**
````bash
$ gitgoing merge https://gist.github.com/raw/85dd4daeb6f4b9d2a3b8/c846e9ea5f40102c48293b8a26d6729abbd4bdd6/gitgoing_default_library.yml
````
This would add the git repos found in the yaml file located at this url. On your first run gitgoing actually executes this example to popluate your library with a few default repos


----
#### <a id="help"></a>Display help (`help`)
````bash
help
````

Displays help message  


**_Example_**
````bash
$ gitgoing help
````
This would list out all of the possible commands simular to this section of the README.

----
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
