def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, num)
  return pet_shop[:admin][:total_cash] += num
end

def pets_sold(pet_shop)
 return pet_shop[:admin][:pets_sold]
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

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet[:name]
    else
  return nil
    end
  end
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    name.delete(pet) if name == [:name]
    end
   for pet in pet_shop[:pets]
     return nil if name != [:name]
     end
  end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].count
end

def customer_pet_count(customers)
  total_pets = 0
 for pet in customers[:pets]
   total_pets += 1
 end
  return total_pets
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return customer[:pets]
end

def customer_can_afford_pet(customers, new_pet)
  if customers[:cash] >= new_pet[:price]
   return true
 else
   return false
 end
end

def sell_pet_to_customer(pet_shop, pet, customer)
   return add_pet_to_customer(customer, pet)
   return customer_pet_count(customer)
   return increase_pets_sold(pet_shop, 1)
   return pets_sold(pet_shop)
   add_or_remove_cash(pet_shop, pet[:price])
   return total_cash
end
