#picoplaca.rb
require 'date'

# define la clase Perro  
class PicoPlaca  
 
  # método inicializar clase
  def initialize(plate, date, time)  
    # attributes   
    @plate = plate
    @date = date
		@time  = time		
		@day = (DateTime.parse(date)).strftime("%A")
  end  
	
	def plate
    @plate
  end
  def date
    @date
  end
  def time
    @time
  end
	
  # proc ValidatePlate
  def validatePlate
		tim = "#{@date} 07:00"
		tfm = "#{@date} 09:30"
		tit = "#{@date} 16:00"
		tfn = "#{@date} 19:30"
		teval = "#{@date} #{@time}"
		day = "#{@day}" 
		plate = "#{@plate}"
		lastdigit = plate[-1, 1]
				
		if ((teval >= tim) && (teval <= tfm) || (teval >= tit) && (teval <= tfn))
			
			case day
				when "Monday"
					if (lastdigit == "1")  || (lastdigit == "2")
						return "The car with plate #{@plate} can not be on the road because today is #{@day}, the last digit for its plate is #{lastdigit} and the time is #{@time}"  
					else
						puts "The car with plate #{@plate} can be on the road without problem because today is #{@day} and the last digit for its plate is #{lastdigit}"  
					end
				when "Tuesday"
					if (lastdigit == "3")  || (lastdigit == "4")
						return "The car with plate #{@plate} can not be on the road because today is #{@day}, the last digit for its plate is #{lastdigit} and the time is #{@time}"  
					else
						return "The car with plate #{@plate} can be on the road without problem because today is #{@day} and the last digit for its plate is #{lastdigit}"  
					end
				when "Wednesday"
					if (lastdigit == "5")  || (lastdigit == "6")
						return "The car with plate #{@plate} can not be on the road because today is #{@day}, the last digit for its plate is #{lastdigit} and the time is #{@time}"  
					else
						return "The car with plate #{@plate} can be on the road without problem because today is #{@day} and the last digit for its plate is #{lastdigit}"  
					end
				when "Thursday"
					if (lastdigit == "7")  || (lastdigit == "8")
						return "The car with plate #{@plate} can not be on the road because today is #{@day}, the last digit for its plate is #{lastdigit} and the time is #{@time}"  
					else
						return "The car with plate #{@plate} can be on the road without problem because today is #{@day} and the last digit for its plate is #{lastdigit}"  
					end
				when "Friday"
					if (lastdigit == "9")  || (lastdigit == "0")
						return "The car with plate #{@plate} can not be on the road because today is #{@day}, the last digit for its plate is #{lastdigit} and the time is #{@time}"  
					else
						return "The car with plate #{@plate} can be on the road without problem because today is #{@day} and the last digit for its plate is #{lastdigit}"  
					end
				else
					return "The car with plate #{@plate} can be on the road without problem because the time is #{@time} and today is #{@day}"  
			end
		else
			return "The car with plate #{@plate} can be on the road without problem because the time is #{@time}"  
		end	
    
  end  
end 
