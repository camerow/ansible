which pip

if [$? -eq 1]
    then
        echo "Installing Ansible"
        curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
        python ./get-pip.py
        sudo python -m pip install --user ansible
    else
        echo "Ansible found, running playbook!"
fi


ansible-playbook -i inventory playbook.yml -vvvv