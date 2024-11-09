#
# Boş bir dizi
# print []
# puts
#
# 3 elemanlı, nil (boş) değerlerden oluşan dizi
# print Array.new(3)
# puts
#
# 3 elemanlı, her elemanı 7 olan dizi
# print Array.new(3, 7)
# puts
#
# 3 elemanlı, her elemanı 'true' (string) olan dizi
# print Array.new(3, 'true')
# puts
#
# %w ile string array oluşturma ve son ikinci elemanı yazdırma
# str_array = %w[array element element1 element2 element3]
# puts str_array[-2]
#
# Dizi işlemleri
# num_array = [1, 2]
#
# Dizinin sonuna 3 ve 4 ekleme
# print num_array.push(3, 4)
# puts
#
# Dizinin sonuna 5 ekleme
# print num_array << 5
# puts
#
# Diziden son elemanı çıkarma ve sonucu gösterme
# puts "#{num_array.pop} is removed from the ending. Latest version of array -> #{num_array}"
#
# Dizinin başına 1 ekleme
# print num_array.unshift(1)
# puts
#
# Diziden ilk elemanı çıkarma ve sonucu gösterme
# puts "#{num_array.shift} is removed from the beginning. Latest version of array -> #{num_array}"
#
# Array concatenation
# a = [1, 2, 3]
# b = [3, 4, 5]
#
# print a+b
# puts
# print a.concat(b)
print [].methods
