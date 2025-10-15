defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_ | rest] = list
    rest
  end

  def first(list) do
    [first | _] = list
    first
  end

  def count(list) do
    list |> Enum.count
  end

  def functional_list?(list) do
    list |> Enum.any?(fn l -> l == "Elixir" end)
  end
end
