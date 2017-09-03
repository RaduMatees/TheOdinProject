class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @oranges = 0
    puts "Your orange tree has just been born"
  end

  def height
    puts "Your tree is #{@height}cm tall"
  end

  def oneYearPasses
    @height = @height + 10
    @age = @age + 1
    @oranges = 0
    if dead?
      puts "The Orange Tree has died"
    end
    if @age > 3
      @oranges = @age**2
    else
      @oranges = 0
    end
  end

  def countTheOranges
    puts @oranges
  end

  def pickAnOrange
    if @oranges == 0
      puts "There are no more oranges to pick up this year"
    else
      @oranges = @oranges - 1
      puts "The orange was very delicious"
    end
  end

  private

  def dead?
    @age > 10
  end

end

myTree = OrangeTree.new
myTree.height
myTree.countTheOranges
myTree.oneYearPasses
myTree.height
myTree.countTheOranges
myTree.pickAnOrange
myTree.oneYearPasses
myTree.oneYearPasses # 3 years old
myTree.oneYearPasses
myTree.oneYearPasses
myTree.height
myTree.countTheOranges
myTree.pickAnOrange
myTree.countTheOranges
myTree.oneYearPasses
myTree.oneYearPasses # 7 years old
myTree.oneYearPasses
myTree.countTheOranges
myTree.height
myTree.pickAnOrange
myTree.countTheOranges
myTree.oneYearPasses
myTree.oneYearPasses
myTree.oneYearPasses
