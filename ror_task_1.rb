#  Class RorTask1
class RorTask1

  #  Напишите программу, которая для заданного натурального числа num определяет
  # количество вхождений числа 3 в разложение
  # заданного числа на простые сомножители.

  def how_many_threes(num)

    require 'mathn' #  могу написать цикл, но зачем нужен велосипед? :)
    num.prime_division.each { |r, x| return x if r == 3 }

  end

  # Дан текст. Определите максимальное из имеющихся в нем чисел.

  def max_number_in_text(text)

    #extract only digits with sign(+/-) and digits like 12,5 or 12.5
    digit = text.scan(/[\-|\+]?[0-9]+(?:[\,|\.][0-9]+)?/)

    #replace 12,5 to 12.5 because to_f not understand ','
    z = digit.each { |x| x.gsub!(/,/, '.') }.map(&:to_f).max

    # checking digits float or integer
    (z % 1).zero? ? z.to_i : z

    # (digit % 1).zero? ? digit.to_i : digit

  end

  # Дан целочисленный массив. Необходимо вывести вначале его элементы с четными
  # индексами, а затем - с нечетными.

  def even_odd_elements(arr)

    index_array = (0..arr.size - 1).to_a
    index_array.partition { |i| i[0].even? }.flatten.map { |i| arr[i] }

  end

  # Дан целочисленный массив. Преобразовать его, прибавив к нечетным
  # числам последний  элемент. Первый и последний элементы массива не изменять.

  def even_elements_addition(arr)

    arr.each_index { |y| arr[y] += arr.last if y != 0 && y != (arr.size - 1) && arr[y].odd? }

  end

  # Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести
  # сумму чисел из данного массива, расположенных между первыми двумя нулями.

  def sum_between_zeros(arr)

    z = arr.each_index.select { |r| arr[r] == 0 }
    arr[z[0]..z[1]].reduce(:+)

  end
end
