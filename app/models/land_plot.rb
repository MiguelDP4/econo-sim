class LandPlot < ApplicationRecord
  belongs_to :user

  def generate_stats()
    seed_a = 3191
    seed_b = 5867
    seed_c = 7727
    seed_d = 2621
    seed_e = 5419
    seed_f = 5303
    seed_g = 7741
    seed_h = 1579
    seed_i = 9421
    seed_j = 7649
    seed_k = 4079
    seed_l = 1373
    position_x = self.position_x
    position_y = self.position_y
    fertility = zero_if_negative(((position_x+seed_a)*(position_y+seed_b))%20000 - 10000)
    trees = zero_if_negative(((position_x+seed_c)*(position_y+seed_d))%20000 - 10000)
    stone = zero_if_negative(((position_x+seed_e)*(position_y+seed_f))%20000 - 10000)
    iron_ore = zero_if_negative(((position_x+seed_g)*(position_y+seed_h))%20000 - 10000)
    copper_ore = zero_if_negative(((position_x+seed_i)*(position_y+seed_j))%20000 - 10000)
    clay = zero_if_negative(((position_x+seed_k)*(position_y+seed_l))%20000 - 10000)
    self.fertility = fertility
    self.trees = trees
    self.stone = stone
    self.iron_ore = iron_ore
    self.copper_ore = copper_ore
    self.clay = clay
    self
  end

  private

  def zero_if_negative(n)
    n = n >= 0 ? n : 0
  end
end
