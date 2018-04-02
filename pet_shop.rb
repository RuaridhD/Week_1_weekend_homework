def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  return pet_shop[:admin][:total_cash] += num
  # return total_cash += num
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold] #HELP these values dont make sense
end

def increase_pets_sold(pet_shop, num)
  return pet_shop[:admin][:pets_sold] += num
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
   pet_breeds = []
   for pet in pet_shop[:pets]
     if breed == pet[:breed]
       pet_breeds.push(pet)
     end
   end
   return pet_breeds
end

def find_pet_by_name(pet_shop, name) #PROBLEM
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end

  return nil
end

def remove_pet_by_name(pet_shop, name) #PROBLEM
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if name == pet[:name]
  end
   return nil
  end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].count
end

def customer_pet_count(customer)
  customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customers, new_pet)
  if customers[:cash] >= new_pet[:price]
   return true
 else
   return false
 end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet && customer_can_afford_pet(customer, pet)
    #if pet means if pet = true
   add_pet_to_customer(customer, pet)
   increase_pets_sold(pet_shop, 1)
   add_or_remove_cash(pet_shop, pet[:price])
 end
end
