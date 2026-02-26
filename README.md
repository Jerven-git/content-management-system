# cms
> The base respository for SCSS web app  
> &copy; 2024 PageOne247  
> Maintainer: tech7@sumomedia.co

# Dev Notes
You can utilise the shell scripts for adding and removing submodules. 

In `add-submodules.sh`: Change the value of the `SUBMODULES` paths variable to its corresponding SSH URLS and paths. For example, if you want to add test-frontend and test-backend submodules, you can do like this:

```sh
SUBMODULES=(
  "git@bitbucket.org:team_sumomedia/test-backend.git test-backend"
  "git@bitbucket.org:team_sumomedia/test-frontend.git test-frontend"
)
```

In `remove-submodules.sh`: Define the `SUBMODULES` paths variable to the existing submodules that you wish to remove. For example, if you want to remove test-frontend and test-backend submodules, you can do like this:

```sh
# Define the paths to the submodules
SUBMODULES=("test-frontend" "test-backend")

```
To run the scripts, run the following commands:
```bash
bash add-submodules.sh
bash remove-submodules.sh
```

Duplicate the `.env.example` file as `.env` and edit it to set the environment variables for your database.

```bash
DB_DATABASE=database
DB_USERNAME=username
DB_PASSWORD=password
DB_ROOT_PASSWORD=root_password
```
