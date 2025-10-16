defmodule HighSchoolSweetheart do
  import String
  
  def first_letter(name) do
    name |> trim |> first
  end

  def initial(name) do
    name |> first_letter |> upcase |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first_name, last_name] = full_name |> split
    initial(first_name) <> " " <> initial(last_name)
  end

  def pair(full_name1, full_name2) do
    """
    ❤-------------------❤
    |  #{initials(full_name1)}  +  #{initials(full_name2)}  |
    ❤-------------------❤
    """
  end
end
