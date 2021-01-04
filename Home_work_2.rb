
class Tamagochi

    attr_reader  :hunger, :asleep, :stuffInIntestine

    def initialize
        @hunger = 80
        @asleep = 80
        @stuffInIntestine =  80
    end

    def feed
        @stuffInIntestine -=10
        @asleep -=10
        case hunger
        when 100
            p "Dont want to eat"
        when 1...90
            @hunger +=10

        else
            p "pet was very hungry and eat you"
            @hunger = 100
        end

    end

    def sleep
        case asleep
        when 100
            p "Dont want to sleep"
        when 1...90
            @asleep =100
            @stuffInIntestine -=20
            @hunger -=20
        else
            p "Тварина заїбалася ждати поки його вкладуть спати і поспала сама"
            @asleep =100
        end
    end

    def walk
        case stuffInIntestine
        when 100
            p "Dont want to walk"
        else
            @stuffInIntestine +=10
            @hunger -=10
            @asleep -=10
        end
    end

    def characteristics
        p "Ситість #@hunger%, Нагуляність #@stuffInIntestine%, Бодрість #@asleep%"
    end
end





 cat = Tamagochi.new



cat.walk
cat.feed
cat.sleep
cat.feed
cat.characteristics




