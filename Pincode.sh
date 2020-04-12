shopt -s extglob
pinCode=0
function validatePinCode() {
        local pin=$1
        regexPattern="^[0-9]{6}$"
        if [[ $pin =~ $regexPattern ]]
        then
                echo "Valid"
        else
                echo "Invalid"
        fi
}
function enterPinCode() {
        read -p "Enter PIN Code: " pinCode
        validatePinCode $pinCode
}
enterPinCode
