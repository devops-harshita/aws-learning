#lottery_number=777
lottery_number=int(input("Enter the lottery number: "))
print(type(lottery_number))

if lottery_number==111:
    print("You won the lottery")
elif lottery_number==123:
    print("Second winner")
elif lottery_number==167:
    print("Third winner")
else:
    print("Better luck next time")
    if lottery_number==777:
        print("Special coupon!")
    else:
        print("No coupon")
