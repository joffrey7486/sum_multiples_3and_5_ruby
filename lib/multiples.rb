def sum_of_3_or_5_multiples(final_number)
    if final_number.is_a? Integer
        final_sum = 0 
        current_number = final_number - 1
        while current_number > 1
            if is_multiple_of_3_or_5?(current_number)
                # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
                final_sum += current_number
            else
                # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
                # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
            end
            current_number -= 1
        end
        
        else
            final_sum = "Yo ! Je ne prends que les entiers naturels. TG"
        end     
    final_sum
end 
    
    

def is_multiple_of_3_or_5?(current_number)
    (current_number % 3 == 0) || (current_number % 5 == 0) ? true : false
end

puts sum_of_3_or_5_multiples(11) #=> 33
puts sum_of_3_or_5_multiples(10) #=> 23
puts sum_of_3_or_5_multiples(-3) #=> 23
puts sum_of_3_or_5_multiples("prout") #=> 23

