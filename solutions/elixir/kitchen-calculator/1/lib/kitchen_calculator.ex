defmodule KitchenCalculator do
  @ml  1
  @cup  240.0
  @fluid_ounce  30
  @teaspoon  5
  @tablespoon  15

  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume * @ml}
  def to_milliliter({:cup, volume}), do: {:milliliter,volume * @cup}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter,volume * @fluid_ounce}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter,volume * @teaspoon}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter,volume * @tablespoon}


  def from_milliliter(volume_pair, :milliliter) do
    {:milliliter, get_volume(volume_pair)}
  end
  
  def from_milliliter(volume_pair, :cup) do
    result = volume_pair |> to_milliliter |> get_volume
    {:cup, result / @cup}
  end
  def from_milliliter(volume_pair, :fluid_ounce) do
    result = volume_pair |> to_milliliter |> get_volume
    {:fluid_ounce, result / @fluid_ounce}
  end
  def from_milliliter(volume_pair, :teaspoon) do
   result = volume_pair |> to_milliliter |> get_volume
    {:teaspoon,  result / @teaspoon}
  end
  def from_milliliter(volume_pair, :tablespoon) do
    result = volume_pair |> to_milliliter |> get_volume
    {:tablespoon, result / @tablespoon}
  end
  def convert(volume_pair, unit) do
    volume = to_milliliter(volume_pair)
    from_milliliter(volume, unit)
  end
end
