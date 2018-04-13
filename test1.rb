# class Parent
#   def fname
#    "Bruce"
#  end

#  def mother_name
#   "Martha"
#  end
# end

# class Son < Parent

#   def son_name
#    "Thomas"
#   end


#   def fullname
#     puts "#{fname} #{mother_name} #{son_name}"
#   end
# end


# @son = Son.new
# @son.fullname

class Country
  def countryCode
    @ccode="00"
    puts "The Country code is : #{@ccode}"
  end
  def cityCode
    @ctcode=212
    puts "The City code :#{@ctcode}"
  end
  def phoneNumber
    @phnno=2414211
    puts "The phone number is: #{@phnno}"
  end
end
class Dnumber < Country
  def dial
    countryCode
    cityCode
    phoneNumber
    puts "The dialnumber :#{@ccode}#{@ctcode}#{@phnno}"
  end
end
s=Dnumber.new
s.dial
