init_balance=1000

while true; do
    echo "----------------------------------------"
    echo "Welcome to simpe Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "----------------------------------------"
    read -p  "Choose an option: " choose
    case $choose in
        1)
            read -p "Enter amount deposit: " amount #500
                if [[ $amount -ge 0 ]]; then
                    deposit=$((init_balance+amount)) #1000+500
                    echo "$deposit"
                else
                    echo "Invalid amount "
                fi
                #if [[ "$amount" =~ ^[0-9]+$ ]]; then
            # echo "$deposit" #1500
            # echo "Deposit section"
            ;;
        2)
            read -p "Enter your Withdraw amount " withd
            if [[ deposit -gt $withd ]]; then
                deposit=$((deposit-withd))
                echo "Sufficient amount $deposit"
            else
                echo "Unfficient amount from balance $deposit"
                
            fi
           echo "Withdraw section"
           ;;
        3)
            echo "Your current balance: $deposit"
            ;;
        4)
            echo "Goodbye!"
            exit 0 
            ;;
        *)
            echo "Invalide option!!"
            echo "Please choose a valid option"
    esac
done