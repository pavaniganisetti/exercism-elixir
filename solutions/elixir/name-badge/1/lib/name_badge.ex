defmodule NameBadge do
  def print(id, name, department) do
    updated_dept = if (department == nil), do: "OWNER", else: String.upcase(department)
    updated_name = if (id == nil), do: "", else: "[#{id}] - "

    "#{updated_name}#{name} - #{updated_dept}"
  end
end
