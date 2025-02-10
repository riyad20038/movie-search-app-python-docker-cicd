# python-app-deployment
This repo contains Python applications to practice DevOps practice with these

# Assignment Instruction
- Fork the repo
- Run Both Applications in localhost
- Provide all the changes needed in configuration files to properly deploy it in localhost in the documentation
- Deploy both applications in a VM, where the host will be the VM's IP
- Access the application from the web browser
- Provide all changes needed in configuration files to properly deploy it in a remote VM
- Automate the whole process with shell script so that the project can be seamlessly deployed in local and remote server environment
- Submit the link of the forked git repo which will contain all config and scripts along with the project code and documentation
- Documentation could be a readme.md file or any pdf file

## Note:
Project with db connection needs a db server with proper configuration to work properly. Prepare a db server and upload the dump file, which contains the data schema for the respective project.

# Project Structure
- Each Python application should be run inside a virtual environment
- All dependencies should be listed in a file, commonly named requirements.txt
- Before executing the program, the virtual environment should be created and activated
- Before executing the program, all dependencies should be resolved by installing all packages listed in requirements.txt

# Basic commands
To run any Python application, make sure your system has Python installed and added to the environment path.
To ensure proper installation of python
```
python --version
# or
python3 --version
```
Create a virtual environment in the project's root
```
virtualenv <venv_name>
# or
python3 -m venv <venv_name>
```
Activate virtual environment in the project root
```
source <venv_name>/bin/activate     # linux based system

<venv_name>\Scripts\activate        # Windows
```
Install dependencies
```
pip install -r requirements.txt
```
List all dependencies for the current project
```
pip freeze
```
Create requirements.txt for the current project
```
pip freeze > requirements.txt
```
Execute any .py files
```
python <app_name>.py
# or
python3 <app_name>.py
```
Run Django App
```
python manage.py runserver
```
Run Django App on a specific port
```
python manage.py runserver 0.0.0.0:<port_number>
```
Run Flask App
```
flask run
```
Run Flask App on a specific port
```
flask run --host=0.0.0.0 --port=<port_number>
```
Run fastAPI
```
uvicorn <app_name>:<app_instance_name>
```
Run fastAPI on a specific port
```
uvicorn <app_name>:<app_instance_name> --host 0.0.0.0 --port <port_number>
```
