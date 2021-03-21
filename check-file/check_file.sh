red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

check_file() {
    file_name=$1
    description_if_not_have=$2

    result=$(find . -name $file_name)

    if [ -z "${result}" ]; then
        echo "${red}$file_name is missing.${reset}"
        echo "  $description_if_not_have"
    else
        echo "${green}$file_name is exiting${reset}"
    fi
}

# check files
check_file readme.md "description for explain why require that file."

