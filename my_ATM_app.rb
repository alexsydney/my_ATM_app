#Create AMT app step
# step 1: Put Pin number to verify user id account
# step 2: greeting message to uset if the in correct if not display message wrong pin
# step 3: menu display to allow user to option to select ATN can provide them
# step 4: withdraw option
# step 5: deposit option
# step 6: check balance option
# step 7: select account option
# step 8: cardless card option
# step 9: language
# step 10 fees

#step 1: user enter pin number : to verify account to match with the pin number to hold account details
#        promise message to say customer enter pin number
#        check pin and greeting message to customer
puts "===================================================================="
puts "= Welcome to my ATM app at #{Time.now.strftime("%d/%m/%Y %H:%M")}  ="
puts "= Please ennter PIN number                                         ="
puts "===================================================================="
getPin = gets.chomp.to_i

correctPin = 88888
balanceAmount = 20000
if (correctPin == getPin)
  puts "You login account at : #{Time.now.strftime("%d/%m/%Y %H:%M")}"
  #mainMemu late on
  puts "Please select option: "
  puts " 1   withdraw money from your bank account"
  puts " 2   deposit money into your bank account"
  puts " 3   check balance from your bank account"
  puts " 8   logout bank account"
  getOption = gets.chomp.to_i
  more = true
    while more == true
          case getOption
          when 1  # withdraw option
            puts "enter amount want to withdraw :"
            withdrawAmount = gets.chomp.to_f
            puts "Amount you like to withdraw: #{withdrawAmount} at #{Time.now.strftime("%d/%m/%Y %H:%M")}"
          when 2 # withdraw option
            puts "enter amount want to deposit:"
            depositAmount = gets.chomp.to_f
            puts "Amount you want to deposit at ATM : #{depositAmount} on #{Time.now.strftime("%d/%m/%Y %H:%M")}"
          when 3  # balance option
            # puts depositAmount
            # newBalanceAmount = balanceAmount + depositAmount - withdrawAmount
            puts "Your bank account balance is : $#{balanceAmount}"
          #when 4  # select account type option
          #when 5  # cardless cash option
          #when 6  # language option
        when 8 # logout bank account
           puts "You logout ATM at #{Time.now.strftime("%d/%m/%Y %H:%M")}"
           break
        end
    end
else
  puts "Please enter correct pin again to access to your bank accoiunt."
end

#puts "PIN number #{getPin}"
