balance=1000

while true; do
    echo "----------------------------------------"
    echo "Welcome to simpe Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "5. Statments"
    echo "----------------------------------------"
    read -p  "Choose an option: " choose
    case $choose in
        1)
            read -p "Enter amount deposit: " amount #500
                if [[ $amount -ge 0 ]]; then
<<<<<<< HEAD
                    balance=$((balance+amount)) #1000+500
                   
                    echo "New balance: $balance" #1
                else
                    echo "Invalid amount "
                fi
                
            ;;
        2)
            read -p "Enter your Withdraw amount " withd

            if [[ $withd -le $balance ]]; then
               balance=$((balance-withd))
               
                echo "sufficient amount"
                echo "New balance: $balance"
=======
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
>>>>>>> 39b5fe474bd28b6890c40b0b917daeaa46ef73fa
            else
                echo "Unfficient amount from balance $balance"
                
            fi
           echo "Withdraw section"
           ;;
        3)
<<<<<<< HEAD
            echo "Your current balance: $balance"
=======
           # echo "Your current balance: $deposit"
>>>>>>> 39b5fe474bd28b6890c40b0b917daeaa46ef73fa
            ;;
        4)
            echo "Goodbye!"
            exit 0 
            ;;
        
        5)
        echo "------------------------------------"
        echo "Account Statment"
        
       echo "deposit : $amount"
       echo "withdraw : $withd"
       echo "curent balance : $balance"
        ;;
       *)
            echo "Invalide option!!"
            echo "Please choose a valid option"
            ;;
    esac
done
